# Rainer Christian Bjoern Herold
# UNDER CONSTRUCTION

# Variables
decision = ""
IP_INT=127.0.0.1
PATH_Install_Dir = ""
pentesting = ""
Skip = false
Switch_Firewall = false
Switch_Hardening = false
Switch_IGNORE = false
Switch_License = false
Switch_SSH = false
Switch_Skip = false
Switch_WGET = false

# Arrays
$Filter_Download = @('C:/Pentest_Tools')

# Functions
function Header {
        clear ; initials
        if ($1 = "category") {
                echo "`n          Please choose between one category"
        } elif ($1 = "installation") {
                echo "`n          Please choose between one installation"
        }
        Write-Host "----------------------------------------------------------" -f cyan
        Write-Host "|                                                        |" -f cyan
        if ($1 = "category") {
                Write-Host "| " -f cyan -NoNewLine ; Write-Host "[" -NoNewLine ; Write-Host "1" -f red -NoNewLine ; Write-Host "] " -NoNewLine ; Write-Host "complete" -f red -NoNewLine ; Write-Host "    :   installation of both toolkits      " -NoNewLine ; Write-Host "|" -f cyan
                Write-Host "| " -f cyan -NoNewLine ; Write-Host "[" -NoNewLine ; Write-Host "2" -f cyan -NoNewLine ; Write-Host "] " -NoNewLine ; Write-Host "custom" -f cyan -NoNewLine ; Write-Host "      :   installation of custom tools       " -NoNewLine ; Write-Host "|" -f cyan
                Write-Host "| " -f cyan -NoNewLine ; Write-Host "[" -NoNewLine ; Write-Host "3" -f green -NoNewLine ; Write-Host "] " -NoNewLine ; Write-Host "forensic" -f green -NoNewLine ; Write-Host "    :   installation of forensic tools     " -NoNewLine ; Write-Host "|" -f cyan
                Write-Host "| " -f cyan -NoNewLine ; Write-Host "[" -NoNewLine ; Write-Host "4" -f orange -NoNewLine ; Write-Host "] " -NoNewLine ; Write-Host "pentest" -f orange -NoNewLine ; Write-Host "     :   installation of pentest tools      " -NoNewLine ; Write-Host "|" -f cyan
        } elif ($1 = "installation") {
                echo "${CYAN}|${NOCOLOR} [${GREEN}1${NOCOLOR}]        ${GREEN}full${NOCOLOR}    : full installation (GUI)           ${CYAN}|${NOCOLOR}"
                echo "${CYAN}|${NOCOLOR} [${ORANGE}2${NOCOLOR}]        ${ORANGE}minimal${NOCOLOR} : minimal installation (CLI)        ${CYAN}|${NOCOLOR}"
        } elif ($1 = "pentesting_category") {
                echo "${CYAN}|${NOCOLOR} [${GREEN}1${NOCOLOR}] ${GREEN}infrastructure${NOCOLOR}  :   tools for infra pentesting     ${CYAN}|${NOCOLOR}"
                echo "${CYAN}|${NOCOLOR} [${ORANGE}2${NOCOLOR}] ${ORANGE}iot${NOCOLOR}             :   tools for iot pentesting       ${CYAN}|${NOCOLOR}"
                echo "${CYAN}|${NOCOLOR} [${BLUE}3${NOCOLOR}] ${BLUE}mobile${NOCOLOR}          :   tools for mobile pentesting    ${CYAN}|${NOCOLOR}"
                echo "${CYAN}|${NOCOLOR} [${RED}4${NOCOLOR}] ${RED}red_teaming${NOCOLOR}     :   tools for red teaming          ${CYAN}|${NOCOLOR}"
                echo "${CYAN}|${NOCOLOR} [${CYAN}5${NOCOLOR}] ${CYAN}web${NOCOLOR}             :   tools for web pentesting       ${CYAN}|${NOCOLOR}"
        } elif ($1 = "hardening") {
                echo "${CYAN}|${NOCOLOR} [${RED}1${NOCOLOR}] ${RED}complete${NOCOLOR}         :   complete configuration        ${CYAN}|${NOCOLOR}"
                echo "${CYAN}|${NOCOLOR} [${CYAN}2${NOCOLOR}] ${CYAN}Firewall${NOCOLOR}         :   firewall                      ${CYAN}|${NOCOLOR}"
                echo "${CYAN}|${NOCOLOR} [${GREEN}3${NOCOLOR}] ${GREEN}Sysctl (OS)${NOCOLOR}      :   sysctl hardening              ${CYAN}|${NOCOLOR}"
                echo "${CYAN}|${NOCOLOR} [${ORANGE}4${NOCOLOR}] ${ORANGE}SSH${NOCOLOR}              :   SSH hardening                 ${CYAN}|${NOCOLOR}"
        }
        Write-Host "|                                                        |" -f cyan
        Write-Host "----------------------------------------------------------`n" -f cyan
}

function Initials {
        echo "💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀"
        echo "💀                                                     💀"
        echo "💀                       Yggdrasil                     💀"
        echo "💀                     Version 0.8                     💀"
        echo "💀           Rainer Christian Bjoern Herold            💀"
        echo "💀                                                     💀"
        echo "💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀`n"
}

function Downloader {
        New-Item "C:/Wordlists" -ItemType Directory

        foreach($line in Get-Content "") {
                if ($line -match "") {
                        Invoke-WebRequest "" -OutFile ""
                }
        }
}

# Main
Initials
