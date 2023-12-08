# Load Balancing pada LAMPP dengan Docker Swarm 
Lampp (PHP7.4-Apache, Mariadb dam PHPMyAdmin) dengan HAProxy yang dijalankan pada Docker Swarm Stack

# JALANKAN #
apt update -y && \
apt install git && \
git clone https://github.com/otnamrehus/lampp_haproxy_docker_swarm.git && \
cd lampp_haproxy_docker_swarm && \
chmod +x server.sh && \
./server.sh


# TESTING #
- Browser http://ipaddress:7007  [PHPMyAdmin]
  - MySQL user : user/password
  - MySQL root : root/password
- Browser http://ipaddress:7000  [Web]

