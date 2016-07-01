#!/usr/bin/python

import re
from subprocess import call

re_valid_ip = re.compile('^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$')
re_invalid_ip = re.compile('^(0|127)\..*$')

for ip in open("ipfile.txt",'r'):
	re_match_valid_ip = re_valid_ip.match(ip)
	re_match_invalid_ip = re_invalid_ip.match(ip)
	if re_match_valid_ip:
		if re_match_invalid_ip is None :
			call(['ssh', str(ip), "netstat -tulpn | grep :80"])