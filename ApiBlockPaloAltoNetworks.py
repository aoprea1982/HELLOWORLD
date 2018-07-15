#!/usr/bin/env python 

import pandevice
import pandevice.firewall 
import pandevice.policies 


# Login info

Hostname = raw_input("Please type the device IP address: ")
Username = raw_input("Please type the username: ")
Password = raw_input("Please type the password: ") 



# Create the firewall object

fw = pandevice.firewall.Firewall(Hostname, Username, Password)

print("\nSystem Info\n")
print fw.op("show system info", xml=True)





# Create the Address Object to be Blocked 

SrcIP = raw_input("Please type the Source IP you want to block: ")
DstIP = raw_input("Please type the Destination IP you want to block: ")

aoSrc = pandevice.objects.AddressObject("BlockedSrcIP", SrcIP)
aoDst = pandevice.objects.AddressObject("BlockedDstIP", DstIP)

fw.add(aoSrc)
fw.add(aoDst)

aoSrc.create()
aoDst.create()


# Define security rule paramaters 

HTTP = ["service-http"]

blocking_rule_params = {
        'name': 'BlockMaliciousTraffic',
        'description': 'Prevent endpoint infection',
        'fromzone': 'Trust',
        'tozone': 'Untrust',
        'source': aoSrc,
        'destination': aoDst,
        'service': HTTP,
        'action': 'deny',
        'log_end': True,
    }

# Create the security rule 


rulebase = pandevice.policies.Rulebase() 
fw.add(rulebase) 


blockingRule = pandevice.policies.SecurityRule(**blocking_rule_params)
rulebase.add(blockingRule)
print('Creating rule...')
blockingRule.create()
print('Done!')


# Commit the changes

fw.commit(sync=True)



