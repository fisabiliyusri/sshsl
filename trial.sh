# !/bin/bash
# Script auto create trial user SSH
# yg akan expired setelah 1 hari
# modified by White-vps.com

IP=`curl icanhazip.com`

Login=trial`</dev/urandom tr -dc X-Z0-9 | head -c4`
hari="1"
Pass=`</dev/urandom tr -dc a-f0-9 | head -c9`

useradd -e `date -d "$hari days" +"%Y-%m-%d"` -s /bin/false -M $Login
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "====Trial SSH Account===="
echo -e "====Informasi SSH Account===="
echo -e "====  Trial  Akun  SSH   ===="
echo -e "Host              : $IP" 
echo -e "Port OpenSSH      : 22,143"
echo -e "Dropbear          : 44,77"
echo -e "SSL/TLS           : 443"
echo -e "SSL/TLS OpenSSH   : 43"
echo -e "SSL/TLS Dropbear  : 222,777,444"
echo -e "SSL/TLS SSR       : 69"
#echo -e "Squid             : 8888,3128,9090,4343"
echo -e "Speed Server      : 2 Gbps"
echo -e "Transfer          : 2 TB"
echo -e "Username          : $Login "
echo -e "Password          : $Pass"
echo -e "========================="
echo -e "Mod by Sulaiman L SSH"
echo -e ""
