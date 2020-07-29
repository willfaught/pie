#!/bin/sh

set -x

sudo systemsetup -setallowpowerbuttontosleepcomputer on
sudo systemsetup -setcomputername "Will's Mac"
sudo systemsetup -setcomputersleep Never
sudo systemsetup -setdisablekeyboardwhenenclosurelockisengaged no
sudo systemsetup -setdisplaysleep 60
sudo systemsetup -setharddisksleep Never
sudo systemsetup -setkernelbootarchitecture default
sudo systemsetup -setlocalsubnetname 'Wills-Mac'
sudo systemsetup -setnetworktimeserver time.apple.com
sudo systemsetup -setrestartfreeze on
sudo systemsetup -setrestartpowerfailure on
sudo systemsetup -settimezone 'America/Los_Angeles'
sudo systemsetup -setusingnetworktime on
sudo systemsetup -setwaitforstartupafterpowerfailure 0
sudo systemsetup -setwakeonnetworkaccess on
