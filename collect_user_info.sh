#
# Copyright (C) 2022 Bedirhan KURT. All Rights Reserved.
# Copyright (C) 2022 Beru "Stella" Hinode on behalf of Bedirhan KURT. All Rights Reserved.
#
# SPDX-License-Identifity: GPL-2.0-only
#

# This script is a self-made sample with lots of experimentation and
# researches to be submitted as part of assignment in Recep Tayyip
# Erdogan University, Computer Engineering Department. It is designed
# to do as the requested assignment does and emails them to
# windowz414@1337.lgbt as proof. Check relevant platform's
# requirements.txt file for more info about dependencies and
# compatibility. This assignment will stay FOSS (Free and Open Source
# Software) and be provided in "AS IS" basis without any guarantees.
# Any kinds of contribution, such as forks, PRs, Issues, are welcome
# as long as it has the intention of constructive critisism or actual
# contribution to source code. This piece of code, in no way, reflects
# any of my plans for current and future projects and is meant solely
# as a homework/assignment.

# Function approach will be a little easier and cause less load over
# file buffer.

function collectinfo(){
    # Get username
    echo "Username: $(whoami)"

    # Get hostname
    echo "Hostname: $(uname -n)"

    # Dump network stats
    echo "----- Dump network configuration start -----"
    ifconfig
    echo "-----  Dump network configuration end  -----"

    # Get available memory status
    cat /proc/meminfo | grep Free

    # Dump available disk spaces for each mountpoint
    echo "----- Dump local disks, free spaces and mountpoints start -----"
    df -lh --output=source,fstype,avail,target
    echo "-----  Dump local disks, free spaces and mountpoints end  -----"

    # Get current working directory
    pwd

    # Get all running processes (includes system ones)
    echo "----- Dump running processes start -----"
    ps -A
    echo "-----  Dump running processes end  -----"

    # Get network stats - DEPENDS ON `net-tools`!
    echo "----- Dump network stats start -----"
    netstat
    echo "-----  Dump network stats end  -----"
}

collectinfo > client-device-information.txt
