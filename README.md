# 科学上网的最终秘籍
## 致谢
* Shadowsocks 和 ShadowsocksR作者
![Shadowsock Logo](https://raw.githubusercontent.com/XetRAHF/TiZi_AcrossTheGreatWall/d1f812d0caabe9c0d4a4b7d9e456ef46671f2729/imgs/shadowsocks.png)

## 选翻墙服务器

## 买翻墙服务器

## 配置翻墙服务器
### 启动服务器
### 更换服务器内核
```
wget http://ftp.scientificlinux.org/linux/scientific/6.6/x86_64/updates/security/kernel-2.6.32-504.3.3.el6.x86_64.rpm
rpm -ivh kernel-2.6.32-504.3.3.el6.x86_64.rpm --force
reboot
```
### 启动瑞速
### 安装Docker

## 配置翻墙服务器防火墙（高手装用，非必需）

# 服务器配置好了，我们现在在电脑上配置全局翻墙
## 手机
* 从ishadow下载(这里是ishadow的官网：`https://ss.ishadowx.net`)：
	* 安卓版本：`http://160.16.231.71/ssr-3.3.5.apk`
	* IOS版本：`http://dwz.cn/5vCPvz`
* 从本库下载：
	* 安卓版本：`https://github.com/XetRAHF/TiZi_AcrossTheGreatWall/blob/91e5f3d04afcf72db83781d9a6be22dbe50b68a4/ssr-3.3.5.apk?raw=true`
* （高手专用）这里是shadowsocksR的源码：
	`https://github.com/shadowsocksr-backup/shadowsocksr`
* （高手专用）这里有shadowsocks的全家桶：
	`https://github.com/teddysun/shadowsocks_install`

	
## 个人PC与Mac
### 安装ShadowsocksR客户端
* 从ishadow下载(这里是ishadow的官网：`https://ss.ishadowx.net`)：
	* Mac版本：`http://160.16.231.71/SSX-NG-R8.dmg`
	* Windows版本：`http://160.16.231.71/ssr-4.1.4-win.7z`
* 从本库下载
	* Mac版本：`https://github.com/XetRAHF/TiZi_AcrossTheGreatWall/blob/91e5f3d04afcf72db83781d9a6be22dbe50b68a4/SSX-NG-R8.dmg?raw=true`
	* Windows版本：`https://github.com/XetRAHF/TiZi_AcrossTheGreatWall/blob/91e5f3d04afcf72db83781d9a6be22dbe50b68a4/ssr-4.1.4-win.zip?raw=true`

# 用Proxifier将我们的ShadowsocksR转换为VPN模式
> 此时ShadowsocksR就和VPN一样了

  
    
### 给常用的程序上代理（程序员）
> 如果您使用proxifier最好也还是再配置代理，那样会更稳

* GIT:
	*  `git config --global http.proxy 'socks5://127.0.0.1:1086'`

* Node Package Manager(NPM):

```
npm config set proxy http://127.0.0.1:1087
npm config set https-proxy http://127.0.0.1:1087
export HTTP_PROXY=http://127.0.0.1:1087
export HTTPS_PROXY=http://127.0.0.1:1087
env http_proxy=http://127.0.0.1:1087
```

* SSH(Tested on Mac OS):
	* `ssh root@128.384.23.32 -o "ProxyCommand=nc -X 5 -x 127.0.0.1:1086 %h %p`
	* `ssh root@目标ip -o "ProxyCommand=nc -X 5 -x 127.0.0.1:1086 %h %p`
* Homebrew:
	* `export ALL_PROXY="127.0.0.1:1087"`

## 为什么这样做是最好的翻墙方案：
* 为什么不使用VPN：
	* PPTP: 约1～2小时即可被防火长城检测出来，然后ip无法访问
	* L2tp: 成熟的配置库非常少，连接不稳定
	* IPsec: 编译时间长，会被检测出来同时被限速
	* 总结： 以上三种方法都有一个巨大的缺点，端口是固定的，流量特征明显，速度缓慢，连接容易断线

* 为什么不使用SS（注意不是SSR）：
	* 某大学学生发文使用深度学习方法学习了SS流量特征，可以很精确检测出来SS并进行限速，论文地址如下：`https://github.com/shadowsocks/shadowsocks/issues/540`

* 为什么不使用XX-Net（`https://github.com/XX-net/XX-Net`）：
	* 无法扫描ip
	* 速度慢
	* 每隔1分钟ip就会被切换一次，导致连接中断
	* 每个谷歌账号最多12G左右流量
	* 需要谷歌账号，并激活
	* 部署ip速度慢
	
* 为什么不使用OpenVPN（TCP与UDP）：
	* 速度慢
	* 服务器部署时证书生成速度慢
	* 即使是TCP版本，同样会被检测出来同时被防火长城限速
	* Mac客户端Tunnelblick收费
	* 经测试使用TCP版本时（Tunnelblick）无法播放youtube视频

* 为什么不使用蓝灯（`https://github.com/getlantern/lantern`）:
	* 速度慢
	* 免费版本已经在大多数地区无法使用

* 为什么不使用expressVPN(`https://www.expressvpn.com/`)
	* 高昂的价格
	* 速度慢

## 几件一定不要去做的事：
* 省钱：翻墙工具每个月花费70块钱左右是最好的，也就一天的饭钱，花吧，值得来。
* 使用国内云服务器翻墙：（例如： 阿里云， 京东云等）（阿里云国际版的服务条款已经写到如果用户用来搭建互联网穿透服务，封号并禁用你的VISA卡）
* 使用国内聊天工具(如QQ群)将服务器信息分享给好友：（自然语言处理器会检测出来的）
* 使用QQ群分享服务器给好朋友：（同学，qq群不算用户隐私，会被查的）
* 只搭建一个梯子服务器：即使你的服务器是SSR加密等级非常高，甚至是嵌套SSR，你也需要准备两个以上的梯子服务器，因为出口线路也会发生不稳定的情况
* 卖SSR以及其他翻墙服务器：（后果极为严重，请大家不要尝试）`http://www.ajxxgk.jcy.cn/html/20170419/2/5261188.html`

## 原理问题：
* Shadowsocks与VPN之间的关系：
	* 参考：[Shadowsocks与VPN的区别](http://blog.csdn.net/guyue35/article/details/50932177)

* Shadowsocks与ShadowsocksR的关系：
	* 参考：[Shadowsocks与ShadowsocksR的关系](https://www.librehat.com/about-shadowsocks-r-and-the-security-of-shadowsocks/)

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
