#! /bin/bash
exec ./etcdctl --peers ${ETCD_PEER-"localhost:4001"} exec-watch --recursive /registry/services -- ruby ./iptables-routing.rb
