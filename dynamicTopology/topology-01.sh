# Create network topology

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

ovs-vsctl add-br ovS-2-1
ovs-vsctl add-port ovS-2-1 vi-cmm1-1 -- set Interface vi-cmm1-1 type=internal
ip link set vi-cmm1-1 up
ovs-vsctl add-port ovS-2-1 vi-cmw1-1 -- set Interface vi-cmw1-1 type=internal
ip link set vi-cmw1-1 up
ovs-vsctl add-port ovS-2-1 vi-c1w2-1 -- set Interface vi-c1w2-1 type=internal
ip link set vi-c1w2-1 up
ovs-vsctl add-port ovS-2-1 vi-c2w2-1 -- set Interface vi-c2w2-1 type=internal
ip link set vi-c2w2-1 up

ovs-vsctl add-br ovS-2-2
ovs-vsctl add-port ovS-2-2 vi-cmm1-2 -- set Interface vi-cmm1-2 type=internal
ip link set vi-cmm1-2 up
ovs-vsctl add-port ovS-2-2 vi-cmw1-2 -- set Interface vi-cmw1-2 type=internal
ip link set vi-cmw1-2 up
ovs-vsctl add-port ovS-2-2 vi-c1w2-2 -- set Interface vi-c1w2-2 type=internal
ip link set vi-c1w2-2 up
ovs-vsctl add-port ovS-2-2 vi-c2w2-2 -- set Interface vi-c2w2-2 type=internal
ip link set vi-c2w2-2 up

ovs-vsctl add-br ovS-3-1
ovs-vsctl add-port ovS-3-1 vi-c2m1-1 -- set Interface vi-c2m1-1 type=internal
ip link set vi-c2m1-1 up
ovs-vsctl add-port ovS-3-1 vi-c1w3-1 -- set Interface vi-c1w3-1 type=internal
ip link set vi-c1w3-1 up
ovs-vsctl add-port ovS-3-1 vi-c2w3-1 -- set Interface vi-c2w3-1 type=internal
ip link set vi-c2w3-1 up

ovs-vsctl add-br ovS-3-2
ovs-vsctl add-port ovS-3-2 vi-c2m1-2 -- set Interface vi-c2m1-2 type=internal
ip link set vi-c2m1-2 up
ovs-vsctl add-port ovS-3-2 vi-c1w3-2 -- set Interface vi-c1w3-2 type=internal
ip link set vi-c1w3-2 up
ovs-vsctl add-port ovS-3-2 vi-c2w3-2 -- set Interface vi-c2w3-2 type=internal
ip link set vi-c2w3-2 up

ovs-vsctl add-br ovS-4
ovs-vsctl add-port ovS-4 vi-cmm1-3 -- set Interface vi-cmm1-3 type=internal
ip link set vi-cmm1-3 up
ovs-vsctl add-port ovS-4 vi-c1m1-3 -- set Interface vi-c1m1-3 type=internal
ip link set vi-c1m1-3 up
ovs-vsctl add-port ovS-4 vi-c2m1-3 -- set Interface vi-c2m1-3 type=internal
ip link set vi-c2m1-3 up

ovs-vsctl add-br ovS-5-1
ovs-vsctl add-port ovS-5-1 vi-c1w5-1 -- set Interface vi-c1w5-1 type=internal
ip link set vi-c1w5-1 up
ovs-vsctl add-port ovS-5-1 vi-c2w5-1 -- set Interface vi-c2w5-1 type=internal
ip link set vi-c2w5-1 up

ovs-vsctl add-br ovS-5-2
ovs-vsctl add-port ovS-5-2 vi-c1w5-2 -- set Interface vi-c1w5-2 type=internal
ip link set vi-c1w5-2 up
ovs-vsctl add-port ovS-5-2 vi-c2w5-2 -- set Interface vi-c2w5-2 type=internal
ip link set vi-c2w5-2 up

