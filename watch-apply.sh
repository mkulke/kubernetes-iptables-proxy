#! /bin/bash
exec ./etcdctl exec-watch --peers ${ETCD_PEER-"localhost:4001"} --recursive /registry/services -- ruby ./iptables-routing.rb
