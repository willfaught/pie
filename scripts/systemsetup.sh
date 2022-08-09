#!/bin/sh

set -x

sudo systemsetup -setcomputersleep Never
sudo systemsetup -setdisablekeyboardwhenenclosurelockisengaged no
sudo systemsetup -setdisplaysleep 60
sudo systemsetup -setharddisksleep 10
sudo systemsetup -setrestartfreeze on
sudo systemsetup -settimezone 'America/Los_Angeles'
sudo systemsetup -setusingnetworktime on
sudo systemsetup -setwakeonnetworkaccess on
