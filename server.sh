
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
echo "   docker swarm  init      "
echo "   docker swarm join-token manager      "
echo "2. Join Node: "
echo "   docker swarm join --token <TOKEN> <IP>:<PORT>    "
echo "-------------------------------------------------------------------"
echo " "
echo "Cek Statistik HAproxy :"
echo "http://ipaddress:7000/haproxy?stats"
echo " "

read swarm;
case $swarm in
  s) docker swarm init && chmod +x server.sh && ./server.sh;;
  d) docker stack deploy -c docker-compose.yaml lampp_swarm && chmod +x server.sh && ./server.sh;;
  c) docker stack ps lampp_swarm && chmod +x server.sh && ./server.sh;;
  ss) docker service ls && chmod +x server.sh && ./server.sh;;
  r) docker stack rm lampp_swarm && chmod +x server.sh && ./server.sh;;
  rr) docker swarm leave --force && chmod +x server.sh && ./server.sh;;
  *) clear && echo "Keluar dari Pilihan Service Docker Swarm";;
esac
