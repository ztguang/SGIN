#!/bin/bash

# execute topology1-01.sh
./topology1-01.sh

# The network topology above remains unchanged for 20 seconds
sleep 20

# execute topology1-02.sh
./topology1-02.sh

# The network topology above remains unchanged for 30 seconds
sleep 30

# execute topology1-03.sh
./topology1-03.sh


# chmod +x run_topology.sh
# ./run_topology.sh
