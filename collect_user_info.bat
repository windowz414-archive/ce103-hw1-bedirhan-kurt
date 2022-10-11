@ECHO OFF
REM
REM Copyright (C) 2022 Bedirhan KURT. All Rights Reserved.
REM Copyright (C) 2022 Beru "Stella" Hinode on behalf of Bedirhan KURT. All Rights Reserved.
REM
REM SPDX-License-Identifity: GPL-2.0-only
REM

REM This script is a self-made sample with lots of experimentation and
REM researches to be submitted as part of assignment in Recep Tayyip
REM Erdogan University, Computer Engineering Department. It is designed
REM to do as the requested assignment does and emails them to
REM windowz414@1337.lgbt as proof. Check relevant platform's
REM requirements.txt file for more info about dependencies and
REM compatibility. This assignment will stay FOSS (Free and Open Source
REM Software) and be provided in "AS IS" basis without any guarantees.
REM Any kinds of contribution, such as forks, PRs, Issues, are welcome
REM as long as it has the intention of constructive critisism or actual
REM contribution to source code. This piece of code, in no way, reflects
REM any of my plans for current and future projects and is meant solely
REM as a homework/assignment.

REM Get username and print into the text file.
ECHO Username: %USERNAME% > client-device-information.txt

REM Get hostname and print into the text file.
ECHO Hostname: %COMPUTERNAME% >> client-device-information.txt

REM Get ipconfig output into the text file.
ECHO ----- Network configuration dump start ----- >> client-device-information.txt
IPCONFIG >> client-device-information.txt
ECHO -----  Network configuration dump end  ----- >> client-device-information.txt

REM Get available physical and virtual memory and print into the text
REM file.
REM TODO: Think about other locales and find a more global method for
REM       this.
SYSTEMINFO|FIND "Available" >> client-device-information.txt

REM Get available disk space for all local disks installed.
ECHO ----- Dump local disks and free spaces start ----- >> client-device-information.txt
WMIC /NODE:"%COMPUTERNAME%" LOGICALDISK WHERE DRIVETYPE="3" GET DeviceID,VolumeName,FreeSpace >> client-device-information.txt
ECHO -----  Dump local disks and free spaces end  ----- >> client-device-information.txt

REM Get current directory and print it in.
DIR|FIND "Directory of" >> client-device-information.txt

REM Get all running processes and services.
TASKLIST >> client-device-information.txt

REM Get all opened ports and print them in.
ECHO ----- Dump network stats start ----- >> client-device-information.txt
NETSTAT >> client-device-information.txt
ECHO -----  Dump network stats end  ----- >> client-device-information.txt