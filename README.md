#Shell script Linux - "iptables-rules-count.sh"

##Description
'iptables-rules-count.sh' is a shell script that can help you calculating the sum of active iptables rule-lines in Linux Server.

iptables controls five different tables: filter, nat, mangle, raw and security. On a given call, iptables only displays or modifies one of these tables, specified by the argument to the option -t (defaulting to filter). To see the complete state of the firewall, you need to call iptables on each of the tables successively.

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

**Ex** : calculating the sum of active iptables rule-lines in Linux.
```sh
$ iptables-rules-count
++++++++++++++++++++++++++++++++++++++++++++
+ Summary information of iptables firewall +
++++++++++++++++++++++++++++++++++++++++++++

---| Sum of current iptables chains : 27   (chains)
---| Sum of active iptable rules : 161    (rules)


+++++++++++++++++++++++++++++++++++++++
+ Table 'filter' of iptables firewall +
+++++++++++++++++++++++++++++++++++++++

-- Chain INPUT : 44    (rules)
-- Chain FORWARD : 0    (rules)
-- Chain OUTPUT : 49    (rules)
-- Chain ALLOWIN : 9    (rules)
-- Chain ALLOWOUT : 1    (rules)
-- Chain DENYIN : 1    (rules)
-- Chain DENYOUT : 1    (rules)
-- Chain INVALID : 10    (rules)
-- Chain INVDROP : 1    (rules)
-- Chain LOCALINPUT : 2    (rules)
-- Chain LOCALOUTPUT : 2    (rules)
-- Chain LOGDROPIN : 22    (rules)
-- Chain LOGDROPOUT : 4    (rules)
-- Chain acctboth : 15    (rules)
---| Sum of amount CHAINS in table 'filter' : 14    (chains)
---| Sum of amount RULES in table 'filter' : 161    (rules)


++++++++++++++++++++++++++++++++++++
+ Table 'nat' of iptables firewall +
++++++++++++++++++++++++++++++++++++

-- Chain PREROUTING : 0    (rules)
-- Chain POSTROUTING : 0    (rules)
-- Chain OUTPUT : 0    (rules)
---| Sum of amount CHAINS in table 'nat' : 3    (chains)
---| Sum of amount RULES in table 'nat' : 0    (rules)


+++++++++++++++++++++++++++++++++++++++
+ Table 'mangle' of iptables firewall +
+++++++++++++++++++++++++++++++++++++++

-- Chain PREROUTING : 0    (rules)
-- Chain INPUT : 0    (rules)
-- Chain FORWARD : 0    (rules)
-- Chain OUTPUT : 0    (rules)
-- Chain POSTROUTING : 0    (rules)
---| Sum of amount CHAINS in table 'mangle' : 5    (chains)
---| Sum of amount RULES in table 'mangle' : 0    (rules)


++++++++++++++++++++++++++++++++++++
+ Table 'raw' of iptables firewall +
++++++++++++++++++++++++++++++++++++

-- Chain PREROUTING : 0    (rules)
-- Chain OUTPUT : 0    (rules)
---| Sum of amount CHAINS in table 'raw' : 2    (chains)
---| Sum of amount RULES in table 'raw' : 0    (rules)


+++++++++++++++++++++++++++++++++++++++++
+ Table 'security' of iptables firewall +
+++++++++++++++++++++++++++++++++++++++++

-- Chain INPUT : 0    (rules)
-- Chain FORWARD : 0    (rules)
-- Chain OUTPUT : 0    (rules)
---| Sum of amount CHAINS in table 'security' : 3    (chains)
---| Sum of amount RULES in table 'security' : 0    (rules)
```

##Author
**Name** : Quach Chi Cuong

**Website** : https://cuongquach.com/
