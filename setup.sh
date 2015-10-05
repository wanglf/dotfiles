#!/bin/sh

echo "yourhostname" > /etc/hostname

yum -y install epel-release 
yum -y install vim git ntp mlocate net-tools iptables-services
yum -y install gcc fortune-mod python-pip

pip install cpplint
pip install Pygments

mv /etc/localtime /etc/localtime.bak
ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

sed -i "s/SELINUX=enforcing/SELINUX=disabled/g" /etc/selinux/config
sed -i "s/#Port 22/Port 60022/g" /etc/ssh/sshd_config
sed -i "s/#UseDNS yes/UseDNS no/g" /etc/ssh/sshd_config
sed -i "s/--dport 22/--dport 60022/g" /etc/sysconfig/iptables

service sshd restart
service iptables start
service ntpd start
chkconfig iptables on
chkconfig ntpd on

mkdir -p /opt/git/
cd /opt/git/
git clone git@github.com:wanglf/dotfiles.git dotfiles.git

git clone git@github.com:robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
ln -s /opt/git/dotfiles.git/ohmyzsh/.zshrc ~/.zshrc
chsh -s /bin/zsh

rm -rf ~/.vimrc
ln -s /opt/git/dotfiles.git/vim/.vimrc ~/.vimrc
mkdir -p ~/.vim/bundle && cd ~/.vim/bundle
git clone git@github.com:gmarik/Vundle.vim.git
#open vim, issue command :PluginInstall

rm -rf ~/.tmux.conf
ln -s /opt/git/dotfiles.git/tmux/.tmux.conf ~/.tmux.conf

rm -rf ~/.gitconfig
ln -s /opt/git/dotfiles.git/git/.gitconfig ~/.gitconfig

rm -rf ~/.emacs.d
rm -rf ~/.emacs
ln -s /opt/git/dotfiles.git/emacs.d ~/.emacs.d

rm -rf ~/.ssh/config
mkdir -p ~/.ssh
ln -s /opt/git/dotfiles.git/ssh/config ~/.ssh/

ln -s /opt/git/dotfiles.git/fortune/vocabulary /usr/share/games/fortune/
crontab -l > ~/mycron
echo "0 * * * * cd /usr/share/games/fortune && /usr/sbin/strfile vocabulary vocabulary.dat > /dev/null 2>&1" >> ~/mycron
crontab ~/mycron
rm ~/mycron
