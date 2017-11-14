#!/bin/bash
cp -f port-tester-ping-tcp.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable port-tester-ping-tcp.service
systemctl start port-tester-ping-tcp.service
iptables -t nat -A PREROUTING -p tcp --dport 1:65535 -j REDIRECT --to-ports 7777