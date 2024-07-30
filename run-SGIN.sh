
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


# Create network topology, second, aiming to success

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


# Create virtual machine

mkdir SGIN-CMM1 SGIN-CMW1 SGIN-C1M1 SGIN-C2M1
mkdir SGIN-C1W{1..9}
mkdir SGIN-C2W{1..9}
mkdir SGIN-R{1..4}

mv SGIN-CMM1.vdi /opt/k8s/vdi/SGIN-CMM1
mv SGIN-CMW1.vdi /opt/k8s/vdi/SGIN-CMW1

mv SGIN-C1M1.vdi /opt/k8s/vdi/SGIN-C1M1
mv SGIN-C1W1.vdi /opt/k8s/vdi/SGIN-C1W1
mv SGIN-C1W2.vdi /opt/k8s/vdi/SGIN-C1W2
mv SGIN-C1W3.vdi /opt/k8s/vdi/SGIN-C1W3
mv SGIN-C1W4.vdi /opt/k8s/vdi/SGIN-C1W4
mv SGIN-C1W5.vdi /opt/k8s/vdi/SGIN-C1W5
mv SGIN-C1W6.vdi /opt/k8s/vdi/SGIN-C1W6
mv SGIN-C1W7.vdi /opt/k8s/vdi/SGIN-C1W7
mv SGIN-C1W8.vdi /opt/k8s/vdi/SGIN-C1W8
mv SGIN-C1W9.vdi /opt/k8s/vdi/SGIN-C1W9

mv SGIN-C2M1.vdi /opt/k8s/vdi/SGIN-C2M1
mv SGIN-C2W1.vdi /opt/k8s/vdi/SGIN-C2W1
mv SGIN-C2W2.vdi /opt/k8s/vdi/SGIN-C2W2
mv SGIN-C2W3.vdi /opt/k8s/vdi/SGIN-C2W3
mv SGIN-C2W4.vdi /opt/k8s/vdi/SGIN-C2W4
mv SGIN-C2W5.vdi /opt/k8s/vdi/SGIN-C2W5
mv SGIN-C2W6.vdi /opt/k8s/vdi/SGIN-C2W6
mv SGIN-C2W7.vdi /opt/k8s/vdi/SGIN-C2W7
mv SGIN-C2W8.vdi /opt/k8s/vdi/SGIN-C2W8
mv SGIN-C2W9.vdi /opt/k8s/vdi/SGIN-C2W9

mv SGIN-R1.vdi /opt/k8s/vdi/SGIN-R1
mv SGIN-R2.vdi /opt/k8s/vdi/SGIN-R2
mv SGIN-R3.vdi /opt/k8s/vdi/SGIN-R3
mv SGIN-R4.vdi /opt/k8s/vdi/SGIN-R4


VBoxManage createvm --name SGIN-CMM1 --basefolder "/opt/k8s/vdi/SGIN-CMM1" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-CMM1 --cpus 4 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-cmm1-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-cmm1-2 --nic3 bridged --nictype3 82540EM --bridgeadapter3 vi-cmm1-3 --nic4 bridged --nictype4 82540EM --bridgeadapter4 vi-cmm1-4 --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-CMM1 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-CMM1 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-CMM1/SGIN-CMM1.vdi
VBoxManage startvm SGIN-CMM1

sleep 5
VBoxManage createvm --name SGIN-CMW1 --basefolder "/opt/k8s/vdi/SGIN-CMW1" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-CMW1 --cpus 2 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-cmw1-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-cmw1-2 --nic3 none --nic4 none --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-CMW1 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-CMW1 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-CMW1/SGIN-CMW1.vdi
VBoxManage startvm SGIN-CMW1


sleep 5
VBoxManage createvm --name SGIN-C1M1 --basefolder "/opt/k8s/vdi/SGIN-C1M1" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-C1M1 --cpus 4 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-c1m1-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-c1m1-2 --nic3 bridged --nictype3 82540EM --bridgeadapter3 vi-c1m1-3 --nic4 bridged --nictype4 82540EM --bridgeadapter4 vi-c1m1-4 --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-C1M1 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-C1M1 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-C1M1/SGIN-C1M1.vdi
VBoxManage startvm SGIN-C1M1

sleep 5
VBoxManage createvm --name SGIN-C1W1 --basefolder "/opt/k8s/vdi/SGIN-C1W1" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-C1W1 --cpus 2 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-c1w1-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-c1w1-2 --nic3 none --nic4 none --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-C1W1 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-C1W1 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-C1W1/SGIN-C1W1.vdi
VBoxManage startvm SGIN-C1W1

sleep 5
VBoxManage createvm --name SGIN-C1W2 --basefolder "/opt/k8s/vdi/SGIN-C1W2" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-C1W2 --cpus 2 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-c1w2-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-c1w2-2 --nic3 none --nic4 none --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-C1W2 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-C1W2 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-C1W2/SGIN-C1W2.vdi
VBoxManage startvm SGIN-C1W2

