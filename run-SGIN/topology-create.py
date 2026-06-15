#!/usr/bin/env python3
from mininet.net import Mininet
from mininet.node import OVSSwitch
from mininet.topo import Topo
from mininet.log import setLogLevel
import time
import threading
import random
import subprocess

stop_event = threading.Event()

class CustomTopo(Topo):
    def build(self):
        # 创建所有 OVS bridges
        self.addSwitch('ovS-1-1', cls=OVSSwitch)
        self.addSwitch('ovS-1-2', cls=OVSSwitch)
        self.addSwitch('ovS-2-1', cls=OVSSwitch)
        self.addSwitch('ovS-2-2', cls=OVSSwitch)
        self.addSwitch('ovS-3-1', cls=OVSSwitch)
        self.addSwitch('ovS-3-2', cls=OVSSwitch)
        self.addSwitch('ovS-4', cls=OVSSwitch)
        self.addSwitch('ovS-5-1', cls=OVSSwitch)
        self.addSwitch('ovS-5-2', cls=OVSSwitch)
        self.addSwitch('ovS-6-1', cls=OVSSwitch)
        self.addSwitch('ovS-6-2', cls=OVSSwitch)
        self.addSwitch('ovS-7-1', cls=OVSSwitch)
        self.addSwitch('ovS-7-2', cls=OVSSwitch)
        self.addSwitch('ovS-8-1', cls=OVSSwitch)
        self.addSwitch('ovS-8-2', cls=OVSSwitch)
        self.addSwitch('ovS-9-1', cls=OVSSwitch)
        self.addSwitch('ovS-9-2', cls=OVSSwitch)
        self.addSwitch('ovS-10-1', cls=OVSSwitch)
        self.addSwitch('ovS-10-2', cls=OVSSwitch)
        self.addSwitch('ovS-11', cls=OVSSwitch)
        self.addSwitch('ovS-12', cls=OVSSwitch)
        self.addSwitch('ovS-13', cls=OVSSwitch)
        self.addSwitch('ovS-14', cls=OVSSwitch)
        self.addSwitch('ovS-15', cls=OVSSwitch)
        self.addSwitch('ovS-16', cls=OVSSwitch)
        self.addSwitch('ovS-17', cls=OVSSwitch)
        self.addSwitch('ovS-18', cls=OVSSwitch)
        self.addSwitch('ovS-19', cls=OVSSwitch)


def add_internal_port(net, sw_name, intf_name):
    """内部端口添加函数"""
    sw = net.get(sw_name)
    sw.cmd(f"ovs-vsctl add-port {sw_name} {intf_name} -- set Interface {intf_name} type=internal")
    sw.cmd(f"ip link set {intf_name} up")


def initial_set_tc(intf_name, delay_ms, rate_mbit):
    """设置带宽（静态 HTB） + 初始延迟（netem）"""
    subprocess.run(f"tc qdisc add dev {intf_name} root handle 1: htb default 1", shell=True)
    subprocess.run(f"tc class add dev {intf_name} parent 1: classid 1:1 htb rate {rate_mbit}mbit", shell=True)
    subprocess.run(f"tc qdisc add dev {intf_name} parent 1:1 netem delay {delay_ms}ms", shell=True)


def update_delay(intf_name, delay_ms):
    """仅动态更新延迟（带宽保持不变）——仿真节点位置移动"""
    subprocess.run(f"tc qdisc change dev {intf_name} parent 1:1 netem delay {delay_ms}ms", shell=True)


