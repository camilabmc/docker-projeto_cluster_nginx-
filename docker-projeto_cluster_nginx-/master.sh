#!/bin/bash
sudo docker swarm init --advertise-addr=10.10.10.100
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh
docker service create --name webserverdesafio --replicas 5 -p 80:80 nginx