ovs-vsctl add-br ovS-6-1
ovs-vsctl add-port ovS-6-1 vi-c1w6-1 -- set Interface vi-c1w6-1 type=internal
ip link set vi-c1w6-1 up
ovs-vsctl add-port ovS-6-1 vi-c2w6-1 -- set Interface vi-c2w6-1 type=internal
ip link set vi-c2w6-1 up

ovs-vsctl add-br ovS-6-2
ovs-vsctl add-port ovS-6-2 vi-c1w6-2 -- set Interface vi-c1w6-2 type=internal
ip link set vi-c1w6-2 up
ovs-vsctl add-port ovS-6-2 vi-c2w6-2 -- set Interface vi-c2w6-2 type=internal
ip link set vi-c2w6-2 up

ovs-vsctl add-br ovS-7-1
ovs-vsctl add-port ovS-7-1 vi-c1w7-1 -- set Interface vi-c1w7-1 type=internal
ip link set vi-c1w7-1 up
ovs-vsctl add-port ovS-7-1 vi-c2w7-1 -- set Interface vi-c2w7-1 type=internal
ip link set vi-c2w7-1 up

ovs-vsctl add-br ovS-7-2
ovs-vsctl add-port ovS-7-2 vi-c1w7-2 -- set Interface vi-c1w7-2 type=internal
ip link set vi-c1w7-2 up
ovs-vsctl add-port ovS-7-2 vi-c2w7-2 -- set Interface vi-c2w7-2 type=internal
ip link set vi-c2w7-2 up

ovs-vsctl add-br ovS-8-1
ovs-vsctl add-port ovS-8-1 vi-c1w8-1 -- set Interface vi-c1w8-1 type=internal
ip link set vi-c1w8-1 up
ovs-vsctl add-port ovS-8-1 vi-c2w8-1 -- set Interface vi-c2w8-1 type=internal
ip link set vi-c2w8-1 up

ovs-vsctl add-br ovS-8-2
ovs-vsctl add-port ovS-8-2 vi-c1w8-2 -- set Interface vi-c1w8-2 type=internal
ip link set vi-c1w8-2 up
ovs-vsctl add-port ovS-8-2 vi-c2w8-2 -- set Interface vi-c2w8-2 type=internal
ip link set vi-c2w8-2 up

ovs-vsctl add-br ovS-9-1
ovs-vsctl add-port ovS-9-1 vi-c1w9-1 -- set Interface vi-c1w9-1 type=internal
ip link set vi-c1w9-1 up
ovs-vsctl add-port ovS-9-1 vi-c2w9-1 -- set Interface vi-c2w9-1 type=internal
ip link set vi-c2w9-1 up

ovs-vsctl add-br ovS-9-2
ovs-vsctl add-port ovS-9-2 vi-c1w9-2 -- set Interface vi-c1w9-2 type=internal
ip link set vi-c1w9-2 up
ovs-vsctl add-port ovS-9-2 vi-c2w9-2 -- set Interface vi-c2w9-2 type=internal
ip link set vi-c2w9-2 up

ovs-vsctl add-br ovS-10-1
ovs-vsctl add-port ovS-10-1 vi-c1w4-1 -- set Interface vi-c1w4-1 type=internal
ip link set vi-c1w4-1 up
ovs-vsctl add-port ovS-10-1 vi-c2w4-1 -- set Interface vi-c2w4-1 type=internal
ip link set vi-c2w4-1 up

ovs-vsctl add-br ovS-10-2
ovs-vsctl add-port ovS-10-2 vi-c1w4-2 -- set Interface vi-c1w4-2 type=internal
ip link set vi-c1w4-2 up
ovs-vsctl add-port ovS-10-2 vi-c2w4-2 -- set Interface vi-c2w4-2 type=internal
ip link set vi-c2w4-2 up

ovs-vsctl add-br ovS-11
ovs-vsctl add-port ovS-11 vi-c1m1-4 -- set Interface vi-c1m1-4 type=internal
ip link set vi-c1m1-4 up
ovs-vsctl add-port ovS-11 vi-c2w5-3 -- set Interface vi-c2w5-3 type=internal
ip link set vi-c2w5-3 up
ovs-vsctl add-port ovS-11 vi-r1-1 -- set Interface vi-r1-1 type=internal
ip link set vi-r1-1 up

