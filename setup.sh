#!/bin/bash
cp port-tester-ping-tcp.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable port-tester-ping-tcp.service
systemctl start port-tester-ping-tcp.service