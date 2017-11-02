# 论如何翻墙

## 给常用的程序上代理
* GIT:
`git config --global http.proxy 'socks5://127.0.0.1:1086'`
* Node Package Manager(NPM):
```
npm config set proxy http://127.0.0.1:1087
npm config set https-proxy http://127.0.0.1:1087
export HTTP_PROXY=http://127.0.0.1:1087
export HTTPS_PROXY=http://127.0.0.1:1087
env http_proxy=http://127.0.0.1:1087
```
## 常见问题：
* 为什么不使用VPN
 > PPTP: 约1～2小时即可被防火长城检测出来，然后ip无法访问
 > L2tp: 成熟的配置库非常少，连接不稳定
 > IPsec: 编译时间长，会被检测出来同时被限速
 > 总结： 以上三种方法都有一个巨大的缺点，端口是固定的，流量特征明显，速度缓慢，连接容易断线
* 为什么不使用SS
        > 北京某大学学生发文使用深度学习方法学习了SS流量特征，可以很精确检测出来SS并进行限速
        > 论文地址如下：`https://github.com/shadowsocks/shadowsocks/issues/540`

## 几件一定不要做的事：
* 省钱：翻墙工具每个月花费70块钱左右是最好的，也就一天的饭钱，花吧，值得来。
* 使用国内云服务器翻墙：（例如： 阿里云， 京东云等）（阿里云国际版的服务条款已经写到如果用户用来搭建互联网穿透服务，封号并禁用你的VISA卡）
* 使用国内聊天工具将服务器信息分享给好友：（自然语言处理器会检测出来的）
* 只搭建一个梯子服务器：即使你的服务器是SSR加密等级非常高，甚至是嵌套SSR，你也需要准备两个以上的梯子服务器，因为出口线路也会发生不稳定的情况
* 卖SSR以及其他翻墙服务器：（后果极为严重，请大家不要尝试）`http://www.ajxxgk.jcy.cn/html/20170419/2/5261188.html`

## 最后祝大家办公愉快
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
