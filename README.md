# 论如何翻墙
```
Severspeeder:
        wget http://ftp.scientificlinux.org/linux/scientific/6.6/x86_64/updates/security/kernel-2.6.32-504.3.3.el6.x86_64.rpm
        rpm -ivh kernel-2.6.32-504.3.3.el6.x86_64.rpm --force
        reboot

        wget --no-check-certificate -O appex.sh https://raw.githubusercontent.com/0oVicero0/serverSpeeser_Install/master/appex.sh && chmod +x appex.sh && bash appex.sh install
        /appex/bin/serverSpeeder.sh restart
        yyy

    Linode VPS as a VPN:
        System: CentOS 6 x64
        change kernel version to 4.4.0-x86-64-linode63

        rpm -iUvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
        yum update -y
        yum -y install docker-io
        service docker start

        docker run --name shadowsock1 -p 443:8989 -ti centos:6 /bin/bash
            yum update -y && yum install -y wget net-tools vim
            wget https://raw.githubusercontent.com/XetRAHF/shadowsocks_install/master/shadowsocks-all.sh
            bash ./shadowsocks-all.sh
            vi /etc/rc.local 
            > Appending following lines to the end of file:
                echo 3 > /proc/sys/net/ipv4/tcp_fastopen
            
            vi /etc/sysctl.conf
            > Appending following lines to the end of file:
                net.ipv4.tcp_fastopen = 3
            
            vi /etc/shadowsocks-r/config.json
            > Change to true enable fast open

            /etc/init.d/shadowsocks-r restart
        
        docker run --name shadowsock2 -p 80:8989 -ti centos:6 /bin/bash
            yum update -y && yum install -y wget net-tools vim
            wget https://raw.githubusercontent.com/XetRAHF/shadowsocks_install/master/shadowsocks-all.sh
            bash ./shadowsocks-all.sh
            vi /etc/rc.local 
            > Appending following lines to the end of file:
                echo 3 > /proc/sys/net/ipv4/tcp_fastopen
            
            vi /etc/sysctl.conf
            > Appending following lines to the end of file:
                net.ipv4.tcp_fastopen = 3
            
            vi /etc/shadowsocks-r/config.json
            > Change to true enable fast open

            /etc/init.d/shadowsocks-r restart

        docker run --name shadowsock3 -p 20:8989 -ti centos:6 /bin/bash
            yum update -y && yum install -y wget net-tools vim
            wget https://raw.githubusercontent.com/XetRAHF/shadowsocks_install/master/shadowsocks-all.sh
            bash ./shadowsocks-all.sh
            vi /etc/rc.local 
            > Appending following lines to the end of file:
                echo 3 > /proc/sys/net/ipv4/tcp_fastopen
            
            vi /etc/sysctl.conf
            > Appending following lines to the end of file:
                net.ipv4.tcp_fastopen = 3
            
            vi /etc/shadowsocks-r/config.json
            > Change to true enable fast open

            /etc/init.d/shadowsocks-r restart

        docker run --name shadowsock4 -p 21:8989 -ti centos:6 /bin/bash
            yum update -y && yum install -y wget net-tools vim
            wget https://raw.githubusercontent.com/XetRAHF/shadowsocks_install/master/shadowsocks-all.sh
            bash ./shadowsocks-all.sh
            vi /etc/rc.local 
            > Appending following lines to the end of file:
                echo 3 > /proc/sys/net/ipv4/tcp_fastopen
            
            vi /etc/sysctl.conf
            > Appending following lines to the end of file:
                net.ipv4.tcp_fastopen = 3
            
            vi /etc/shadowsocks-r/config.json
            > Change to true enable fast open

            /etc/init.d/shadowsocks-r restart
        
    Test it before use it!
        docker exec -ti e763b2ab011a /bin/bash
        docker exec -ti 944b08625cec /bin/bash
        docker exec -ti 6c5427f92cb1 /bin/bash
        docker exec -ti bc6b9971acbe /bin/bash
 ```
