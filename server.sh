#!/bin/bash
clear
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "........................... DOCKER SWARM .........................."
echo ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo "-------------------------------------------------------------------"
echo "s - [✓] Inisiasi Docker Swarm"
echo "-------------------------------------------------------------------"
echo "d - [✓] Deploy Stack Swarm "
echo "-------------------------------------------------------------------"
echo "c - [?] Cek Status Stack Swarm "
echo "-------------------------------------------------------------------"
echo "ss - [?] Status Service Swarm Berjalan "
echo "-------------------------------------------------------------------"
echo "r - [X] Hapus Stack Lampp_Swarm  " 
echo "-------------------------------------------------------------------"
echo "rr - [!] Hentikan Docker Swarm [Hapus Seluruh Stack yang berjalan] "
echo "-------------------------------------------------------------------"
echo "Opsi Perintah Tambahan :"
echo "1. Manager Node: " 
echo "   docker swarm  init     ## Default Manager "
echo "   docker swarm join-token manager     ## making Manager "
echo "2. Join Node: " 
echo "   docker swarm join --token <TOKEN> <IP>:<PORT>    ## Gabung Ke Noder" 
echo "-------------------------------------------------------------------"
echo " "

read swarm;
case $swarm in
  s) docker swarm  init ;;
  d) docker stack deploy -c docker-compose.yaml lampp_swarm ;;
  c) docker stack ps lampp_swarm ;;
  ss) docker service ls ;;  
  r) docker stack rm lampp_swarm ;;
  rr) docker swarm leave --force ;;
  *) clear && echo "Keluar dari Pilihan Service Docker Swarm";;
esac
####################### E N D #########################
