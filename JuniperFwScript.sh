#!/usr/bin/expect -f 

set COMMENTED_OUT {

#Usage

   ############################################################################################################################################################
   JuniperFW.sh srcIpAddr dstIpAddr srcSnAddr dstSnAddr srcPortAddr dstPortAddr serviceAddr protocolAddr ip username password

   where the ending 3 parameters (ip username password) are called <profiled-params>

   Example:

   JuniperFW.sh '192.168.5.5' '' '' '' '' '443' '' '6' <profiled-params>      # Block access from IP address 192.168.5.5 anywhere to port 443 with protocol TCP
   ############################################################################################################################################################

$argv 0 -> 192.168.5.5           "srcIpAddr" 

$argv 1 -> Y.Y.Y.Y               "dstIpAddr"

$argv 2 -> 192.168.5.0/24        "srcSnAddr"

$argv 3 -> X.X.X.X               "dstSnAddr"

$argv 4 -> srcPort               "srcPortAddr"  Range [0-65535]
  Possible completions:
  <range>              Range of values
  afs                  AFS
  bgp                  Border Gateway Protocol
  biff                 Biff/Comsat
  bootpc               Bootstrap protocol client
  bootps               Bootstrap protocol server
  cmd                  UNIX rsh
  cvspserver           CVS pserver
  dhcp                 Dynamic Host Configuration Protocol
  domain               Domain Name System (DNS)
  eklogin              Encrypted Kerberos rlogin
  ekshell              Encrypted Kerberos rsh
  exec                 UNIX rexec
  finger               Finger
  ftp                  FTP
  ftp-data             FTP data
  http                 Hypertext Transfer Protocol
  https                Secure HTTP
  ident                Ident
  imap                 Internet Message Access Protocol
  kerberos-sec         Kerberos Security
  klogin               Kerberos rlogin
  kpasswd              Kerberos passwd
  krb-prop             Kerberos database propagation
  krbupdate            Kerberos database update
  kshell               Kerberos rsh
  ldap                 Lightweight Directory Access Protocol
  ldp                  Label Distribution Protocol
  login                UNIX rlogin
  mobileip-agent       Mobile IP agent
  mobilip-mn           Mobile IP MN
  msdp                 Multicast Source Discovery Protocol
  netbios-dgm          NetBIOS DGM
  netbios-ns           NetBIOS name service
  netbios-ssn          NetBIOS session service
  nfsd                 Network File System
  nntp                 Network News Transport Protocol
  ntalk                New Talk
  ntp                  Network Time Protocol
  pop3                 Post Office Protocol 3
  pptp                 Point-to-Point Tunneling Protocol
  printer              Printer
  radacct              RADIUS accounting
  radius               RADIUS authentication
  rip                  Routing Information Protocol
  rkinit               Kerberos remote kinit
  smtp                 Simple Mail Transfer Protocol
  snmp                 Simple Network Management Protocol
  snmptrap             SNMP traps
  snpp                 Simple paging protocol
  socks                Socks
  ssh                  Secure shell
  sunrpc               Sun Microsystems remote procedure call
  syslog               System log
  tacacs               TACACS or TACACS+
  tacacs-ds            TACACS-DS
  talk                 UNIX Talk
  telnet               Telnet
  tftp                 Trivial FTP
  timed                UNIX time daemon
  who                  UNIX rwho
  xdmcp                X Display Manager Control Protocol
  zephyr-clt           Zephyr serv-hm connection
  zephyr-hm            Zephyr hostmanager
  zephyr-srv           Zephyr server



$argv 5 -> 443                   "dstPortAddr"  Range [0-65535]
  Possible completions:
  <range>              Range of values
  afs                  AFS
  bgp                  Border Gateway Protocol
  biff                 Biff/Comsat
  bootpc               Bootstrap protocol client
  bootps               Bootstrap protocol server
  cmd                  UNIX rsh
  cvspserver           CVS pserver
  dhcp                 Dynamic Host Configuration Protocol
  domain               Domain Name System (DNS)
  eklogin              Encrypted Kerberos rlogin
  ekshell              Encrypted Kerberos rsh
  exec                 UNIX rexec
  finger               Finger
  ftp                  FTP
  ftp-data             FTP data
  http                 Hypertext Transfer Protocol
  https                Secure HTTP
  ident                Ident
  imap                 Internet Message Access Protocol
  kerberos-sec         Kerberos Security
  klogin               Kerberos rlogin
  kpasswd              Kerberos passwd
  krb-prop             Kerberos database propagation
  krbupdate            Kerberos database update
  kshell               Kerberos rsh
  ldap                 Lightweight Directory Access Protocol
  ldp                  Label Distribution Protocol
  login                UNIX rlogin
  mobileip-agent       Mobile IP agent
  mobilip-mn           Mobile IP MN
  msdp                 Multicast Source Discovery Protocol
  netbios-dgm          NetBIOS DGM
  netbios-ns           NetBIOS name service
  netbios-ssn          NetBIOS session service
  nfsd                 Network File System
  nntp                 Network News Transport Protocol
  ntalk                New Talk
  ntp                  Network Time Protocol
  pop3                 Post Office Protocol 3
  pptp                 Point-to-Point Tunneling Protocol
  printer              Printer
  radacct              RADIUS accounting
  radius               RADIUS authentication
  rip                  Routing Information Protocol
  rkinit               Kerberos remote kinit
  smtp                 Simple Mail Transfer Protocol
  snmp                 Simple Network Management Protocol
  snmptrap             SNMP traps
  snpp                 Simple paging protocol
  socks                Socks
  ssh                  Secure shell
  sunrpc               Sun Microsystems remote procedure call
  syslog               System log
  tacacs               TACACS or TACACS+
  tacacs-ds            TACACS-DS
  talk                 UNIX Talk
  telnet               Telnet
  tftp                 Trivial FTP
  timed                UNIX time daemon
  who                  UNIX rwho
  xdmcp                X Display Manager Control Protocol
  zephyr-clt           Zephyr serv-hm connection
  zephyr-hm            Zephyr hostmanager
  zephyr-srv           Zephyr server


$argv 6 ->                       "serviceAddr"
  Possible completions:
  dns                  Domain Name Service
  ftp                  File Transfer Protocol
  ftp-data             File Transfer Protocol Data Session
  gprs-gtp-c           GPRS Tunneling Control Plane
  gprs-gtp-u           GPRS Tunneling User Plane
  gprs-gtp-v0          GPRS Tunneling Version 0
  gprs-sctp            GPRS Stream Control Protocol
  http                 Hypertext Transfer Protocol
  https                Hypertext Transfer Protocol
  ignore               Ignore application type
  ike-esp-nat          IKE/ESP with NAT
  imap                 Internet Mail Access Protocol
  mgcp-ca              MGCP-CA
  mgcp-ua              MGCP-UA
  ms-rpc               Microsoft RPC
  pptp                 Point-to-Point Tunneling Protocol
  q931                 Q.931
  ras                  RAS
  realaudio            RealAudio
  rsh                  Remote Shell
  rtsp                 Real Time Streaming Protocol
  sccp                 Skinny Client Control Protocol
  sip                  Session Initiation Protocol
  smtp                 Simple Mail Transfer Protocol
  sqlnet-v2            Oracle SQL*Net Version 2
  ssh                  Secure Shell Protocol
  sun-rpc              Sun Microsystems RPC
  talk                 Talk Program
  telnet               Telnet Protocol
  tftp                 Trivial File Transfer Protocol

$argv 7 -> 6                     "protocolAddr" 
  Possible completions:
  <number>             Numeric protocol value (0 .. 255)
  ah                   IP Security authentication header
  egp                  Exterior gateway protocol
  esp                  IPSec Encapsulating Security Payload
  gre                  Generic routing encapsulation
  icmp                 Internet Control Message Protocol
  icmp6                Internet Control Message Protocol Version 6
  igmp                 Internet Group Management Protocol
  ipip                 IP in IP
  ospf                 Open Shortest Path First
  pim                  Protocol Independent Multicast
  rsvp                 Resource Reservation Protocol
  sctp                 Stream Control Transmission Protocol
  tcp                  Transmission Control Protocol
  udp                  User Datagram Protocol


$argv 8 -> 192.168.10.190        "JuniperFwIp"

$argv 9 -> gcx                   "loginUsername"

$argv 10 -> password             "loginPassword"

$argv 11 -> default-permit       "TopPolicy"

} 


