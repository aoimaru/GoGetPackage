[app/sources/339618240.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:019c64172a444a338cd34addc023834e2d8d8d439b10f555f9ec27217a840539" [label="/bin/sh -c apt-get update  && apt-get install -y curl  && apt-get install -y wget  && apt-get install -y vim  && cd ~  && apt-get install -y git  && apt-get install -y openssh-server  && apt-get install -y default-jdk  && wget https://s3.amazonaws.com/fluxcapacitor.com/packages/sbt-0.13.8.tgz  && tar xvzf sbt-0.13.8.tgz  && rm sbt-0.13.8.tgz  && ln -s /root/sbt/bin/sbt /usr/local/bin  && cd ~  && git clone https://github.com/bythebay/pipeline.git  && sbt clean clean-files" shape="box"];
  "sha256:10d52b3b92bc70815ae724be4ef4ec375b14ebcb271d01f03e05e848af353448" [label="/bin/sh -c cd ~  && DEBIAN_FRONTEND=noninteractive apt-get -y install mysql-server  && apt-get install -y mysql-client  && apt-get install -y libmysql-java  && wget http://archive.apache.org/dist/cassandra/2.2.0/apache-cassandra-2.2.0-bin.tar.gz  && tar xvzf apache-cassandra-2.2.0-bin.tar.gz  && rm apache-cassandra-2.2.0-bin.tar.gz  && wget http://packages.confluent.io/archive/1.0/confluent-1.0-2.10.4.tar.gz  && tar xvzf confluent-1.0-2.10.4.tar.gz  && rm confluent-1.0-2.10.4.tar.gz  && wget https://s3.amazonaws.com/fluxcapacitor.com/packages/spark-1.4.1-bin-fluxcapacitor.tgz  && tar xvzf spark-1.4.1-bin-fluxcapacitor.tgz  && rm spark-1.4.1-bin-fluxcapacitor.tgz  && apt-get install -y screen  && wget https://s3.eu-central-1.amazonaws.com/spark-notebook/emr/spark-notebook-0.6.0-scala-2.10.4-spark-1.4.1-hadoop-2.6.0-with-hive-with-parquet.tgz  && tar xvzf spark-notebook-0.6.0-scala-2.10.4-spark-1.4.1-hadoop-2.6.0-with-hive-with-parquet.tgz  && rm spark-notebook-0.6.0-scala-2.10.4-spark-1.4.1-hadoop-2.6.0-with-hive-with-parquet.tgz  && wget https://s3.amazonaws.com/fluxcapacitor.com/packages/spark-jobserver-0.5.2-fluxcapacitor.tar.gz  && tar xvzf spark-jobserver-0.5.2-fluxcapacitor.tar.gz  && rm spark-jobserver-0.5.2-fluxcapacitor.tar.gz  && mkdir -p ~/pipeline/logs/spark-jobserver" shape="box"];
  "sha256:170dd465123be5faef92e44b37fc7df8a66a031ce1a41cf53741adb284dff139" [label="/bin/sh -c cd ~/pipeline  && git reset --hard && git pull  && chmod a+rx *.sh  && ln ~/pipeline/config/spark-jobserver/pipeline.sh ~/spark-jobserver-0.5.2/config  && ln ~/pipeline/config/spark-jobserver/pipeline.conf ~/spark-jobserver-0.5.2/config  && cd ~/spark-jobserver-0.5.2  && sbt job-server-tests/package  && bin/server_package.sh pipeline  && cp /tmp/job-server/* .  && rm -rf /tmp/job-server  && cd ~  && mv ~/.profile ~/.profile.orig  && ln -s ~/pipeline/config/bash/.profile ~/.profile  && cd ~/pipeline  && sbt feeder/assembly  && cd ~/pipeline  && sbt streaming/package" shape="box"];
  "sha256:65a34340a99abdf5d829c51da037712219148c6b9ea94f0a4c7b2a16541ff5d8" [label="mkdir{path=/root}" shape="note"];
  "sha256:d7c465c5a8fc9e49305ce0d5a252dc7a4a95187ffeb5f736653c0959d48d8f60" [label="sha256:d7c465c5a8fc9e49305ce0d5a252dc7a4a95187ffeb5f736653c0959d48d8f60" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:019c64172a444a338cd34addc023834e2d8d8d439b10f555f9ec27217a840539" [label=""];
  "sha256:019c64172a444a338cd34addc023834e2d8d8d439b10f555f9ec27217a840539" -> "sha256:10d52b3b92bc70815ae724be4ef4ec375b14ebcb271d01f03e05e848af353448" [label=""];
  "sha256:10d52b3b92bc70815ae724be4ef4ec375b14ebcb271d01f03e05e848af353448" -> "sha256:170dd465123be5faef92e44b37fc7df8a66a031ce1a41cf53741adb284dff139" [label=""];
  "sha256:170dd465123be5faef92e44b37fc7df8a66a031ce1a41cf53741adb284dff139" -> "sha256:65a34340a99abdf5d829c51da037712219148c6b9ea94f0a4c7b2a16541ff5d8" [label=""];
  "sha256:65a34340a99abdf5d829c51da037712219148c6b9ea94f0a4c7b2a16541ff5d8" -> "sha256:d7c465c5a8fc9e49305ce0d5a252dc7a4a95187ffeb5f736653c0959d48d8f60" [label=""];
}

