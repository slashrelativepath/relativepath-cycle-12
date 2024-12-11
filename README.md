# Relativepath Cycle 12

Repository for relative path cycle 12 sessions.

## Onboarding

automation to setup developers with basic tools like text editor and source control across different OS and architecture.

The tools we need for local development are:

* nano for text editor
* git for source control

These tools will be installed automatically by running the following scripts based on your Operating System.

on linux run:

`$SHELL setup-local-linux.sh`

On Mac (Darwin) run:

`$SHELL setup-local-darwin.sh`

On Windows as an administrator run:

`powershell -executionpolicy bypass -File .\setup-local-windows.ps1`

After running the setup script on windows either close the powershell window and reopen or run:

`Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1; refreshenv`

If you don't have git and want to run the onboarding script for windows, run:

`Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/slashrelativepath/relativepath-cycle-12/refs/heads/main/setup-local-windows.ps1'))`

## Project
Build and deploy a production level webserver.

Requirements:
* virtual-machine in multipass
* ubuntu 24.04 or later
* nginx webserver

Acceptance criteria:

`curl http://webserver?`

### Usage 

Create webserver vm on Mac & Linux run:

`$SHELL create-vm.sh`

Create webserver vm on Windows Powershell:

`./create-vm.ps1`

Delete webserver vm on Mac and Linux:

`$SHELL destroy-vm.sh`

Delete webserver vm on Windows:

`./destroy-vm.ps1`


