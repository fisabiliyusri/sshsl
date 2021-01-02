/etc/init.d/ssh restart
/etc/init.d/dropbear restart
/etc/init.d/stunnel4 restart
/etc/init.d/squid restart
/etc/init.d/nginx restart
/etc/init.d/php5.6-fpm restart
/etc/init.d/openvpn restart
/etc/init.d/shadowsocks-r restart
/etc/init.d/shadowsocks-python restart
service cron restart
service nginx start
service php-fpm start
service vnstat restart
service openvpn restart
service snmpd restart
# /etc/init.d/mysql restart
screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 > /dev/null &
screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 > /dev/null &
screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 > /dev/null &