set timeout 5
set srcIpAddr        [lindex $argv 0];
set dstIpAddr        [lindex $argv 1];
set srcSnAddr        [lindex $argv 2];
set dstSnAddr        [lindex $argv 3];
set srcPortAddr      [lindex $argv 4];
set dstPortAddr      [lindex $argv 5];
set serviceAddr      [lindex $argv 6];
set protocolAddr     [lindex $argv 7];
set ip               [lindex $argv 8];
set username         [lindex $argv 9];
set password         [lindex $argv 10];
set TopPolicy        [lindex $argv 11];
set Any              "any"


#SSH login

spawn ssh -o StrictHostKeyChecking=no $username@$ip

expect "Password: " 
send   "$password\r"


#Enter configuration mode 

expect ">"
send   "configure\r"



#Appli creation 

if { $srcPortAddr != "" && $dstPortAddr != "" && $protocolAddr != "" && $serviceAddr != "" } { 
expect "#" 
send   "set applications application MendelAppli protocol $protocolAddr source-port $srcPortAddr destination-port $dstPortAddr application-protocol $serviceAddr\r"
expect "#" 

} elseif { $srcPortAddr == "" && $dstPortAddr != "" && $protocolAddr != "" && $serviceAddr != "" } {
expect "#"
send   "set applications application MendelAppli protocol $protocolAddr destination-port $dstPortAddr application-protocol $serviceAddr\r"
expect "#"

} elseif {  $srcPortAddr == "" && $dstPortAddr == "" && $protocolAddr != "" && $serviceAddr != "" } { 
expect "#" 
send   "set applications application MendelAppli protocol $protocolAddr application-protocol $serviceAddr\r"
expect "#"

} elseif {  $srcPortAddr == "" && $dstPortAddr == "" && $protocolAddr != "" && $serviceAddr == "" } {
expect "#"
send   "set applications application MendelAppli protocol $protocolAddr\r"
expect "#"

} elseif {  $srcPortAddr != "" && $dstPortAddr == "" && $protocolAddr != "" && $serviceAddr != "" } {
expect "#"
send   "set applications application MendelAppli protocol $protocolAddr source-port $srcPortAddr application-protocol $serviceAddr\r""
expect "#"

} elseif {  $srcPortAddr == "" && $dstPortAddr != "" && $protocolAddr != "" && $serviceAddr != "" } {
expect "#"
send   "set applications application MendelAppli protocol $protocolAddr destination-port $dstPortAddr application-protocol $serviceAddr\r""
expect "#"

} elseif {  $srcPortAddr != "" && $dstPortAddr == "" && $protocolAddr != "" && $serviceAddr == "" } {
expect "#"
send   "set applications application MendelAppli protocol $protocolAddr source-port $srcPortAddr\r"
expect "#"

} elseif {  $srcPortAddr == "" && $dstPortAddr != "" && $protocolAddr != "" && $serviceAddr != "" } {
expect "#"
send   "set applications application MendelAppli protocol $protocolAddr destination-port $dstPortAddr application-protocol $serviceAddr\r""
expect "#"

} elseif {  $srcPortAddr != "" && $dstPortAddr == "" && $protocolAddr != "" && $serviceAddr != "" } {
expect "#"
send   "set applications application MendelAppli protocol $protocolAddr source-port $srcPortAddr application-protocol $serviceAddr\r"
expect "#"

} elseif {  $srcPortAddr == "" && $dstPortAddr != "" && $protocolAddr != "" && $serviceAddr == "" } {
expect "#"
send   "set applications application MendelAppli protocol $protocolAddr destination-port $dstPortAddr\r"
expect "#"

} elseif {  $srcPortAddr != "" && $dstPortAddr != "" && $protocolAddr == "" && $serviceAddr != "" } {
expect "#"
send   "set applications application MendelAppli protocol tcp source-port $srcPortAddr destination-port $dstPortAddr application-protocol $serviceAddr\r"
expect "#"

} elseif {  $srcPortAddr != "" && $dstPortAddr == "" && $protocolAddr == "" && $serviceAddr != "" } {
expect "#"
send   "set applications application MendelAppli protocol tcp source-port $srcPortAddr application-protocol $serviceAddr\r"
expect "#"

} elseif {  $srcPortAddr != "" && $dstPortAddr != "" && $protocolAddr == "" && $serviceAddr == "" } {
expect "#"
send   "set applications application MendelAppli protocol tcp source-port $srcPortAddr destination-port $dstPortAddr\r"
expect "#"

} elseif {  $srcPortAddr == "" && $dstPortAddr != "" && $protocolAddr == "" && $serviceAddr != "" } {
expect "#"
send   "set applications application MendelAppli protocol tcp destination-port $dstPortAddr application-protocol $serviceAddr\r"
expect "#"

} elseif {  $srcPortAddr == "" && $dstPortAddr == "" && $protocolAddr == "" && $serviceAddr != "" } {
expect "#"
send   "set applications application MendelAppli protocol tcp  application-protocol $serviceAddr\r"
expect "#"

} elseif {  $srcPortAddr != "" && $dstPortAddr == "" && $protocolAddr == "" && $serviceAddr == "" } {
expect "#"
send   "set applications application MendelAppli protocol tcp source-port $srcPortAddr\r"
expect "#"

} elseif {  $srcPortAddr == "" && $dstPortAddr != "" && $protocolAddr == "" && $serviceAddr == "" } {
expect "#"
send   "set applications application MendelAppli protocol tcp destination-port $dstPortAddr\r"
expect "#"

} elseif {  $srcPortAddr == "" && $dstPortAddr == "" && $protocolAddr == "" && $serviceAddr == "" } {
expect "#"
send   "set applications application MendelAppli protocol tcp\r"
expect "#"


} else {
}


