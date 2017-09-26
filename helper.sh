mkdir vpninstall && cd vpninstall
apt-get update  
apt-get -y install vim libssl-dev curl wget gcc
wget https://raw.githubusercontent.com/XetRAHF/setup-simple-pptp-vpn/master/setup.sh
sh setup.sh -u zxz -p 1234567890
rm -rf setup.sh
service pptpd restart
echo PPTP setup Finished
wget https://raw.githubusercontent.com/XetRAHF/ShadowsocsAt8964/master/ipsec_1.sh
sh ipsec_1.sh
wget https://raw.githubusercontent.com/XetRAHF/ShadowsocsAt8964/master/ipsec_2.sh
sh ipsec_2.sh
cd ..
rm -rf vpninstall
/etc/init.d/ipsec-assist restart
echo IPSEC VPN Finished
mkdir vpninstall && cd vpninstall
apt-get update
apt-get install -y wget
wget https://raw.githubusercontent.com/XetRAHF/ShadowsocsAt8964/master/deploy.sh
bash ./deploy.sh
echo Your can now use it 
