# Destroy the inter-satellite links

ip link set vi-c1m1-1 down
ovs-vsctl del-port ovS-1-1 vi-c1m1-1
ip link set vi-c1w1-1 down
ovs-vsctl del-port ovS-1-1 vi-c1w1-1
ip link set vi-c2w1-1 down
ovs-vsctl del-port ovS-1-1 vi-c2w1-1
ovs-vsctl del-br ovS-1-1

ip link set vi-c1m1-2 down
ovs-vsctl del-port ovS-1-2 vi-c1m1-2
ip link set vi-c1w1-2 down
ovs-vsctl del-port ovS-1-2 vi-c1w1-2
ip link set vi-c2w1-2 down
ovs-vsctl del-port ovS-1-2 vi-c2w1-2
ovs-vsctl del-br ovS-1-2

# Create the inter-satellite links

ovs-vsctl add-br ovS-1-1
ovs-vsctl add-port ovS-1-1 vi-c1m1-1 -- set Interface vi-c1m1-1 type=internal
ip link set vi-c1m1-1 up
ovs-vsctl add-port ovS-1-1 vi-c1w1-1 -- set Interface vi-c1w1-1 type=internal
ip link set vi-c1w1-1 up
ovs-vsctl add-port ovS-1-1 vi-c2w1-1 -- set Interface vi-c2w1-1 type=internal
ip link set vi-c2w1-1 up

ovs-vsctl add-br ovS-1-2
ovs-vsctl add-port ovS-1-2 vi-c1m1-2 -- set Interface vi-c1m1-2 type=internal
ip link set vi-c1m1-2 up
ovs-vsctl add-port ovS-1-2 vi-c1w1-2 -- set Interface vi-c1w1-2 type=internal
ip link set vi-c1w1-2 up
ovs-vsctl add-port ovS-1-2 vi-c2w1-2 -- set Interface vi-c2w1-2 type=internal
ip link set vi-c2w1-2 up

