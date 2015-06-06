FROM ruby

RUN apt-get update && apt-get install -y iptables && apt-get clean
ADD iptables-routing.rb /
ADD https://fdc2a6985e154eb93e31-57111b95f737d86bfde0926d8e35e197.ssl.cf3.rackcdn.com/v0.17.1/kubectl /
ADD https://4575d634297ff511433d-2bdefcf148e17ef637d032af30e6c26a.ssl.cf3.rackcdn.com/0.4.6/etcdctl /
RUN chmod +x /kubectl /etcdctl
