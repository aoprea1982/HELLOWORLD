#!/usr/bin/env python 

from pprint import pprint
from jnpr.junos import Device
from jnpr.junos.utils.config import Config

dev = Device(host='192.168.10.190', user='user1', password='password').open()

with Config(dev, mode='private') as cu:
      cu.load('set applications application HTTP protocol tcp destination-port http application-protocol http', format='set')
      cu.load('set security address-book Book1 address Address1 192.168.5.5', format='set')
      cu.load('set security address-book Book1 address-set Set1 address Address1', format='set')
      cu.load('set security address-book Book1 attach zone trust', format='set')
      cu.load('set security address-book Book2 address Address2 172.30.1.5', format='set')
      cu.load('set security address-book Book2 address-set Set2 address Address2', format='set')
      cu.load('set security address-book Book2 attach zone untrust', format='set')
      cu.load('set security policies from-zone trust to-zone untrust policy TsuAny then reject', format='set')
      cu.load('set security policies from-zone trust to-zone untrust policy TsuAny match source-address Address1 destination-address Address2 application HTTP', format='set')  
      cu.load('insert security policies from-zone trust to-zone untrust policy TsuAny before policy default-permit', format='set') 
      cu.commit() 


