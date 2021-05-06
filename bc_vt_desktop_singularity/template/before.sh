echo starting before.sh, not a lot to see here

# Export the module function if it exists
[[ $(type -t module) == "function" ]] && export -f module
hostname
pwd

