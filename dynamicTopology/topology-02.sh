# Destroy network topology

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

ip link set vi-cmm1-1 down
ovs-vsctl del-port ovS-2-1 vi-cmm1-1
ip link set vi-cmw1-1 down
ovs-vsctl del-port ovS-2-1 vi-cmw1-1
ip link set vi-c1w2-1 down
ovs-vsctl del-port ovS-2-1 vi-c1w2-1
ip link set vi-c2w2-1 down
ovs-vsctl del-port ovS-2-1 vi-c2w2-1
ovs-vsctl del-br ovS-2-1

ip link set vi-cmm1-2 down
ovs-vsctl del-port ovS-2-2 vi-cmm1-2
ip link set vi-cmw1-2 down
ovs-vsctl del-port ovS-2-2 vi-cmw1-2
ip link set vi-c1w2-2 down
ovs-vsctl del-port ovS-2-2 vi-c1w2-2
ip link set vi-c2w2-2 down
ovs-vsctl del-port ovS-2-2 vi-c2w2-2
ovs-vsctl del-br ovS-2-2

ip link set vi-c2m1-1 down
ovs-vsctl del-port ovS-3-1 vi-c2m1-1
ip link set vi-c1w3-1 down
ovs-vsctl del-port ovS-3-1 vi-c1w3-1
ip link set vi-c2w3-1 down
ovs-vsctl del-port ovS-3-1 vi-c2w3-1
ovs-vsctl del-br ovS-3-1

ip link set vi-c2m1-2 down
ovs-vsctl del-port ovS-3-2 vi-c2m1-2
ip link set vi-c1w3-2 down
ovs-vsctl del-port ovS-3-2 vi-c1w3-2
ip link set vi-c2w3-2 down
ovs-vsctl del-port ovS-3-2 vi-c2w3-2
ovs-vsctl del-br ovS-3-2

ip link set vi-cmm1-3 down
ovs-vsctl del-port ovS-4 vi-cmm1-3
ip link set vi-c1m1-3 down
ovs-vsctl del-port ovS-4 vi-c1m1-3
ip link set vi-c2m1-3 down
ovs-vsctl del-port ovS-4 vi-c2m1-3
ovs-vsctl del-br ovS-4

ip link set vi-c1w5-1 down
ovs-vsctl del-port ovS-5-1 vi-c1w5-1
ip link set vi-c2w5-1 down
ovs-vsctl del-port ovS-5-1 vi-c2w5-1
ovs-vsctl del-br ovS-5-1

ip link set vi-c1w5-2 down
ovs-vsctl del-port ovS-5-2 vi-c1w5-2
ip link set vi-c2w5-2 down
ovs-vsctl del-port ovS-5-2 vi-c2w5-2
ovs-vsctl del-br ovS-5-2

ip link set vi-c1w6-1 down
ovs-vsctl del-port ovS-6-1 vi-c1w6-1
ip link set vi-c2w6-1 down
ovs-vsctl del-port ovS-6-1 vi-c2w6-1
ovs-vsctl del-br ovS-6-1

ip link set vi-c1w6-2 down
ovs-vsctl del-port ovS-6-2 vi-c1w6-2
ip link set vi-c2w6-2 down
ovs-vsctl del-port ovS-6-2 vi-c2w6-2
ovs-vsctl del-br ovS-6-2

ip link set vi-c1w7-1 down
ovs-vsctl del-port ovS-7-1 vi-c1w7-1
ip link set vi-c2w7-1 down
ovs-vsctl del-port ovS-7-1 vi-c2w7-1
ovs-vsctl del-br ovS-7-1

ip link set vi-c1w7-2 down
ovs-vsctl del-port ovS-7-2 vi-c1w7-2
ip link set vi-c2w7-2 down
ovs-vsctl del-port ovS-7-2 vi-c2w7-2
ovs-vsctl del-br ovS-7-2

ip link set vi-c1w8-1 down
ovs-vsctl del-port ovS-8-1 vi-c1w8-1
ip link set vi-c2w8-1 down
ovs-vsctl del-port ovS-8-1 vi-c2w8-1
ovs-vsctl del-br ovS-8-1

