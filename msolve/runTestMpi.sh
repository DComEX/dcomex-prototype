#!/bin/bash
PROCESSES=$1
SCRIPT_DIR="$(dirname $(realpath $0))"
if [ -z "$PROCESSES" ]
then
    PROCESSES=2
fi
mpirun -np $PROCESSES "${SCRIPT_DIR}"/runTest.sh
