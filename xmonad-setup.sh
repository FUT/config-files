#!/bin/bash

notice()
{
  echo -e "\033[1;32m\n\n=========================================================\n  [INFO] $1\n\033[0m"
}

notice "Install xmonad"

cd xmonad
source setup.sh