ip link set vi-c1w8-2 down
ovs-vsctl del-port ovS-8-2 vi-c1w8-2
ip link set vi-c2w8-2 down
ovs-vsctl del-port ovS-8-2 vi-c2w8-2
ovs-vsctl del-br ovS-8-2

ip link set vi-c1w9-1 down
ovs-vsctl del-port ovS-9-1 vi-c1w9-1
ip link set vi-c2w9-1 down
ovs-vsctl del-port ovS-9-1 vi-c2w9-1
ovs-vsctl del-br ovS-9-1

ip link set vi-c1w9-2 down
ovs-vsctl del-port ovS-9-2 vi-c1w9-2
ip link set vi-c2w9-2 down
ovs-vsctl del-port ovS-9-2 vi-c2w9-2
ovs-vsctl del-br ovS-9-2

ip link set vi-c1w4-1 down
ovs-vsctl del-port ovS-10-1 vi-c1w4-1
ip link set vi-c2w4-1 down
ovs-vsctl del-port ovS-10-1 vi-c2w4-1
ovs-vsctl del-br ovS-10-1

ip link set vi-c1w4-2 down
ovs-vsctl del-port ovS-10-2 vi-c1w4-2
ip link set vi-c2w4-2 down
ovs-vsctl del-port ovS-10-2 vi-c2w4-2
ovs-vsctl del-br ovS-10-2

ip link set vi-c1m1-4 down
ovs-vsctl del-port ovS-11 vi-c1m1-4
ip link set vi-c2w5-3 down
ovs-vsctl del-port ovS-11 vi-c2w5-3
ip link set vi-r1-1 down
ovs-vsctl del-port ovS-11 vi-r1-1
ovs-vsctl del-br ovS-11

ip link set vi-cmm1-4 down
ovs-vsctl del-port ovS-12 vi-cmm1-4
ip link set vi-r1-2 down
ovs-vsctl del-port ovS-12 vi-r1-2
ip link set vi-r2-1 down
ovs-vsctl del-port ovS-12 vi-r2-1
ovs-vsctl del-br ovS-12

ip link set vi-c2m1-4 down
ovs-vsctl del-port ovS-13 vi-c2m1-4
ip link set vi-c1w6-3 down
ovs-vsctl del-port ovS-13 vi-c1w6-3
ovs-vsctl del-br ovS-13

ip link set vi-c2w5-4 down
ovs-vsctl del-port ovS-14 vi-c2w5-4
ip link set vi-r3-1 down
ovs-vsctl del-port ovS-14 vi-r3-1
ovs-vsctl del-br ovS-14

ip link set vi-r1-3 down
ovs-vsctl del-port ovS-15 vi-r1-3
ip link set vi-r3-2 down
ovs-vsctl del-port ovS-15 vi-r3-2
ip link set vi-r4-1 down
ovs-vsctl del-port ovS-15 vi-r4-1
ip link set vi-c2w7-3 down
ovs-vsctl del-port ovS-15 vi-c2w7-3
ovs-vsctl del-br ovS-15

ip link set vi-r2-2 down
ovs-vsctl del-port ovS-16 vi-r2-2
ip link set vi-r4-2 down
ovs-vsctl del-port ovS-16 vi-r4-2
ip link set vi-c1w6-4 down
ovs-vsctl del-port ovS-16 vi-c1w6-4
ovs-vsctl del-br ovS-16

ip link set vi-r3-3 down
ovs-vsctl del-port ovS-17 vi-r3-3
ip link set vi-c2w8-3 down
ovs-vsctl del-port ovS-17 vi-c2w8-3
ip link set vi-c1w9-3 down
ovs-vsctl del-port ovS-17 vi-c1w9-3
ovs-vsctl del-br ovS-17

ip link set vi-c2w7-4 down
ovs-vsctl del-port ovS-18 vi-c2w7-4
ip link set vi-c1w9-4 down
ovs-vsctl del-port ovS-18 vi-c1w9-4
ip link set vi-c1w4-3 down
ovs-vsctl del-port ovS-18 vi-c1w4-3
ovs-vsctl del-br ovS-18

ip link set vi-r4-3 down
ovs-vsctl del-port ovS-19 vi-r4-3
ip link set vi-c1w4-4 down
ovs-vsctl del-port ovS-19 vi-c1w4-4
ovs-vsctl del-br ovS-19





