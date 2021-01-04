# !/bin/bash
# Script auto create user SSH

read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (hari): " masaaktif

IP=`curl icanhazip.com`
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "====Informasi SSH Account====" | lolcat
echo -e "====  Premium Akun SSH   ====" | lolcat
echo -e "Host : $IP" | lolcat
echo -e "Port SSH" | lolcat
echo -e "OpenSSH : 143,200,400,1078,8000" | lolcat
echo -e "Dropbear : 44,77,450,550,9000" | lolcat
echo -e "SSL/TLS SSH : 443" | lolcat
echo -e "SSL/TLS OpenSSH : 43,600,700,800,900" | lolcat
echo -e "SSL/TLS Dropbear : 444,540,551,777,9900" | lolcat
echo -e "SSL/TLS SSR SSH : 69" | lolcat
echo -e "BadVPN-UDPGW : 7100,7200,7300" | lolcat
echo -e "Speed Server : 2 Gbps" | lolcat
echo -e "Transfer : 2 TB" | lolcat
echo -e "Username : $Login " | lolcat
echo -e "Password : $Pass" | lolcat
echo -e "-----------------------------" | lolcat
echo -e "Aktif Sampai      : $exp" | lolcat
echo -e "=============================" | lolcat

echo -e "Mod by Sulaiman L" | lolcat
echo -e ""
