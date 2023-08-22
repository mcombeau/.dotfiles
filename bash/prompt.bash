# Recreation of ParrotOS prompt in different colors.

# Define some basic colors using tput (8-bit color: 256 colors)
red="\[$(tput setaf 160)\]"
bright_red="\[$(tput setaf 196)\]"
light_purple="\[$(tput setaf 60)\]"
orange="\[$(tput setaf 172)\]"
blue="\[$(tput setaf 21)\]"
light_blue="\[$(tput setaf 80)\]"
bold="\[$(tput bold)\]"
reset="\[$(tput sgr0)\]"

# Define basic colors to be used in prompt
## The color for username (light_blue, for root user: bright_red)
username_color="${reset}${bold}${light_blue}\$([[ \${EUID} == 0 ]] && echo \"${light_purpe}\")";
## Color of @ and ✗ symbols (orange)
at_color=$reset$bold$light_purple
## Color of host/pc-name (blue)
host_color=$reset$bold$light_blue
## Color of current working directory (light_purple)
directory_color=$reset$light_purple
## Color for other characters (like the arrow)
etc_color=$reset$light_blue
# If last operation did not succeded, add [✗]- to the prompt
#on_error="\$([[ \$? != 0 ]] && echo \"${etc_color}[${at_color}✗${etc_color}]─\")"
on_error="\$( echo \"${etc_color}[${at_color}\$?${etc_color}]─\")"
# The last symbol in prompt ($, for root user: #)
symbol="${reset}${bold}${light_purple}$(if [[ ${EUID} == 0 ]]; then echo '# '; else echo '$ '; fi)"


# Setup the prompt/prefix for linux terminal
PS1="${etc_color}┌─${on_error}[";
PS1+="${username_color}\u"; # \u=Username
PS1+="${at_color}@";
PS1+="${host_color}\h" #\h=Host
PS1+="${etc_color}]-[";
PS1+="${directory_color}\w"; # \w=Working directory
PS1+="${etc_color}]\n└──╼ "; # \n=New Line
PS1+="${symbol}${reset}";

export PS1
