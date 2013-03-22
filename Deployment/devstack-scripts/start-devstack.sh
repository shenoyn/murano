#!/bin/bash

source ./localrc


# Executing pre-stack actions
#===============================================================================
source ./pre-stack.sh no-localrc
#===============================================================================



# Creating stack
#===============================================================================
$DEVSTACK_DIR/stack.sh
#===============================================================================



# Executing post-stack actions
#===============================================================================
source ./post-stack.sh no-localrc
source ./start-keero.sh no-localrc
#===============================================================================