sleep 5
VBoxManage createvm --name SGIN-C1W3 --basefolder "/opt/k8s/vdi/SGIN-C1W3" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-C1W3 --cpus 4 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-c1w3-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-c1w3-2 --nic3 none --nic4 none --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-C1W3 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-C1W3 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-C1W3/SGIN-C1W3.vdi
VBoxManage startvm SGIN-C1W3

sleep 5
VBoxManage createvm --name SGIN-C1W4 --basefolder "/opt/k8s/vdi/SGIN-C1W4" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-C1W4 --cpus 4 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-c1w4-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-c1w4-2 --nic3 bridged --nictype3 82540EM --bridgeadapter3 vi-c1w4-3 --nic4 bridged --nictype4 82540EM --bridgeadapter4 vi-c1w4-4 --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-C1W4 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-C1W4 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-C1W4/SGIN-C1W4.vdi
VBoxManage startvm SGIN-C1W4

sleep 5
VBoxManage createvm --name SGIN-C1W5 --basefolder "/opt/k8s/vdi/SGIN-C1W5" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-C1W5 --cpus 4 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-c1w5-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-c1w5-2 --nic3 none --nic4 none --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-C1W5 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-C1W5 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-C1W5/SGIN-C1W5.vdi
VBoxManage startvm SGIN-C1W5

sleep 5
VBoxManage createvm --name SGIN-C1W6 --basefolder "/opt/k8s/vdi/SGIN-C1W6" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-C1W6 --cpus 4 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-c1w6-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-c1w6-2 --nic3 bridged --nictype3 82540EM --bridgeadapter3 vi-c1w6-3 --nic4 bridged --nictype4 82540EM --bridgeadapter4 vi-c1w6-4 --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-C1W6 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-C1W6 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-C1W6/SGIN-C1W6.vdi
VBoxManage startvm SGIN-C1W6

sleep 5
VBoxManage createvm --name SGIN-C1W7 --basefolder "/opt/k8s/vdi/SGIN-C1W7" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-C1W7 --cpus 4 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-c1w7-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-c1w7-2 --nic3 none --nic4 none --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-C1W7 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-C1W7 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-C1W7/SGIN-C1W7.vdi
VBoxManage startvm SGIN-C1W7

sleep 5
VBoxManage createvm --name SGIN-C1W8 --basefolder "/opt/k8s/vdi/SGIN-C1W8" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-C1W8 --cpus 4 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-c1w8-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-c1w8-2 --nic3 none --nic4 none --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-C1W8 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-C1W8 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-C1W8/SGIN-C1W8.vdi
VBoxManage startvm SGIN-C1W8

sleep 5
VBoxManage createvm --name SGIN-C1W9 --basefolder "/opt/k8s/vdi/SGIN-C1W9" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-C1W9 --cpus 4 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-c1w9-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-c1w9-2 --nic3 bridged --nictype3 82540EM --bridgeadapter3 vi-c1w9-3 --nic4 bridged --nictype4 82540EM --bridgeadapter4 vi-c1w9-4 --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-C1W9 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-C1W9 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-C1W9/SGIN-C1W9.vdi
VBoxManage startvm SGIN-C1W9


sleep 5
VBoxManage createvm --name SGIN-C2M1 --basefolder "/opt/k8s/vdi/SGIN-C2M1" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-C2M1 --cpus 4 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-c2m1-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-c2m1-2 --nic3 bridged --nictype3 82540EM --bridgeadapter3 vi-c2m1-3 --nic4 bridged --nictype4 82540EM --bridgeadapter4 vi-c2m1-4 --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-C2M1 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-C2M1 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-C2M1/SGIN-C2M1.vdi
VBoxManage startvm SGIN-C2M1

sleep 5
VBoxManage createvm --name SGIN-C2W1 --basefolder "/opt/k8s/vdi/SGIN-C2W1" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-C2W1 --cpus 2 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-c2w1-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-c2w1-2 --nic3 none --nic4 none --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-C2W1 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-C2W1 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-C2W1/SGIN-C2W1.vdi
VBoxManage startvm SGIN-C2W1

sleep 5
VBoxManage createvm --name SGIN-C2W2 --basefolder "/opt/k8s/vdi/SGIN-C2W2" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-C2W2 --cpus 2 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-c2w2-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-c2w2-2 --nic3 none --nic4 none --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-C2W2 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-C2W2 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-C2W2/SGIN-C2W2.vdi
VBoxManage startvm SGIN-C2W2

sleep 5
VBoxManage createvm --name SGIN-C2W3 --basefolder "/opt/k8s/vdi/SGIN-C2W3" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-C2W3 --cpus 4 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-c2w3-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-c2w3-2 --nic3 none --nic4 none --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-C2W3 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-C2W3 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-C2W3/SGIN-C2W3.vdi
VBoxManage startvm SGIN-C2W3

