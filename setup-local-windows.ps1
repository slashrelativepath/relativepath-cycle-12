if (get-command choco) {
  echo 'choco is already installed.'
} else {
  echo 'installing choco...'
  Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
  Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1; refreshenv
}

if (get-command nano) {
  echo 'nano is already installed.'
} else {
  echo 'installing nano...'
  choco install -y nano
  Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1; refreshenv
}

if (get-command git) {
  echo 'git is already installed.'
} else {
  echo 'installing git...'
  choco install git.install -y --force --params "'GitAndUnixToolsOnPath /WindowsTerminal /NoAutoCrlf'"
  Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1; refreshenv
}

if (get-command virtualbox) {
  echo 'virtualbox is already installed.'
} else {
  echo 'installing virtualbox...'
  choco install -y virtualbox
  Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1; refreshenv
}

if (get-command multipass) {
  echo 'multipass is already installed.'
} else {
  echo 'installing multipass...'
  choco install -y multipass --params="'/HyperVisor:VirtualBox'"
  Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1; refreshenv
}


