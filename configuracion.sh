#!/bin/bash
echo -e "
┌──────────────────────────────────────────────────────────────────────────────┐
│                     \e[32mConfigurando el siatema ArchLinux\e[0m                        │
│                                                                              │
│ Selecciona la opcion a ejecutar para configurar el sistema.                  │
│ Opciones:                                                                    │
│                                                                              │
│       1.) inicio root             - inicio                                   │
│       2.) Anarchy Update          - anarchy -u                               │
│       3.) Update Arch Linux Keys  - anarchy -k                               │
│       4.) Connection Test         - iptest                                   │
│       5.) System Information      - sysinfo                                  │
│                                                                              │
│ For more information on Anarchy type: 'anarchy --help'                       │
│ Par volver al menu principal excriba: 'start'                                │
└──────────────────────────────────────────────────────────────────────────────┘
"
read -p "Press enter para continuar la instalacion"

--- 

~/.automated_script.sh

# Anarchy-related commands
alias start='cat menu'
alias 1='inicio'
alias 2='anarchy -u'
alias 3='anarchy -k'
alias 4='iptest'
alias 5='sysinfo'
clear
cat nemu