sleep 1

#SrcAddress book creation 

if { $srcIpAddr != "" } { 
 
send   "set security address-book MendelBookSrc address MendelAddressSrc $srcIpAddr\r"
expect "#"
send   "set security address-book MendelBookSrc address-set MendelSetSrc address MendelAddressSrc\r"
expect "#"
send   "set security address-book MendelBookSrc attach zone trust\r"
expect "#"
send   "show security address-book\r"
expect "#"

} else {       
}

#SrcSubnetCreation 

if { $srcSnAddr != "" } { 

send   "set security address-book MendelBookSrcSn address MendelAddressSrcSn wildcard-address $srcSnAddr\r"
expect "#"
send   "set security address-book MendelBookSrcSn address-set MendelSetSrcSn address MendelAddressSrcSn\r"
expect "#"
send   "set security address-book MendelBookSrcSn attach zone trust\r"
expect "#"
send   "show security address-book\r"
expect "#"

} else {
}

sleep 1

#DstAddress book creation

if { $dstIpAddr != "" } { 

send   "set security address-book MendelBookDst address MendelAddressDst $dstIpAddr\r"
expect "#"
send   "set security address-book MendelBookDst address-set MendelSetDst address MendelAddressDst\r"
expect "#"
send   "set security address-book MendelBookDst attach zone untrust\r"
expect "#"
send   "show security address-book\r"
expect "#"

} else {
}