def dynamic_delay_simulation():
    # ================== 接口分类（根据名称语义划分）==================
    # 无人机（UAV / Aerial）接口 —— 位置变化最明显
    drone_intfs = [
        'vi-c1w1-1','vi-c1w1-2','vi-c1w2-1','vi-c1w2-2','vi-c1w3-1','vi-c1w3-2',
        'vi-c1w4-1','vi-c1w4-2','vi-c1w4-3','vi-c1w4-4','vi-c1w5-1','vi-c1w5-2',
        'vi-c1w6-1','vi-c1w6-2','vi-c1w6-3','vi-c1w6-4','vi-c1w7-1','vi-c1w7-2',
        'vi-c1w8-1','vi-c1w8-2','vi-c1w9-1','vi-c1w9-2','vi-c1w9-3','vi-c1w9-4',
        'vi-c2w1-1','vi-c2w1-2','vi-c2w2-1','vi-c2w2-2','vi-c2w3-1','vi-c2w3-2',
        'vi-c2w4-1','vi-c2w4-2','vi-c2w5-1','vi-c2w5-2','vi-c2w5-3','vi-c2w5-4',
        'vi-c2w6-1','vi-c2w6-2','vi-c2w7-1','vi-c2w7-2','vi-c2w7-3','vi-c2w7-4',
        'vi-c2w8-1','vi-c2w8-2','vi-c2w8-3'
    ]

    # 移动节点接口（cmm / cmw）
    mobile_intfs = [
        'vi-cmm1-1','vi-cmm1-2','vi-cmm1-3','vi-cmm1-4',
        'vi-cmw1-1','vi-cmw1-2'
    ]

    # 地面固定节点接口（vi-r*）
    ground_intfs = [
        'vi-r1-1','vi-r1-2','vi-r1-3','vi-r2-1','vi-r2-2',
        'vi-r3-1','vi-r3-2','vi-r3-3','vi-r4-1','vi-r4-2','vi-r4-3'
    ]

    # 带宽设置（静态）
    drone_rate = 10      # UAV: 10 Mbps
    mobile_rate = 5      # 移动节点: 5 Mbps
    ground_rate = 100    # 地面固定: 100 Mbps

    # 初始设置（延迟随机，模拟初始位置）
    for intf in drone_intfs:
        initial_set_tc(intf, random.uniform(1, 15), drone_rate)
    for intf in mobile_intfs:
        initial_set_tc(intf, random.uniform(5, 25), mobile_rate)
    for intf in ground_intfs:
        initial_set_tc(intf, 0.5, ground_rate)

    # 动态仿真循环（每10秒更新一次无人机和移动节点的延迟，模拟位置变化）
    while not stop_event.is_set():
        for intf in drone_intfs:
            if stop_event.is_set(): break
            delay = random.uniform(1, 15)
            update_delay(intf, delay)
        for intf in mobile_intfs:
            if stop_event.is_set(): break
            delay = random.uniform(5, 25)
            update_delay(intf, delay)
        # 地面固定节点延迟不变
        if stop_event.is_set(): break
        time.sleep(10)