sleep 5
VBoxManage createvm --name SGIN-C2W4 --basefolder "/opt/k8s/vdi/SGIN-C2W4" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-C2W4 --cpus 4 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-c2w4-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-c2w4-2 --nic3 none --nic4 none --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-C2W4 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-C2W4 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-C2W4/SGIN-C2W4.vdi
VBoxManage startvm SGIN-C2W4

sleep 5
VBoxManage createvm --name SGIN-C2W5 --basefolder "/opt/k8s/vdi/SGIN-C2W5" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-C2W5 --cpus 4 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-c2w5-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-c2w5-2 --nic3 bridged --nictype3 82540EM --bridgeadapter3 vi-c2w5-3 --nic4 bridged --nictype4 82540EM --bridgeadapter4 vi-c2w5-4 --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-C2W5 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-C2W5 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-C2W5/SGIN-C2W5.vdi
VBoxManage startvm SGIN-C2W5

sleep 5
VBoxManage createvm --name SGIN-C2W6 --basefolder "/opt/k8s/vdi/SGIN-C2W6" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-C2W6 --cpus 4 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-c2w6-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-c2w6-2 --nic3 none --nic4 none --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-C2W6 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-C2W6 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-C2W6/SGIN-C2W6.vdi
VBoxManage startvm SGIN-C2W6

sleep 5
VBoxManage createvm --name SGIN-C2W7 --basefolder "/opt/k8s/vdi/SGIN-C2W7" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-C2W7 --cpus 4 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-c2w7-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-c2w7-2 --nic3 bridged --nictype3 82540EM --bridgeadapter3 vi-c2w7-3 --nic4 bridged --nictype4 82540EM --bridgeadapter4 vi-c2w7-4 --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-C2W7 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-C2W7 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-C2W7/SGIN-C2W7.vdi
VBoxManage startvm SGIN-C2W7

sleep 5
VBoxManage createvm --name SGIN-C2W8 --basefolder "/opt/k8s/vdi/SGIN-C2W8" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-C2W8 --cpus 4 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-c2w8-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-c2w8-2 --nic3 bridged --nictype3 82540EM --bridgeadapter3 vi-c2w8-3 --nic4 none --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-C2W8 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-C2W8 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-C2W8/SGIN-C2W8.vdi
VBoxManage startvm SGIN-C2W8

sleep 5
VBoxManage createvm --name SGIN-C2W9 --basefolder "/opt/k8s/vdi/SGIN-C2W9" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-C2W9 --cpus 4 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-c2w9-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-c2w9-2 --nic3 none --nic4 none --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-C2W9 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-C2W9 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-C2W9/SGIN-C2W9.vdi
VBoxManage startvm SGIN-C2W9


sleep 5
VBoxManage createvm --name SGIN-R1 --basefolder "/opt/k8s/vdi/SGIN-R1" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-R1 --cpus 4 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-r1-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-r1-2 --nic3 bridged --nictype3 82540EM --bridgeadapter3 vi-r1-3 --nic4 none --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-R1 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-R1 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-R1/SGIN-R1.vdi
VBoxManage startvm SGIN-R1

sleep 5
VBoxManage createvm --name SGIN-R2 --basefolder "/opt/k8s/vdi/SGIN-R2" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-R2 --cpus 4 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-r2-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-r2-2 --nic3 none --nic4 none --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-R2 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-R2 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-R2/SGIN-R2.vdi
VBoxManage startvm SGIN-R2

sleep 5
VBoxManage createvm --name SGIN-R3 --basefolder "/opt/k8s/vdi/SGIN-R3" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-R3 --cpus 4 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-r3-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-r3-2 --nic3 bridged --nictype3 82540EM --bridgeadapter3 vi-r3-3 --nic4 none --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-R3 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-R3 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-R3/SGIN-R3.vdi
VBoxManage startvm SGIN-R3

sleep 5
VBoxManage createvm --name SGIN-R4 --basefolder "/opt/k8s/vdi/SGIN-R4" --ostype Linux_64 --register
VBoxManage modifyvm SGIN-R4 --cpus 4 --memory 4096 --graphicscontroller vmsvga --vram 16 --usb off --audio-driver pulse --audiocontroller sb16 --acpi on --rtcuseutc off --boot1 disk --boot2 dvd --nic1 bridged --nictype1 82540EM --bridgeadapter1 vi-r4-1 --nic2 bridged --nictype2 82540EM --bridgeadapter2 vi-r4-2 --nic3 bridged --nictype3 82540EM --bridgeadapter3 vi-r4-3 --nic4 none --nic5 bridged --nictype5 82540EM --bridgeadapter5 eno1
VBoxManage storagectl SGIN-R4 --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach SGIN-R4 --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium /opt/k8s/vdi/SGIN-R4/SGIN-R4.vdi
VBoxManage startvm SGIN-R4


