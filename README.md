
This is a quick-and-dirty implementation of the Kubernetes Proxy using iptables rules.

Setup:

    iptables -t nat -I PREROUTING  -j tsone-dnat
    iptables -t nat -I OUTPUT      -j tsone-dnat
    iptables -t nat -I POSTROUTING -j tsone-snat
    /usr/bin/docker run --name kube-proxy-iptables --privileged --net=host quay.io/tsone/kube-proxy-iptables

