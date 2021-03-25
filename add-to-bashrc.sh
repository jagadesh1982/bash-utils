#!/bin/bash

yum install epel-release -y
yum update all
yum install-y jq ncdu automake ncurses-devel readline-devel sl mtr unzip gcc pciutils

#Install Hste
git clone https://github.com/dvorka/hstr.git
cd ./build/tarball && ./tarball-automake.sh && cd ../..
./configure && make && make install

/bin/mkdir -p '/usr/local/share/bash-completion/completions'
/bin/install -c -m 644 etc/bash-completion.d/hstr '/usr/local/share/bash-completion/completions'
/usr/local/bin/hstr --show-configuration >> ~/.bashrc
alias hstr="/usr/local/bin/hstr"



cat <<EOT >>  /root/.bashrc 
if [ -f /root/bash-utils/bashrc_utils ]; then
        . /root/bash-utils/bashrc_utils
        export PATH=/root/bash-utils/:$PATH
fi
EOT

