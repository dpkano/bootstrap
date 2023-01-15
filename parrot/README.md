
```
set color to white on black
add space to $ (in .bashrc)
```

```
sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y
```

to tools.list:

```
netcat
ncat
nmap
wireshark
tcpdump
hashcat
ffuf
gobuster
hydra
zaproxy
proxychains
sqlmap
metasploit-framework
python2.7
python3
spiderfoot
theharvester
remmina
rdesktop
libimage-exiftool-perl
curl
seclists
testssl.sh
git
vim
tmux
```

```
sudo apt install $(cat tools.list | tr "\n" " ") -y
mkdir -p git-repos
```

crackmapexec: 
```
wget https://github.com/Porchetta-Industries/CrackMapExec/releases/latest/download/cme-ubuntu-latest-3.9.zip -O temp.zip && unzip temp.zip -d $HOME/.local/bin && rm temp.zip && chmod +x $HOME/.local/bin/cme
```

radare2:
```
git clone https://github.com/radareorg/radare2 $HOME/git-repos/radare2 && $HOME/git-repos/radare2/sys/install.sh
```

xfreerdp
```
# (First choose NO (Do not keep the current version), then choose YES (to downgrade), than confirm: YES)
sudo apt-get install aptitude && sudo aptitude install freerdp2-x11 
```

```
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git
```

```
mkdir -p $HOME/.local/share/fonts
wget https://github.com/powerline/fonts/raw/master/DejaVuSansMono/DejaVu%20Sans%20Mono%20for%20Powerline.ttf -O $HOME/.local/share/fonts/DejaVuSansMonoforPowerline.ttf
# Choose this font for the fixed width and set the font size 15
```

```
wget https://github.com/dpkano/bootstrap/blob/master/parrot/.tmux.conf -O $HOME/.tmux.conf
mkdir -p $HOME/.tmux
wget https://github.com/dpkano/bootstrap/blob/master/parrot/window-format.tmux -O $HOME/.tmux/window-format.tmux
# for k8s: https://raw.githubusercontent.com/jonmosco/kube-tmux/master/kube.tmux
```