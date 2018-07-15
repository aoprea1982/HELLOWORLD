#!/usr/bin/env python
# coding=utf-8
"""
    Fortinet Fortigate Test
"""
import logging
from sys import argv
import os 
import sys
import multiprocessing 

from netmiko import ConnectHandler

logging.basicConfig(level=logging.DEBUG)
logger = logging.getLogger('global')

def Mconnect(newstdin):
    sys.stdin = newstdin
    devices = []


    IPs = []
    i=0
    while 1:
        i+=1
        ip = raw_input("IP 入力:" + "\n")
        if ip == "": 
            break
        IPs.append(ip)

    print IPs

    for ip in IPs:
        fortinet = {
        'device_type': 'fortinet',
        'ip':   ip,
        'username': 'admin',
        'password': 'isec'
        }
    devices.append(fortinet)


    myList = [] 
    i=0
    while 1: 
        i+=1
        command = raw_input("コマンド入力:" + "\n")
        if command == "":
            break
        myList.append(command)


    print myList


    for device in devices:
        net_connect = ConnectHandler(**device)
        output = net_connect.send_config_set(myList)
        
def main():
    
    newstdin = os.fdopen(os.dup(sys.stdin.fileno()))
    p = multiprocessing.Process(target=Mconnect, args=(newstdin,))
    p.start()
    p.join()

if __name__ == '__main__':

    main() 