ovs-vsctl add-br ovS-12
ovs-vsctl add-port ovS-12 vi-cmm1-4 -- set Interface vi-cmm1-4 type=internal
ip link set vi-cmm1-4 up
ovs-vsctl add-port ovS-12 vi-r1-2 -- set Interface vi-r1-2 type=internal
ip link set vi-r1-2 up
ovs-vsctl add-port ovS-12 vi-r2-1 -- set Interface vi-r2-1 type=internal
ip link set vi-r2-1 up

ovs-vsctl add-br ovS-13
ovs-vsctl add-port ovS-13 vi-c2m1-4 -- set Interface vi-c2m1-4 type=internal
ip link set vi-c2m1-4 up
ovs-vsctl add-port ovS-13 vi-c1w6-3 -- set Interface vi-c1w6-3 type=internal
ip link set vi-c1w6-3 up

ovs-vsctl add-br ovS-14
ovs-vsctl add-port ovS-14 vi-c2w5-4 -- set Interface vi-c2w5-4 type=internal
ip link set vi-c2w5-4 up
ovs-vsctl add-port ovS-14 vi-r3-1 -- set Interface vi-r3-1 type=internal
ip link set vi-r3-1 up

ovs-vsctl add-br ovS-15
ovs-vsctl add-port ovS-15 vi-r1-3 -- set Interface vi-r1-3 type=internal
ip link set vi-r1-3 up
ovs-vsctl add-port ovS-15 vi-r3-2 -- set Interface vi-r3-2 type=internal
ip link set vi-r3-2 up
ovs-vsctl add-port ovS-15 vi-r4-1 -- set Interface vi-r4-1 type=internal
ip link set vi-r4-1 up
ovs-vsctl add-port ovS-15 vi-c2w7-3 -- set Interface vi-c2w7-3 type=internal
ip link set vi-c2w7-3 up

ovs-vsctl add-br ovS-16
ovs-vsctl add-port ovS-16 vi-r2-2 -- set Interface vi-r2-2 type=internal
ip link set vi-r2-2 up
ovs-vsctl add-port ovS-16 vi-r4-2 -- set Interface vi-r4-2 type=internal
ip link set vi-r4-2 up
ovs-vsctl add-port ovS-16 vi-c1w6-4 -- set Interface vi-c1w6-4 type=internal
ip link set vi-c1w6-4 up

ovs-vsctl add-br ovS-17
ovs-vsctl add-port ovS-17 vi-r3-3 -- set Interface vi-r3-3 type=internal
ip link set vi-r3-3 up
ovs-vsctl add-port ovS-17 vi-c2w8-3 -- set Interface vi-c2w8-3 type=internal
ip link set vi-c2w8-3 up
ovs-vsctl add-port ovS-17 vi-c1w9-3 -- set Interface vi-c1w9-3 type=internal
ip link set vi-c1w9-3 up

ovs-vsctl add-br ovS-18
ovs-vsctl add-port ovS-18 vi-c2w7-4 -- set Interface vi-c2w7-4 type=internal
ip link set vi-c2w7-4 up
ovs-vsctl add-port ovS-18 vi-c1w9-4 -- set Interface vi-c1w9-4 type=internal
ip link set vi-c1w9-4 up
ovs-vsctl add-port ovS-18 vi-c1w4-3 -- set Interface vi-c1w4-3 type=internal
ip link set vi-c1w4-3 up

ovs-vsctl add-br ovS-19
ovs-vsctl add-port ovS-19 vi-r4-3 -- set Interface vi-r4-3 type=internal
ip link set vi-r4-3 up
ovs-vsctl add-port ovS-19 vi-c1w4-4 -- set Interface vi-c1w4-4 type=internal
ip link set vi-c1w4-4 up
