#!/usr/local/bin/zsh
# Installs command line developer tools.

if [[ ! -a $(xcode-select -p 2>/dev/null) ]]; then
  printmsg info "Installing Command Line Developer Tools. Follow the actions on the GUI."
  peval "sudo xcode-select --install"
  printmsg info "Waiting for tools to be installed. If the operation was cancelled, hit ^C and restart the script."
  while [[ ! -a $(xcode-select -p 2>/dev/null) ]]; do
    sleep 1
  done
  printmsg success 'Command Line Developer Tools are now installed!'
else
  printmsg info 'Command Line Developer Tools are installed!'
fi

peval "softwareupdate --all --install --force"