sleep 1


#DstSubnetCreation 

if { $dstSnAddr != "" } { 

send   "set security address-book MendelBookDstSn address MendelAddressDstSn wildcard-address $dstSnAddr\r"
expect "#"
send   "set security address-book MendelBookDstSn address-set MendelSetDstSn address MendelAddressDstSn\r"
expect "#"
send   "set security address-book MendelBookDstSn attach zone untrust\r"
expect "#"
send   "show security address-book\r"
expect "#"

} else {
}

#Security policy creation 

if { $srcIpAddr != "" && $dstIpAddr != "" && $srcSnAddr == "" && $dstSnAddr == "" } {
send   "set security policies from-zone trust to-zone untrust policy MendelBlockPolicy then reject\r"
expect "#"
send   "set security policies from-zone trust to-zone untrust policy MendelBlockPolicy match source-address MendelAddressSrc destination-address MendelAddressDst application MendelAppli\r"
expect "#"

} elseif { $srcIpAddr == "" && $dstIpAddr != "" && $srcSnAddr != "" && $dstSnAddr == "" } { 
send   "set security policies from-zone trust to-zone untrust policy MendelBlockPolicy then reject\r"
expect "#"
send   "set security policies from-zone trust to-zone untrust policy MendelBlockPolicy match source-address MendelAddressSrcSn destination-address MendelAddressDst application MendelAppli\r"
expect "#"

} elseif { $srcIpAddr == "" && $dstIpAddr == "" && $srcSnAddr != "" && $dstSnAddr != "" } {
send   "set security policies from-zone trust to-zone untrust policy MendelBlockPolicy then reject\r"
expect "#"
send   "set security policies from-zone trust to-zone untrust policy MendelBlockPolicy match source-address MendelAddressSrcSn destination-address MendelAddressDstSn application MendelAppli\r"
expect "#"

} elseif { $srcIpAddr != "" && $dstIpAddr == "" && $srcSnAddr == "" && $dstSnAddr != "" } {
send   "set security policies from-zone trust to-zone untrust policy MendelBlockPolicy then reject\r"
expect "#"
send   "set security policies from-zone trust to-zone untrust policy MendelBlockPolicy match source-address MendelAddressSrc destination-address MendelAddressDstSn application MendelAppli\r"
expect "#"

} elseif { $srcIpAddr == "" && $dstIpAddr != "" && $srcSnAddr == "" && $dstSnAddr == "" } {
send   "set security policies from-zone trust to-zone untrust policy MendelBlockPolicy then reject\r"
expect "#"
send   "set security policies from-zone trust to-zone untrust policy MendelBlockPolicy match source-address $Any destination-address MendelAddressDst application MendelAppli\r"
expect "#"

} elseif { $srcIpAddr != "" && $dstIpAddr == "" && $srcSnAddr == "" && $dstSnAddr == "" } {
send   "set security policies from-zone trust to-zone untrust policy MendelBlockPolicy then reject\r"
expect "#"
send   "set security policies from-zone trust to-zone untrust policy MendelBlockPolicy match source-address MendelAddressSrc destination-address $Any application MendelAppli\r"
expect "#"

} elseif { $srcIpAddr == "" && $dstIpAddr == "" && $srcSnAddr != "" && $dstSnAddr == "" } {
send   "set security policies from-zone trust to-zone untrust policy MendelBlockPolicy then reject\r"
expect "#"
send   "set security policies from-zone trust to-zone untrust policy MendelBlockPolicy match source-address MendelAddressSrcSn destination-address $Any application MendelAppli\r"
expect "#"

} elseif { $srcIpAddr == "" && $dstIpAddr == "" && $srcSnAddr == "" && $dstSnAddr != "" } {
send   "set security policies from-zone trust to-zone untrust policy MendelBlockPolicy then reject\r"
expect "#"
send   "set security policies from-zone trust to-zone untrust policy MendelBlockPolicy match source-address $Any destination-address MendelAddressDstSn application MendelAppli\r"
expect "#"

} else { 
}

sleep 1


#Put the policy on top 

send   "insert security policies from-zone trust to-zone untrust policy MendelBlockPolicy before policy $TopPolicy\r"
expect "#"

sleep 1

#Saving Config 

send   "commit\r" 
expect "#"


#Exiting

send   "show security policies\r"
expect "#"
send   "exit\r" 
expect ">"
send   "exit\r"
