#!/usr/bin/env python3

import subprocess

def delete_ovs_bridge(br_name):
    subprocess.run(f"ovs-vsctl del-br {br_name}", shell=True)

if __name__ == '__main__':
    bridges = [
        'ovS-1-1', 'ovS-1-2', 'ovS-2-1', 'ovS-2-2', 'ovS-3-1', 'ovS-3-2',
        'ovS-4', 'ovS-5-1', 'ovS-5-2', 'ovS-6-1', 'ovS-6-2',
        'ovS-7-1', 'ovS-7-2', 'ovS-8-1', 'ovS-8-2', 'ovS-9-1', 'ovS-9-2',
        'ovS-10-1', 'ovS-10-2', 'ovS-11', 'ovS-12', 'ovS-13', 'ovS-14',
        'ovS-15', 'ovS-16', 'ovS-17', 'ovS-18', 'ovS-19'
    ]
    for br in bridges:
        delete_ovs_bridge(br)
    print("All OVS bridges deleted.")

# 删除 bridge 前不需要手动 down 接口，ovs-vsctl del-br 会自动处理端口。
