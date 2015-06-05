kube-proxy-iptables
---

This is an attempt to replace the user-space proxying of kubernetes with one based on iptables.

    iptables -t nat -I PREROUTING  -j tsone-dnat
    iptables -t nat -I OUTPUT      -j tsone-dnat
    iptables -t nat -I POSTROUTING -j tsone-snat
    /usr/bin/docker run --name kube-proxy-iptables --privileged --net=host quay.io/tsone/kube-proxy-iptables

