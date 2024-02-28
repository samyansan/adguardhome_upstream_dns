rm /opt/AdGuardHome/upstream_dns_file.txt

curl  "https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/direct-list.txt"  >> /opt/AdGuardHome/upstream_dns_file.txt

sed "s/^full://g;/^regexp:.*$/d;s/^/[\//g;s/$/\/]tls:\/\/dns.alidns.com/g" -i /opt/AdGuardHome/upstream_dns_file.txt
#echo "[/123456.xyz/]tls://dns.alidns.com" >> /opt/AdGuardHome/upstream_dns_file.txt
#echo "[/rfi.fr/]tcp://8.8.8.8" >> /opt/AdGuardHome/upstream_dns_file.txt
#echo "tcp://8.8.8.8" >> /opt/AdGuardHome/upstream_dns_file.txt
#echo "tcp://8.8.4.4" >> /opt/AdGuardHome/upstream_dns_file.txt

echo "https://dns.pub/dns-query" >> /opt/AdGuardHome/upstream_dns_file.txt
echo "https://100284.alidns.com/dns-query" >> /opt/AdGuardHome/upstream_dns_file.txt
echo "tls://doh-62251cfe.dot.pub" >> /opt/AdGuardHome/upstream_dns_file.txt
echo "tls://dot.360.cn" >> /opt/AdGuardHome/upstream_dns_file.txt
echo "tls://1dot1dot1dot1.cloudflare-dns.com" >> /opt/AdGuardHome/upstream_dns_file.txt