if __name__ == '__main__':
    setLogLevel('info')
    topo = CustomTopo()
    net = Mininet(topo=topo, switch=OVSSwitch, controller=None, build=False)
    net.build()
    net.start()

    # 设置 standalone 模式
    for sw in net.switches:
        sw.cmd(f"ovs-vsctl set-fail-mode {sw.name} standalone")
        print(f"Set {sw.name} to standalone mode")

    # 添加所有 internal ports
    add_internal_port(net, 'ovS-1-1', 'vi-c1m1-1')
    add_internal_port(net, 'ovS-1-1', 'vi-c1w1-1')
    add_internal_port(net, 'ovS-1-1', 'vi-c2w1-1')

    add_internal_port(net, 'ovS-1-2', 'vi-c1m1-2')
    add_internal_port(net, 'ovS-1-2', 'vi-c1w1-2')
    add_internal_port(net, 'ovS-1-2', 'vi-c2w1-2')

    add_internal_port(net, 'ovS-2-1', 'vi-cmm1-1')
    add_internal_port(net, 'ovS-2-1', 'vi-cmw1-1')
    add_internal_port(net, 'ovS-2-1', 'vi-c1w2-1')
    add_internal_port(net, 'ovS-2-1', 'vi-c2w2-1')

    add_internal_port(net, 'ovS-2-2', 'vi-cmm1-2')
    add_internal_port(net, 'ovS-2-2', 'vi-cmw1-2')
    add_internal_port(net, 'ovS-2-2', 'vi-c1w2-2')
    add_internal_port(net, 'ovS-2-2', 'vi-c2w2-2')

    add_internal_port(net, 'ovS-3-1', 'vi-c2m1-1')
    add_internal_port(net, 'ovS-3-1', 'vi-c1w3-1')
    add_internal_port(net, 'ovS-3-1', 'vi-c2w3-1')

    add_internal_port(net, 'ovS-3-2', 'vi-c2m1-2')
    add_internal_port(net, 'ovS-3-2', 'vi-c1w3-2')
    add_internal_port(net, 'ovS-3-2', 'vi-c2w3-2')

    add_internal_port(net, 'ovS-4', 'vi-cmm1-3')
    add_internal_port(net, 'ovS-4', 'vi-c1m1-3')
    add_internal_port(net, 'ovS-4', 'vi-c2m1-3')

    add_internal_port(net, 'ovS-5-1', 'vi-c1w5-1')
    add_internal_port(net, 'ovS-5-1', 'vi-c2w5-1')

    add_internal_port(net, 'ovS-5-2', 'vi-c1w5-2')
    add_internal_port(net, 'ovS-5-2', 'vi-c2w5-2')

    add_internal_port(net, 'ovS-6-1', 'vi-c1w6-1')
    add_internal_port(net, 'ovS-6-1', 'vi-c2w6-1')

    add_internal_port(net, 'ovS-6-2', 'vi-c1w6-2')
    add_internal_port(net, 'ovS-6-2', 'vi-c2w6-2')

    add_internal_port(net, 'ovS-7-1', 'vi-c1w7-1')
    add_internal_port(net, 'ovS-7-1', 'vi-c2w7-1')

    add_internal_port(net, 'ovS-7-2', 'vi-c1w7-2')
    add_internal_port(net, 'ovS-7-2', 'vi-c2w7-2')

    add_internal_port(net, 'ovS-8-1', 'vi-c1w8-1')
    add_internal_port(net, 'ovS-8-1', 'vi-c2w8-1')

    add_internal_port(net, 'ovS-8-2', 'vi-c1w8-2')
    add_internal_port(net, 'ovS-8-2', 'vi-c2w8-2')

    add_internal_port(net, 'ovS-9-1', 'vi-c1w9-1')
    add_internal_port(net, 'ovS-9-1', 'vi-c2w9-1')

    add_internal_port(net, 'ovS-9-2', 'vi-c1w9-2')
    add_internal_port(net, 'ovS-9-2', 'vi-c2w9-2')

    add_internal_port(net, 'ovS-10-1', 'vi-c1w4-1')
    add_internal_port(net, 'ovS-10-1', 'vi-c2w4-1')

    add_internal_port(net, 'ovS-10-2', 'vi-c1w4-2')
    add_internal_port(net, 'ovS-10-2', 'vi-c2w4-2')

    add_internal_port(net, 'ovS-11', 'vi-c1m1-4')
    add_internal_port(net, 'ovS-11', 'vi-c2w5-3')
    add_internal_port(net, 'ovS-11', 'vi-r1-1')

    add_internal_port(net, 'ovS-12', 'vi-cmm1-4')
    add_internal_port(net, 'ovS-12', 'vi-r1-2')
    add_internal_port(net, 'ovS-12', 'vi-r2-1')

    add_internal_port(net, 'ovS-13', 'vi-c2m1-4')
    add_internal_port(net, 'ovS-13', 'vi-c1w6-3')

    add_internal_port(net, 'ovS-14', 'vi-c2w5-4')
    add_internal_port(net, 'ovS-14', 'vi-r3-1')

    add_internal_port(net, 'ovS-15', 'vi-r1-3')
    add_internal_port(net, 'ovS-15', 'vi-r3-2')
    add_internal_port(net, 'ovS-15', 'vi-r4-1')
    add_internal_port(net, 'ovS-15', 'vi-c2w7-3')

    add_internal_port(net, 'ovS-16', 'vi-r2-2')
    add_internal_port(net, 'ovS-16', 'vi-r4-2')
    add_internal_port(net, 'ovS-16', 'vi-c1w6-4')

    add_internal_port(net, 'ovS-17', 'vi-r3-3')
    add_internal_port(net, 'ovS-17', 'vi-c2w8-3')
    add_internal_port(net, 'ovS-17', 'vi-c1w9-3')

    add_internal_port(net, 'ovS-18', 'vi-c2w7-4')
    add_internal_port(net, 'ovS-18', 'vi-c1w9-4')
    add_internal_port(net, 'ovS-18', 'vi-c1w4-3')

    add_internal_port(net, 'ovS-19', 'vi-r4-3')
    add_internal_port(net, 'ovS-19', 'vi-c1w4-4')

    # 启动动态延迟仿真线程（仿真无人机、移动节点、地面固定节点位置变化）
    threads = []
    threads.append(threading.Thread(target=dynamic_delay_simulation, daemon=True))

    for t in threads:
        t.start()

    print("Topology created with dynamic delay simulation (UAV / Mobile / Ground position changes).")
    print("无人机与移动节点延迟每10秒随机变化，地面固定节点稳定。按 Ctrl+C 停止。")

    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        stop_event.set()
        for t in threads:
            t.join()
        net.stop()


# sudo python3 topology-create.py     # 创建 + 启动位置动态仿真
# Ctrl+C 停止
# sudo python3 topology-delete.py     # 清理


