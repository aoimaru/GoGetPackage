[app/sources/297896065.Dockerfile]
digraph {
  "sha256:f51b7c7cef2ef65ffefa6d236274affe2a9ba29dea18f624f9a4bea95483c9ff" [label="docker-image://docker.io/library/ubuntu:14.04@sha256:43cb19408de1e0ecf3ba5b5372ec98978963d6d0be42d0ad825e77a3bd16b5f7" shape="ellipse"];
  "sha256:ff8d4a5378fe11cca1abc9b1511ba0383f91970045990cf3ae26a0692147df92" [label="/bin/sh -c apt-get update &&     apt-get upgrade -y &&     apt-get install -y software-properties-common &&     add-apt-repository ppa:webupd8team/java -y &&     apt-get update &&     echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections &&     apt-get install -y oracle-java8-installer &&     apt-get install -y curl &&     apt-get install -y netcat &&     apt-get install -y iputils-ping &&     apt-get install -y net-tools &&     apt-get clean" shape="box"];
  "sha256:67cce6edcc8efbc14c90a642dd97420c82ffccdaa160e3d2cf31cee9d1cc410d" [label="/bin/sh -c apt-get update &&   DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server &&   echo '[mysqld]\\n bind-address = 0.0.0.0\\n\\n[client]\\nsocket=/var/run/mysql/mysql.sock\\nhost=0.0.0.0\\nport=3306' > /etc/mysql/my.cnf &&   chmod -R 0700 /etc/ssl/private &&   chown -R mysql /etc/ssl/private &&   mkdir /home/mysql &&   chown mysql /home/mysql" shape="box"];
  "sha256:7b82692b0576369cc569adc890f858c7311bb6475ab60218d2854252d44fc760" [label="local://context" shape="ellipse"];
  "sha256:26593d82f823f3bef76e64a335da6dac80c8fbabe8de861f076b077a53c5ccec" [label="copy{src=/mimic2_mysql.sql, dest=/home/mysql}" shape="note"];
  "sha256:62db21ffb85d5ef3a68003f5c3b0558e62f6ce4e9e000a7f046cd47d00aa4cc8" [label="copy{src=/start_services.sh, dest=/home/mysql}" shape="note"];
  "sha256:0c3baba4a07654dafb39d94f43703dd9c4f1aedce776795c4d9e74fbb12480bd" [label="/bin/sh -c chmod +x /home/mysql/start_services.sh" shape="box"];
  "sha256:912fd6e4500b361d006eb6c788cf028496c5bb4abd6ab0c92d203d4d68d5921f" [label="/bin/sh -c mysqld &     while !(mysqladmin ping); do sleep 3; done &&     mysql --user=root -v -e \"GRANT ALL PRIVILEGES ON *.* TO 'mysqluser'@'%' IDENTIFIED BY PASSWORD '*94BDCEBE19083CE2A1F959FD02F964C7AF4CFC29' WITH GRANT OPTION;\" &&     /etc/init.d/mysql stop" shape="box"];
  "sha256:5bb105dc2e93812290b8b43c4a13ae4fd1b2461427f9aed04004c64814512898" [label="sha256:5bb105dc2e93812290b8b43c4a13ae4fd1b2461427f9aed04004c64814512898" shape="plaintext"];
  "sha256:f51b7c7cef2ef65ffefa6d236274affe2a9ba29dea18f624f9a4bea95483c9ff" -> "sha256:ff8d4a5378fe11cca1abc9b1511ba0383f91970045990cf3ae26a0692147df92" [label=""];
  "sha256:ff8d4a5378fe11cca1abc9b1511ba0383f91970045990cf3ae26a0692147df92" -> "sha256:67cce6edcc8efbc14c90a642dd97420c82ffccdaa160e3d2cf31cee9d1cc410d" [label=""];
  "sha256:67cce6edcc8efbc14c90a642dd97420c82ffccdaa160e3d2cf31cee9d1cc410d" -> "sha256:26593d82f823f3bef76e64a335da6dac80c8fbabe8de861f076b077a53c5ccec" [label=""];
  "sha256:7b82692b0576369cc569adc890f858c7311bb6475ab60218d2854252d44fc760" -> "sha256:26593d82f823f3bef76e64a335da6dac80c8fbabe8de861f076b077a53c5ccec" [label=""];
  "sha256:26593d82f823f3bef76e64a335da6dac80c8fbabe8de861f076b077a53c5ccec" -> "sha256:62db21ffb85d5ef3a68003f5c3b0558e62f6ce4e9e000a7f046cd47d00aa4cc8" [label=""];
  "sha256:7b82692b0576369cc569adc890f858c7311bb6475ab60218d2854252d44fc760" -> "sha256:62db21ffb85d5ef3a68003f5c3b0558e62f6ce4e9e000a7f046cd47d00aa4cc8" [label=""];
  "sha256:62db21ffb85d5ef3a68003f5c3b0558e62f6ce4e9e000a7f046cd47d00aa4cc8" -> "sha256:0c3baba4a07654dafb39d94f43703dd9c4f1aedce776795c4d9e74fbb12480bd" [label=""];
  "sha256:0c3baba4a07654dafb39d94f43703dd9c4f1aedce776795c4d9e74fbb12480bd" -> "sha256:912fd6e4500b361d006eb6c788cf028496c5bb4abd6ab0c92d203d4d68d5921f" [label=""];
  "sha256:912fd6e4500b361d006eb6c788cf028496c5bb4abd6ab0c92d203d4d68d5921f" -> "sha256:5bb105dc2e93812290b8b43c4a13ae4fd1b2461427f9aed04004c64814512898" [label=""];
}

