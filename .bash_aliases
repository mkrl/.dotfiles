# Node http-server
alias s='http-server'

# Self-explanatory
alias root='sudo su'

# Yeah
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Bulk resize images in current dir to fixed width with imagemagick
# width is passed as an argument
smol(){
if [ -z "$1" ]
  then
    echo "Usage: smol [width]. Resize everything that can be resized in the current folder to a fixed width."
    return 1
fi
mkdir smol
convert "*[$1x]" -set filename:base "%[base]" "smol/%[filename:base]_smol.jpg"
}

# Flush dns cache
dnsf(){
sudo systemd-resolve --flush-caches
sudo systemd-resolve --statistics
}
