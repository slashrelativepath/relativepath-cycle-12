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

On Windows run:

`powershell -executionpolicy bypass -File .\setup-local-windows.ps1`

## Project
Build and deploy a production level webserver.

Requirements:
* virtual-machine in multipass
* ubuntu 24.04 or later
* nginx webserver

Acceptance criteria:

`curl http://webserver?`


