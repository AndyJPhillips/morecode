#!/usr/bin/python

import re

re_valid_ip = re.compile('^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$')
re_invalid_ip = re.compile('^(0|127)\..*$')

for line in open("ipfile.txt",'r'):
	re_match_valid_ip = re_valid_ip.match(line)
	re_match_invalid_ip = re_invalid_ip.match(line)
	if re_match_valid_ip:
		if re_match_invalid_ip is None :
			print line
