#Shell script Linux - "iptables-rules-count.sh"

##Description
'iptables-rules-count.sh' is a shell script that can help you calculating the sum of active iptables rule-lines in Linux Server.

##Requirements

- Server Linux OS uses netfilter core-firewall that facilitates Network Address Translation (NAT), packet filtering, and packet mangling.
- Server Linux OS uses iptables that is a ultility which control netfilter operation through iptables rule settings.
- Git tool on system.
- User has privilege to use iptables ultility (like wheel group - root).
- User has permission to write/create file in temp directory.

##Installation

**+ Linux**

```sh
$ git clone https://github.com/cuongquach/iptables-rules-count.sh.git iptables-rules-count
$ mv iptables-rules-count/iptables-rules-count.sh /usr/bin/iptables-rules-count
$ chmod 700 /usr/bin/iptables-rules-count && chown root:root /usr/bin/iptables-rules-count
$ which iptables-rules-count
/usr/bin/iptables-rules-count
```

##Example Usage
### Examples
**Ex** : calculating the sum of active iptables rule-lines in Linux.
$ iptables-rules-count
- Sum of active iptable rules : 1891 line

##Author
**Name** : Quach Chi Cuong

**Website** : https://cuongquach.com/
