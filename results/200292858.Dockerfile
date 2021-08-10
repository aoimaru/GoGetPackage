[app/sources/200292858.Dockerfile]
digraph {
  "sha256:f735ec6f25684c5ec4fb7f8cab2d95c1c07641e912601e55584b6ad090143eec" [label="https://raw.githubusercontent.com/jpatokal/openflights/master/data/routes.dat" shape="ellipse"];
  "sha256:35a41f2bc7b3071e40b4ae500f3bd3452de46e259f595d88eea316c22b6a8548" [label="http://s3.amazonaws.com/agile_data_science/On_Time_On_Time_Performance_2015.csv.gz" shape="ellipse"];
  "sha256:5e98c60b8928472bdc9a822e3ecc532e4b8ffae191e9ac33e7ed0b394be6cefb" [label="http://apache.osuosl.org/hadoop/common/hadoop-2.7.3/hadoop-2.7.3.tar.gz" shape="ellipse"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:752946bed353a5268c4950cb92e5739513e5ea5b6b690fa3aa67690147cfaf01" [label="mkdir{path=/root}" shape="note"];
  "sha256:76943b1c18844dd0f8932ec57ffaceca46eb3cb7361217fdc8c071ec1efddeb4" [label="/bin/sh -c apt-get autoclean" shape="box"];
  "sha256:7bf21a82ec84c2e2dcf9b0737ef36bdf30b8c5038e10ac0c6f20d6957782e63e" [label="/bin/sh -c apt-get update &&     apt-get install -y zip unzip curl bzip2 python-dev build-essential git libssl1.0.0 libssl-dev" shape="box"];
  "sha256:8d69c406042f8ec16a510ca50c146ff43db9c785213f75523680c8e017016468" [label="/bin/sh -c apt-get install -y software-properties-common debconf-utils &&     add-apt-repository -y ppa:webupd8team/java &&     apt-get update &&     echo \"oracle-java8-installer shared/accepted-oracle-license-v1-1 select true\" | debconf-set-selections &&     apt-get install -y oracle-java8-installer" shape="box"];
  "sha256:9282be88812fe9e6d99246d0493149e2b6fcffd2948ad32e41cccf96c96fe61a" [label="http://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh" shape="ellipse"];
  "sha256:a4e7d1d0b24b8c14ad09d6ba1045425a871e6675ce390c8f38e7290405ab50a3" [label="copy{src=/Anaconda3-4.2.0-Linux-x86_64.sh, dest=/tmp/Anaconda3-4.2.0-Linux-x86_64.sh}" shape="note"];
  "sha256:5c8ddb4921af191b674ffdb80fc9cfa26c8fb493848f73bbfed0903df77c31da" [label="/bin/sh -c bash /tmp/Anaconda3-4.2.0-Linux-x86_64.sh -b -p /root/anaconda" shape="box"];
  "sha256:75fae1f2a460fd9bd1ad0bf1a93b87d964396f1d3bfcab23ea1f37e7abb1e197" [label="/bin/sh -c git clone https://github.com/rjurney/Agile_Data_Code_2" shape="box"];
  "sha256:cf5dea7dd13f0a1345ccb8433e27ba16f286f67e93b4b146ad7c6ea2b448026d" [label="mkdir{path=/root/Agile_Data_Code_2}" shape="note"];
  "sha256:c32b65ebf4ae16f610eb6c3cc3f3e8f1cf002f5d89e4b5b288872923005f64d7" [label="/bin/sh -c pip install --upgrade pip &&     pip install -r requirements.txt" shape="box"];
  "sha256:92b3dc859da79961cf39b0b6d2e6a1923545f07536336568dc5d1fb82bd5e71b" [label="mkdir{path=/root}" shape="note"];
  "sha256:ffdf876296bd26fb085df061d74d794eea8b0b24249b779fcb20f56e8ad488bd" [label="copy{src=/hadoop-2.7.3.tar.gz, dest=/tmp/hadoop-2.7.3.tar.gz}" shape="note"];
  "sha256:51ce09aebc3cd09434b74c14f67210db075ef5814b1cd3f6b79015294a99fd30" [label="/bin/sh -c mkdir -p /root/hadoop &&     tar -xvf /tmp/hadoop-2.7.3.tar.gz -C hadoop --strip-components=1" shape="box"];
  "sha256:426aad7abaee2eda378990b9b0715868b6be845b4c48e91e4cbea48b4e45ad4f" [label="http://d3kbcqa49mib13.cloudfront.net/spark-2.1.0-bin-without-hadoop.tgz" shape="ellipse"];
  "sha256:0fe66d1efea05764bed2cbe6207963f12a8db56df97971c317d2e393047f5bc8" [label="copy{src=/spark-2.1.0-bin-without-hadoop.tgz, dest=/tmp/spark-2.1.0-bin-without-hadoop.tgz}" shape="note"];
  "sha256:755c9b5a25973be703a9b5fae29b8538e4a8a36ca0226179ea5d387c3e7eab09" [label="/bin/sh -c mkdir -p /root/spark &&     tar -xvf /tmp/spark-2.1.0-bin-without-hadoop.tgz -C spark --strip-components=1" shape="box"];
  "sha256:8282d7a4df22a67b0a3cac8517aaa9ab3d941a348a63bb4436653896e315036d" [label="/bin/sh -c cp /root/spark/conf/spark-defaults.conf.template /root/spark/conf/spark-defaults.conf &&     echo 'spark.io.compression.codec org.apache.spark.io.SnappyCompressionCodec' >> /root/spark/conf/spark-defaults.conf &&     echo \"spark.driver.memory 8g\" >> /root/spark/conf/spark-defaults.conf" shape="box"];
  "sha256:66d73864e7e3f4178076a672de432821b3708e038d62ede03afd5101197e5858" [label="/bin/sh -c echo \"PYSPARK_PYTHON=python3\" >> /root/spark/conf/spark-env.sh &&     echo \"PYSPARK_DRIVER_PYTHON=python3\" >> /root/spark/conf/spark-env.sh" shape="box"];
  "sha256:ceb861e9a5f3eaa421d402d7f0c467a662cd9c54596f50f96ac8a855cf590f45" [label="/bin/sh -c cp /root/spark/conf/log4j.properties.template /root/spark/conf/log4j.properties &&     sed -i 's/INFO/ERROR/g' /root/spark/conf/log4j.properties" shape="box"];
  "sha256:74c18dc01c6948732eb5f9b719d808b5b3e28333249c92dbfd18810ee5a1d142" [label="/bin/sh -c echo \"deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse\" > /etc/apt/sources.list.d/mongodb-org-3.4.list" shape="box"];
  "sha256:69a33f7e2d9fed65ff74c42b2eb64836366d383a0947a702d07d4d02094219de" [label="/bin/sh -c apt-get update &&     apt-get install -y --allow-unauthenticated mongodb-org &&     mkdir -p /data/db" shape="box"];
  "sha256:fb092a3bd0fbbda134ad5fd7c18771501dae8c443f740c9bd1d2350d61554e50" [label="/bin/sh -c /usr/bin/mongod --fork --logpath /var/log/mongodb.log" shape="box"];
  "sha256:2b729313bfbe69f194a2b371a5eb26f9246aba86f13a328ad1ce22d2646fa9f5" [label="http://central.maven.org/maven2/org/mongodb/mongo-java-driver/3.4.0/mongo-java-driver-3.4.0.jar" shape="ellipse"];
  "sha256:e25b766c16a6c168df9b002d60b7594819ad646b1e86b2da33f412ffcf825a51" [label="copy{src=/mongo-java-driver-3.4.0.jar, dest=/tmp/mongo-java-driver-3.4.0.jar}" shape="note"];
  "sha256:89c4a8562c887ae32d0df9d67bef26524d810922d708310827cf472495325feb" [label="/bin/sh -c mv /tmp/mongo-java-driver-3.4.0.jar /root/Agile_Data_Code_2/lib/" shape="box"];
  "sha256:516b2740a4419f76996758bede60013ea51174c80b1141e16ec272b5213e6d9f" [label="https://github.com/mongodb/mongo-hadoop/archive/r1.5.2.tar.gz" shape="ellipse"];
  "sha256:bc5378958aeb7afb661066534ba8cf1f9a945ba663cd06fd0fdab14d7dc3f339" [label="copy{src=/r1.5.2.tar.gz, dest=/tmp/mongo-hadoop-r1.5.2.tar.gz}" shape="note"];
  "sha256:cc163b21958753c7d6cca737f77442740e309016a7b0465ef53bd9e53aa5e12f" [label="/bin/sh -c mkdir -p /root/mongo-hadoop &&     tar -xvzf /tmp/mongo-hadoop-r1.5.2.tar.gz -C mongo-hadoop --strip-components=1 &&     rm -f /tmp/mongo-hadoop-r1.5.2.tar.gz" shape="box"];
  "sha256:54ae037de4c3f6fb344c93e4dfe706620cb44f2eb09b88745dc9a9ab408165f7" [label="mkdir{path=/root/mongo-hadoop}" shape="note"];
  "sha256:ea792f4839675904718932be0f7843ca5e841613128798d0b23f4edbeaa05ed0" [label="/bin/sh -c /root/mongo-hadoop/gradlew jar" shape="box"];
  "sha256:62b021b543ed32a20202615fcd3fcc2f85f9daacb08be4d0d421f3b8518e642c" [label="mkdir{path=/root}" shape="note"];
  "sha256:50697662dd9a21b8470af17e54a81853d21a8cf4f59936fd6e6faae5b614eb2e" [label="/bin/sh -c cp /root/mongo-hadoop/spark/build/libs/mongo-hadoop-spark-*.jar /root/Agile_Data_Code_2/lib/ &&     cp /root/mongo-hadoop/build/libs/mongo-hadoop-*.jar /root/Agile_Data_Code_2/lib/" shape="box"];
  "sha256:809c6f20f9ec509e8483a55404e5c7b36c7ff21d7ecf32721b414cbca6d96132" [label="mkdir{path=/root/mongo-hadoop/spark/src/main/python}" shape="note"];
  "sha256:bcef93b83af57f2881d7c182712e148dbb685436f268625c522aafe906bd4167" [label="/bin/sh -c python setup.py install" shape="box"];
  "sha256:658cbfe1d0072a12c6c215718a2c894ef74dc9825638db600e8ca42679ea43bb" [label="mkdir{path=/root}" shape="note"];
  "sha256:6b9436270ddbc855e02dd18f010a5403f4ace72d53d764b2fe72b424183b46b9" [label="/bin/sh -c cp /root/mongo-hadoop/spark/src/main/python/pymongo_spark.py /root/Agile_Data_Code_2/lib/" shape="box"];
  "sha256:0efe60d19509c916462fd9b2bc464cd6ed6a5c8155c6d56c07feffab23493b3b" [label="/bin/sh -c rm -rf /root/mongo-hadoop" shape="box"];
  "sha256:b9725ecb853febddcfbc46be385fd09b542c962ec41802e24ec5a5a928e68f13" [label="https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.1.1.tar.gz" shape="ellipse"];
  "sha256:dadd8815744778706d66186fc4baeda10cad32258f2881e15256dddcb51150c9" [label="copy{src=/elasticsearch-5.1.1.tar.gz, dest=/tmp/elasticsearch-5.1.1.tar.gz}" shape="note"];
  "sha256:3ced1d76c18d97db6649443bfd21dd06e3f59a0e6d8eaef9690db55ac29bf81c" [label="/bin/sh -c mkdir /root/elasticsearch &&     tar -xvzf /tmp/elasticsearch-5.1.1.tar.gz -C elasticsearch --strip-components=1 &&     /root/elasticsearch/bin/elasticsearch -d &&     rm -f /tmp/elasticsearch-5.1.1.tar.gz" shape="box"];
  "sha256:1fe78a44ea138618ed324ef85ce52f0b86c62cc087f381c8eebf92e2e34c61ae" [label="http://download.elastic.co/hadoop/elasticsearch-hadoop-5.1.1.zip" shape="ellipse"];
  "sha256:017c61cc2426785f297233799e3404057afffa2b2ebe49fd8552385cfbe57e2f" [label="copy{src=/elasticsearch-hadoop-5.1.1.zip, dest=/tmp/elasticsearch-hadoop-5.1.1.zip}" shape="note"];
  "sha256:124eba41e93be1049cc10b7ad616213795d61aa11f68ca44da736108a31ed5f1" [label="/bin/sh -c unzip /tmp/elasticsearch-hadoop-5.1.1.zip &&     mv /root/elasticsearch-hadoop-5.1.1 /root/elasticsearch-hadoop &&     cp /root/elasticsearch-hadoop/dist/elasticsearch-hadoop-5.1.1.jar /root/Agile_Data_Code_2/lib/ &&     cp /root/elasticsearch-hadoop/dist/elasticsearch-spark-20_2.10-5.1.1.jar /root/Agile_Data_Code_2/lib/ &&     echo \"spark.speculation false\" >> /root/spark/conf/spark-defaults.conf &&     rm -f /tmp/elasticsearch-hadoop-5.1.1.zip &&     rm -rf /root/elasticsearch-hadoop" shape="box"];
  "sha256:8850642489bc0a4dcc9aabac3334f75ccf199ea02e61a046acd6265dd3a5ce25" [label="http://central.maven.org/maven2/org/xerial/snappy/snappy-java/1.1.2.6/snappy-java-1.1.2.6.jar" shape="ellipse"];
  "sha256:6d7162ad89d080be1ecf70f084fa308bc82e98efd57c75b5900b9e32170d2b5b" [label="copy{src=/snappy-java-1.1.2.6.jar, dest=/tmp/snappy-java-1.1.2.6.jar}" shape="note"];
  "sha256:ae42f0d421180a8ae0a47e8d3312403e079d9dec3a15583313910943a0ea7e97" [label="http://central.maven.org/maven2/org/anarres/lzo/lzo-hadoop/1.0.5/lzo-hadoop-1.0.5.jar" shape="ellipse"];
  "sha256:e64d7c0273e4bd8a65732522227e5594089977aef13ac0b90eaa99f2e5b76b66" [label="copy{src=/lzo-hadoop-1.0.5.jar, dest=/tmp/lzo-hadoop-1.0.5.jar}" shape="note"];
  "sha256:48e97106f16ef0e6b5e73f5390193ba966bce831c7c783cc4be5631d5adf13b6" [label="/bin/sh -c mv /tmp/snappy-java-1.1.2.6.jar /root/Agile_Data_Code_2/lib/ &&     mv /tmp/lzo-hadoop-1.0.5.jar /root/Agile_Data_Code_2/lib/" shape="box"];
  "sha256:988ca677297a05f84660a6ee8a8947885e3bf8264ebb7bdeda6d247be5acbf85" [label="/bin/sh -c echo \"spark.jars /root/Agile_Data_Code_2/lib/mongo-hadoop-spark-1.5.2.jar,/root/Agile_Data_Code_2/lib/mongo-java-driver-3.4.0.jar,/root/Agile_Data_Code_2/lib/mongo-hadoop-1.5.2.jar,/root/Agile_Data_Code_2/lib/elasticsearch-spark-20_2.10-5.1.1.jar,/root/Agile_Data_Code_2/lib/snappy-java-1.1.2.6.jar,/root/Agile_Data_Code_2/lib/lzo-hadoop-1.0.5.jar\" >> /root/spark/conf/spark-defaults.conf" shape="box"];
  "sha256:b7bfbc171701455c0b60d31f9229c88dda25b58ca435478f7068491cf0b10b76" [label="http://www-us.apache.org/dist/kafka/0.10.1.1/kafka_2.11-0.10.1.1.tgz" shape="ellipse"];
  "sha256:2a8185fff27b5440c1496efbc1478986fac516ae01e1795ffb6003994a4f36f3" [label="copy{src=/kafka_2.11-0.10.1.1.tgz, dest=/tmp/kafka_2.11-0.10.1.1.tgz}" shape="note"];
  "sha256:eb6cd2547f6fd4c29f7960751f0c63662ee7c8d531d8ab1adb6d1e446310a477" [label="/bin/sh -c mkdir -p /root/kafka &&     tar -xvzf /tmp/kafka_2.11-0.10.1.1.tgz -C kafka --strip-components=1 &&     rm -f /tmp/kafka_2.11-0.10.1.1.tgz" shape="box"];
  "sha256:e579eaef3d2feb59cc81af78825165f9ebea403b9cb434fa2b5489457972ab90" [label="/bin/sh -c /root/kafka/bin/zookeeper-server-start.sh -daemon /root/kafka/config/zookeeper.properties &&     /root/kafka/bin/kafka-server-start.sh -daemon /root/kafka/config/server.properties" shape="box"];
  "sha256:97d9f23c5f99e3022123aab01441d810bc256c16a0b48241acda2f692b458680" [label="/bin/sh -c pip install airflow &&     mkdir /root/airflow &&     mkdir /root/airflow/dags &&     mkdir /root/airflow/logs &&     mkdir /root/airflow/plugins &&     airflow initdb &&     airflow webserver -D &&     airflow scheduler -D &" shape="box"];
  "sha256:88c26eea4dfc7d8b8e8059528955d1c057d2a669cdb211dbb4f0fd06412b0cf1" [label="mkdir{path=/root}" shape="note"];
  "sha256:38abfd26ae2926ed6313a3e198afbfb48c9cc60ba97ec749445799feb16948e1" [label="http://www-us.apache.org/dist/zeppelin/zeppelin-0.6.2/zeppelin-0.6.2-bin-all.tgz" shape="ellipse"];
  "sha256:7dcfb0e5419d4a66a3d8582c30cafca146b7083be4da6e0116d7dd7dae992f57" [label="copy{src=/zeppelin-0.6.2-bin-all.tgz, dest=/tmp/zeppelin-0.6.2-bin-all.tgz}" shape="note"];
  "sha256:a62e9be5efdc46c47ee36326d5fac44cba3218fa0c644420485f59b4b2825ad6" [label="/bin/sh -c mkdir -p /root/zeppelin &&     tar -xvzf /tmp/zeppelin-0.6.2-bin-all.tgz -C zeppelin --strip-components=1 &&     rm -f /tmp/zeppelin-0.6.2-bin-all.tgz" shape="box"];
  "sha256:f442d0c0cfb12d4771cdde2887fe0f66ecacb9798acd0c5443e564eb2040e63e" [label="/bin/sh -c cp /root/zeppelin/conf/zeppelin-env.sh.template /root/zeppelin/conf/zeppelin-env.sh &&     echo \"export SPARK_HOME=/root/spark\" >> /root/zeppelin/conf/zeppelin-env.sh &&     echo \"export SPARK_MASTER=local\" >> /root/zeppelin/conf/zeppelin-env.sh &&     echo \"export SPARK_CLASSPATH=\" >> /root/zeppelin/conf/zeppelin-env.sh" shape="box"];
  "sha256:8666a1c8bef5fb17937599acd80e5fc5a6b0476b04d03bf54050e91faf7b45c9" [label="mkdir{path=/root/Agile_Data_Code_2/data}" shape="note"];
  "sha256:76a02c3744a93f24f15797004c8aa2db1af7357806e77bfad06bf4b9f775710c" [label="copy{src=/On_Time_On_Time_Performance_2015.csv.gz, dest=/root/Agile_Data_Code_2/data/On_Time_On_Time_Performance_2015.csv.gz}" shape="note"];
  "sha256:9e492c31dc8ad4fd69abeafb32446290c14fb07fb453323e5fdf29841ae9d27d" [label="https://raw.githubusercontent.com/jpatokal/openflights/master/data/airports.dat" shape="ellipse"];
  "sha256:a2e4838032bed243d4371d1157b171f3361fc577fb16f6adf561efcbffead2e5" [label="copy{src=/airports.dat, dest=/root/Agile_Data_Code_2/data/airports.dat}" shape="note"];
  "sha256:05dd37dd6365c1f44e91770be5c860eaee450f1ecbe50796872e4e03413eb48d" [label="https://raw.githubusercontent.com/jpatokal/openflights/master/data/airlines.dat" shape="ellipse"];
  "sha256:5f48c9a3d7d283f90c95ddc430101c3c67e33df4e8a53f5e0dd9de47eb4f86f6" [label="copy{src=/airlines.dat, dest=/root/Agile_Data_Code_2/data/airlines.dat}" shape="note"];
  "sha256:3d0dc563e7d093da37c2ec97a8ddfdb10375772b98d61d3832b1909f37ddc672" [label="copy{src=/routes.dat, dest=/root/Agile_Data_Code_2/data/routes.dat}" shape="note"];
  "sha256:dddb2dbdaa56a23bdfae6d8fc13acbf51d8b6eba29a13eca3c63262bb00962cc" [label="https://raw.githubusercontent.com/jpatokal/openflights/master/data/countries.dat" shape="ellipse"];
  "sha256:4b10d9b5e2aaaa0c0b9a70e414f0dbb145498e2333f6bdfbbb0138b0d6bd4ee3" [label="copy{src=/countries.dat, dest=/root/Agile_Data_Code_2/data/countries.dat}" shape="note"];
  "sha256:cbb784d49ae9360a23c70ead1fc4ba84294912ae273c976460f79b78b78a3863" [label="http://av-info.faa.gov/data/ACRef/tab/aircraft.txt" shape="ellipse"];
  "sha256:0463576d1d12a271c5becce1d64c6017924cbbac7a5a9a75c29f3945c80c0b30" [label="copy{src=/aircraft.txt, dest=/root/Agile_Data_Code_2/data/aircraft.txt}" shape="note"];
  "sha256:cc8c93d769d26751bc13035e29c43be707fa3c5d342ff591e3a13faaa0c790cd" [label="http://av-info.faa.gov/data/ACRef/tab/ata.txt" shape="ellipse"];
  "sha256:88a0f87402f26414a488b367f53198df65cc0bfe1838b64d3700d048f69fa275" [label="copy{src=/ata.txt, dest=/root/Agile_Data_Code_2/data/ata.txt}" shape="note"];
  "sha256:41868362fe4cf6b7bbd2598323b4f995e92f311707dc6fe68dfa852f29dd1921" [label="http://av-info.faa.gov/data/ACRef/tab/compt.txt" shape="ellipse"];
  "sha256:6f08a621033d9f54bdc6a00e7afc32c87b060335e302e865c22820a9f3b16908" [label="copy{src=/compt.txt, dest=/root/Agile_Data_Code_2/data/compt.txt}" shape="note"];
  "sha256:c632f6f3812df5086fe5326f0392f42a9c7eb3a7db07308eda4e641e4fc9635d" [label="http://av-info.faa.gov/data/ACRef/tab/engine.txt" shape="ellipse"];
  "sha256:2a4f637f8f0897a02698d882e65a1e05a66520a30cb1b9ed6050c27ac44c218e" [label="copy{src=/engine.txt, dest=/root/Agile_Data_Code_2/data/engine.txt}" shape="note"];
  "sha256:c87bb8148cbdf7c396337b12a027b013917398fe3e2427cdb5d0dc8191a139d1" [label="http://av-info.faa.gov/data/ACRef/tab/prop.txt" shape="ellipse"];
  "sha256:660cbf8e8835747011412a11c33b2479ac962b0fc5465526767b0d11c6da6c2b" [label="copy{src=/prop.txt, dest=/root/Agile_Data_Code_2/data/prop.txt}" shape="note"];
  "sha256:179d7590f8360b42f21e749052f7acf3f1907ff865d46cd66770b66a4a140bd8" [label="http://www.ncdc.noaa.gov/homr/file/wbanmasterlist.psv.zip" shape="ellipse"];
  "sha256:4936761650d46f2b1eddb7bc4d5d0815bdeb82d6b057be5598a20b8b7d29a28f" [label="copy{src=/wbanmasterlist.psv.zip, dest=/tmp/wbanmasterlist.psv.zip}" shape="note"];
  "sha256:464133ed26943ec189c7ffa00872cdad35cd6720c12dd5e430c34ce5ee73f66f" [label="/bin/sh -c for i in $(seq -w 1 12); do curl -Lko /tmp/QCLCD2015${i}.zip http://www.ncdc.noaa.gov/orders/qclcd/QCLCD2015${i}.zip &&     unzip -o /tmp/QCLCD2015${i}.zip &&     gzip 2015${i}*.txt &&     rm -f /tmp/QCLCD2015${i}.zip; done" shape="box"];
  "sha256:28caa4fc6fd4e873837e039c78ab0140d09381e348359a5435716d378504d5e8" [label="mkdir{path=/root}" shape="note"];
  "sha256:23be09d7ee915e71a44323a14ab3eac506bff43179cee0880605e2532d2c7fa0" [label="/bin/sh -c apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:a314425c4f1e3fe474d2b44bde2013539d5cda639219cf2729e2722433ce30a6" [label="sha256:a314425c4f1e3fe474d2b44bde2013539d5cda639219cf2729e2722433ce30a6" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:752946bed353a5268c4950cb92e5739513e5ea5b6b690fa3aa67690147cfaf01" [label=""];
  "sha256:752946bed353a5268c4950cb92e5739513e5ea5b6b690fa3aa67690147cfaf01" -> "sha256:76943b1c18844dd0f8932ec57ffaceca46eb3cb7361217fdc8c071ec1efddeb4" [label=""];
  "sha256:76943b1c18844dd0f8932ec57ffaceca46eb3cb7361217fdc8c071ec1efddeb4" -> "sha256:7bf21a82ec84c2e2dcf9b0737ef36bdf30b8c5038e10ac0c6f20d6957782e63e" [label=""];
  "sha256:7bf21a82ec84c2e2dcf9b0737ef36bdf30b8c5038e10ac0c6f20d6957782e63e" -> "sha256:8d69c406042f8ec16a510ca50c146ff43db9c785213f75523680c8e017016468" [label=""];
  "sha256:8d69c406042f8ec16a510ca50c146ff43db9c785213f75523680c8e017016468" -> "sha256:a4e7d1d0b24b8c14ad09d6ba1045425a871e6675ce390c8f38e7290405ab50a3" [label=""];
  "sha256:9282be88812fe9e6d99246d0493149e2b6fcffd2948ad32e41cccf96c96fe61a" -> "sha256:a4e7d1d0b24b8c14ad09d6ba1045425a871e6675ce390c8f38e7290405ab50a3" [label=""];
  "sha256:a4e7d1d0b24b8c14ad09d6ba1045425a871e6675ce390c8f38e7290405ab50a3" -> "sha256:5c8ddb4921af191b674ffdb80fc9cfa26c8fb493848f73bbfed0903df77c31da" [label=""];
  "sha256:5c8ddb4921af191b674ffdb80fc9cfa26c8fb493848f73bbfed0903df77c31da" -> "sha256:75fae1f2a460fd9bd1ad0bf1a93b87d964396f1d3bfcab23ea1f37e7abb1e197" [label=""];
  "sha256:75fae1f2a460fd9bd1ad0bf1a93b87d964396f1d3bfcab23ea1f37e7abb1e197" -> "sha256:cf5dea7dd13f0a1345ccb8433e27ba16f286f67e93b4b146ad7c6ea2b448026d" [label=""];
  "sha256:cf5dea7dd13f0a1345ccb8433e27ba16f286f67e93b4b146ad7c6ea2b448026d" -> "sha256:c32b65ebf4ae16f610eb6c3cc3f3e8f1cf002f5d89e4b5b288872923005f64d7" [label=""];
  "sha256:c32b65ebf4ae16f610eb6c3cc3f3e8f1cf002f5d89e4b5b288872923005f64d7" -> "sha256:92b3dc859da79961cf39b0b6d2e6a1923545f07536336568dc5d1fb82bd5e71b" [label=""];
  "sha256:92b3dc859da79961cf39b0b6d2e6a1923545f07536336568dc5d1fb82bd5e71b" -> "sha256:ffdf876296bd26fb085df061d74d794eea8b0b24249b779fcb20f56e8ad488bd" [label=""];
  "sha256:5e98c60b8928472bdc9a822e3ecc532e4b8ffae191e9ac33e7ed0b394be6cefb" -> "sha256:ffdf876296bd26fb085df061d74d794eea8b0b24249b779fcb20f56e8ad488bd" [label=""];
  "sha256:ffdf876296bd26fb085df061d74d794eea8b0b24249b779fcb20f56e8ad488bd" -> "sha256:51ce09aebc3cd09434b74c14f67210db075ef5814b1cd3f6b79015294a99fd30" [label=""];
  "sha256:51ce09aebc3cd09434b74c14f67210db075ef5814b1cd3f6b79015294a99fd30" -> "sha256:0fe66d1efea05764bed2cbe6207963f12a8db56df97971c317d2e393047f5bc8" [label=""];
  "sha256:426aad7abaee2eda378990b9b0715868b6be845b4c48e91e4cbea48b4e45ad4f" -> "sha256:0fe66d1efea05764bed2cbe6207963f12a8db56df97971c317d2e393047f5bc8" [label=""];
  "sha256:0fe66d1efea05764bed2cbe6207963f12a8db56df97971c317d2e393047f5bc8" -> "sha256:755c9b5a25973be703a9b5fae29b8538e4a8a36ca0226179ea5d387c3e7eab09" [label=""];
  "sha256:755c9b5a25973be703a9b5fae29b8538e4a8a36ca0226179ea5d387c3e7eab09" -> "sha256:8282d7a4df22a67b0a3cac8517aaa9ab3d941a348a63bb4436653896e315036d" [label=""];
  "sha256:8282d7a4df22a67b0a3cac8517aaa9ab3d941a348a63bb4436653896e315036d" -> "sha256:66d73864e7e3f4178076a672de432821b3708e038d62ede03afd5101197e5858" [label=""];
  "sha256:66d73864e7e3f4178076a672de432821b3708e038d62ede03afd5101197e5858" -> "sha256:ceb861e9a5f3eaa421d402d7f0c467a662cd9c54596f50f96ac8a855cf590f45" [label=""];
  "sha256:ceb861e9a5f3eaa421d402d7f0c467a662cd9c54596f50f96ac8a855cf590f45" -> "sha256:74c18dc01c6948732eb5f9b719d808b5b3e28333249c92dbfd18810ee5a1d142" [label=""];
  "sha256:74c18dc01c6948732eb5f9b719d808b5b3e28333249c92dbfd18810ee5a1d142" -> "sha256:69a33f7e2d9fed65ff74c42b2eb64836366d383a0947a702d07d4d02094219de" [label=""];
  "sha256:69a33f7e2d9fed65ff74c42b2eb64836366d383a0947a702d07d4d02094219de" -> "sha256:fb092a3bd0fbbda134ad5fd7c18771501dae8c443f740c9bd1d2350d61554e50" [label=""];
  "sha256:fb092a3bd0fbbda134ad5fd7c18771501dae8c443f740c9bd1d2350d61554e50" -> "sha256:e25b766c16a6c168df9b002d60b7594819ad646b1e86b2da33f412ffcf825a51" [label=""];
  "sha256:2b729313bfbe69f194a2b371a5eb26f9246aba86f13a328ad1ce22d2646fa9f5" -> "sha256:e25b766c16a6c168df9b002d60b7594819ad646b1e86b2da33f412ffcf825a51" [label=""];
  "sha256:e25b766c16a6c168df9b002d60b7594819ad646b1e86b2da33f412ffcf825a51" -> "sha256:89c4a8562c887ae32d0df9d67bef26524d810922d708310827cf472495325feb" [label=""];
  "sha256:89c4a8562c887ae32d0df9d67bef26524d810922d708310827cf472495325feb" -> "sha256:bc5378958aeb7afb661066534ba8cf1f9a945ba663cd06fd0fdab14d7dc3f339" [label=""];
  "sha256:516b2740a4419f76996758bede60013ea51174c80b1141e16ec272b5213e6d9f" -> "sha256:bc5378958aeb7afb661066534ba8cf1f9a945ba663cd06fd0fdab14d7dc3f339" [label=""];
  "sha256:bc5378958aeb7afb661066534ba8cf1f9a945ba663cd06fd0fdab14d7dc3f339" -> "sha256:cc163b21958753c7d6cca737f77442740e309016a7b0465ef53bd9e53aa5e12f" [label=""];
  "sha256:cc163b21958753c7d6cca737f77442740e309016a7b0465ef53bd9e53aa5e12f" -> "sha256:54ae037de4c3f6fb344c93e4dfe706620cb44f2eb09b88745dc9a9ab408165f7" [label=""];
  "sha256:54ae037de4c3f6fb344c93e4dfe706620cb44f2eb09b88745dc9a9ab408165f7" -> "sha256:ea792f4839675904718932be0f7843ca5e841613128798d0b23f4edbeaa05ed0" [label=""];
  "sha256:ea792f4839675904718932be0f7843ca5e841613128798d0b23f4edbeaa05ed0" -> "sha256:62b021b543ed32a20202615fcd3fcc2f85f9daacb08be4d0d421f3b8518e642c" [label=""];
  "sha256:62b021b543ed32a20202615fcd3fcc2f85f9daacb08be4d0d421f3b8518e642c" -> "sha256:50697662dd9a21b8470af17e54a81853d21a8cf4f59936fd6e6faae5b614eb2e" [label=""];
  "sha256:50697662dd9a21b8470af17e54a81853d21a8cf4f59936fd6e6faae5b614eb2e" -> "sha256:809c6f20f9ec509e8483a55404e5c7b36c7ff21d7ecf32721b414cbca6d96132" [label=""];
  "sha256:809c6f20f9ec509e8483a55404e5c7b36c7ff21d7ecf32721b414cbca6d96132" -> "sha256:bcef93b83af57f2881d7c182712e148dbb685436f268625c522aafe906bd4167" [label=""];
  "sha256:bcef93b83af57f2881d7c182712e148dbb685436f268625c522aafe906bd4167" -> "sha256:658cbfe1d0072a12c6c215718a2c894ef74dc9825638db600e8ca42679ea43bb" [label=""];
  "sha256:658cbfe1d0072a12c6c215718a2c894ef74dc9825638db600e8ca42679ea43bb" -> "sha256:6b9436270ddbc855e02dd18f010a5403f4ace72d53d764b2fe72b424183b46b9" [label=""];
  "sha256:6b9436270ddbc855e02dd18f010a5403f4ace72d53d764b2fe72b424183b46b9" -> "sha256:0efe60d19509c916462fd9b2bc464cd6ed6a5c8155c6d56c07feffab23493b3b" [label=""];
  "sha256:0efe60d19509c916462fd9b2bc464cd6ed6a5c8155c6d56c07feffab23493b3b" -> "sha256:dadd8815744778706d66186fc4baeda10cad32258f2881e15256dddcb51150c9" [label=""];
  "sha256:b9725ecb853febddcfbc46be385fd09b542c962ec41802e24ec5a5a928e68f13" -> "sha256:dadd8815744778706d66186fc4baeda10cad32258f2881e15256dddcb51150c9" [label=""];
  "sha256:dadd8815744778706d66186fc4baeda10cad32258f2881e15256dddcb51150c9" -> "sha256:3ced1d76c18d97db6649443bfd21dd06e3f59a0e6d8eaef9690db55ac29bf81c" [label=""];
  "sha256:3ced1d76c18d97db6649443bfd21dd06e3f59a0e6d8eaef9690db55ac29bf81c" -> "sha256:017c61cc2426785f297233799e3404057afffa2b2ebe49fd8552385cfbe57e2f" [label=""];
  "sha256:1fe78a44ea138618ed324ef85ce52f0b86c62cc087f381c8eebf92e2e34c61ae" -> "sha256:017c61cc2426785f297233799e3404057afffa2b2ebe49fd8552385cfbe57e2f" [label=""];
  "sha256:017c61cc2426785f297233799e3404057afffa2b2ebe49fd8552385cfbe57e2f" -> "sha256:124eba41e93be1049cc10b7ad616213795d61aa11f68ca44da736108a31ed5f1" [label=""];
  "sha256:124eba41e93be1049cc10b7ad616213795d61aa11f68ca44da736108a31ed5f1" -> "sha256:6d7162ad89d080be1ecf70f084fa308bc82e98efd57c75b5900b9e32170d2b5b" [label=""];
  "sha256:8850642489bc0a4dcc9aabac3334f75ccf199ea02e61a046acd6265dd3a5ce25" -> "sha256:6d7162ad89d080be1ecf70f084fa308bc82e98efd57c75b5900b9e32170d2b5b" [label=""];
  "sha256:6d7162ad89d080be1ecf70f084fa308bc82e98efd57c75b5900b9e32170d2b5b" -> "sha256:e64d7c0273e4bd8a65732522227e5594089977aef13ac0b90eaa99f2e5b76b66" [label=""];
  "sha256:ae42f0d421180a8ae0a47e8d3312403e079d9dec3a15583313910943a0ea7e97" -> "sha256:e64d7c0273e4bd8a65732522227e5594089977aef13ac0b90eaa99f2e5b76b66" [label=""];
  "sha256:e64d7c0273e4bd8a65732522227e5594089977aef13ac0b90eaa99f2e5b76b66" -> "sha256:48e97106f16ef0e6b5e73f5390193ba966bce831c7c783cc4be5631d5adf13b6" [label=""];
  "sha256:48e97106f16ef0e6b5e73f5390193ba966bce831c7c783cc4be5631d5adf13b6" -> "sha256:988ca677297a05f84660a6ee8a8947885e3bf8264ebb7bdeda6d247be5acbf85" [label=""];
  "sha256:988ca677297a05f84660a6ee8a8947885e3bf8264ebb7bdeda6d247be5acbf85" -> "sha256:2a8185fff27b5440c1496efbc1478986fac516ae01e1795ffb6003994a4f36f3" [label=""];
  "sha256:b7bfbc171701455c0b60d31f9229c88dda25b58ca435478f7068491cf0b10b76" -> "sha256:2a8185fff27b5440c1496efbc1478986fac516ae01e1795ffb6003994a4f36f3" [label=""];
  "sha256:2a8185fff27b5440c1496efbc1478986fac516ae01e1795ffb6003994a4f36f3" -> "sha256:eb6cd2547f6fd4c29f7960751f0c63662ee7c8d531d8ab1adb6d1e446310a477" [label=""];
  "sha256:eb6cd2547f6fd4c29f7960751f0c63662ee7c8d531d8ab1adb6d1e446310a477" -> "sha256:e579eaef3d2feb59cc81af78825165f9ebea403b9cb434fa2b5489457972ab90" [label=""];
  "sha256:e579eaef3d2feb59cc81af78825165f9ebea403b9cb434fa2b5489457972ab90" -> "sha256:97d9f23c5f99e3022123aab01441d810bc256c16a0b48241acda2f692b458680" [label=""];
  "sha256:97d9f23c5f99e3022123aab01441d810bc256c16a0b48241acda2f692b458680" -> "sha256:88c26eea4dfc7d8b8e8059528955d1c057d2a669cdb211dbb4f0fd06412b0cf1" [label=""];
  "sha256:88c26eea4dfc7d8b8e8059528955d1c057d2a669cdb211dbb4f0fd06412b0cf1" -> "sha256:7dcfb0e5419d4a66a3d8582c30cafca146b7083be4da6e0116d7dd7dae992f57" [label=""];
  "sha256:38abfd26ae2926ed6313a3e198afbfb48c9cc60ba97ec749445799feb16948e1" -> "sha256:7dcfb0e5419d4a66a3d8582c30cafca146b7083be4da6e0116d7dd7dae992f57" [label=""];
  "sha256:7dcfb0e5419d4a66a3d8582c30cafca146b7083be4da6e0116d7dd7dae992f57" -> "sha256:a62e9be5efdc46c47ee36326d5fac44cba3218fa0c644420485f59b4b2825ad6" [label=""];
  "sha256:a62e9be5efdc46c47ee36326d5fac44cba3218fa0c644420485f59b4b2825ad6" -> "sha256:f442d0c0cfb12d4771cdde2887fe0f66ecacb9798acd0c5443e564eb2040e63e" [label=""];
  "sha256:f442d0c0cfb12d4771cdde2887fe0f66ecacb9798acd0c5443e564eb2040e63e" -> "sha256:8666a1c8bef5fb17937599acd80e5fc5a6b0476b04d03bf54050e91faf7b45c9" [label=""];
  "sha256:8666a1c8bef5fb17937599acd80e5fc5a6b0476b04d03bf54050e91faf7b45c9" -> "sha256:76a02c3744a93f24f15797004c8aa2db1af7357806e77bfad06bf4b9f775710c" [label=""];
  "sha256:35a41f2bc7b3071e40b4ae500f3bd3452de46e259f595d88eea316c22b6a8548" -> "sha256:76a02c3744a93f24f15797004c8aa2db1af7357806e77bfad06bf4b9f775710c" [label=""];
  "sha256:76a02c3744a93f24f15797004c8aa2db1af7357806e77bfad06bf4b9f775710c" -> "sha256:a2e4838032bed243d4371d1157b171f3361fc577fb16f6adf561efcbffead2e5" [label=""];
  "sha256:9e492c31dc8ad4fd69abeafb32446290c14fb07fb453323e5fdf29841ae9d27d" -> "sha256:a2e4838032bed243d4371d1157b171f3361fc577fb16f6adf561efcbffead2e5" [label=""];
  "sha256:a2e4838032bed243d4371d1157b171f3361fc577fb16f6adf561efcbffead2e5" -> "sha256:5f48c9a3d7d283f90c95ddc430101c3c67e33df4e8a53f5e0dd9de47eb4f86f6" [label=""];
  "sha256:05dd37dd6365c1f44e91770be5c860eaee450f1ecbe50796872e4e03413eb48d" -> "sha256:5f48c9a3d7d283f90c95ddc430101c3c67e33df4e8a53f5e0dd9de47eb4f86f6" [label=""];
  "sha256:5f48c9a3d7d283f90c95ddc430101c3c67e33df4e8a53f5e0dd9de47eb4f86f6" -> "sha256:3d0dc563e7d093da37c2ec97a8ddfdb10375772b98d61d3832b1909f37ddc672" [label=""];
  "sha256:f735ec6f25684c5ec4fb7f8cab2d95c1c07641e912601e55584b6ad090143eec" -> "sha256:3d0dc563e7d093da37c2ec97a8ddfdb10375772b98d61d3832b1909f37ddc672" [label=""];
  "sha256:3d0dc563e7d093da37c2ec97a8ddfdb10375772b98d61d3832b1909f37ddc672" -> "sha256:4b10d9b5e2aaaa0c0b9a70e414f0dbb145498e2333f6bdfbbb0138b0d6bd4ee3" [label=""];
  "sha256:dddb2dbdaa56a23bdfae6d8fc13acbf51d8b6eba29a13eca3c63262bb00962cc" -> "sha256:4b10d9b5e2aaaa0c0b9a70e414f0dbb145498e2333f6bdfbbb0138b0d6bd4ee3" [label=""];
  "sha256:4b10d9b5e2aaaa0c0b9a70e414f0dbb145498e2333f6bdfbbb0138b0d6bd4ee3" -> "sha256:0463576d1d12a271c5becce1d64c6017924cbbac7a5a9a75c29f3945c80c0b30" [label=""];
  "sha256:cbb784d49ae9360a23c70ead1fc4ba84294912ae273c976460f79b78b78a3863" -> "sha256:0463576d1d12a271c5becce1d64c6017924cbbac7a5a9a75c29f3945c80c0b30" [label=""];
  "sha256:0463576d1d12a271c5becce1d64c6017924cbbac7a5a9a75c29f3945c80c0b30" -> "sha256:88a0f87402f26414a488b367f53198df65cc0bfe1838b64d3700d048f69fa275" [label=""];
  "sha256:cc8c93d769d26751bc13035e29c43be707fa3c5d342ff591e3a13faaa0c790cd" -> "sha256:88a0f87402f26414a488b367f53198df65cc0bfe1838b64d3700d048f69fa275" [label=""];
  "sha256:88a0f87402f26414a488b367f53198df65cc0bfe1838b64d3700d048f69fa275" -> "sha256:6f08a621033d9f54bdc6a00e7afc32c87b060335e302e865c22820a9f3b16908" [label=""];
  "sha256:41868362fe4cf6b7bbd2598323b4f995e92f311707dc6fe68dfa852f29dd1921" -> "sha256:6f08a621033d9f54bdc6a00e7afc32c87b060335e302e865c22820a9f3b16908" [label=""];
  "sha256:6f08a621033d9f54bdc6a00e7afc32c87b060335e302e865c22820a9f3b16908" -> "sha256:2a4f637f8f0897a02698d882e65a1e05a66520a30cb1b9ed6050c27ac44c218e" [label=""];
  "sha256:c632f6f3812df5086fe5326f0392f42a9c7eb3a7db07308eda4e641e4fc9635d" -> "sha256:2a4f637f8f0897a02698d882e65a1e05a66520a30cb1b9ed6050c27ac44c218e" [label=""];
  "sha256:2a4f637f8f0897a02698d882e65a1e05a66520a30cb1b9ed6050c27ac44c218e" -> "sha256:660cbf8e8835747011412a11c33b2479ac962b0fc5465526767b0d11c6da6c2b" [label=""];
  "sha256:c87bb8148cbdf7c396337b12a027b013917398fe3e2427cdb5d0dc8191a139d1" -> "sha256:660cbf8e8835747011412a11c33b2479ac962b0fc5465526767b0d11c6da6c2b" [label=""];
  "sha256:660cbf8e8835747011412a11c33b2479ac962b0fc5465526767b0d11c6da6c2b" -> "sha256:4936761650d46f2b1eddb7bc4d5d0815bdeb82d6b057be5598a20b8b7d29a28f" [label=""];
  "sha256:179d7590f8360b42f21e749052f7acf3f1907ff865d46cd66770b66a4a140bd8" -> "sha256:4936761650d46f2b1eddb7bc4d5d0815bdeb82d6b057be5598a20b8b7d29a28f" [label=""];
  "sha256:4936761650d46f2b1eddb7bc4d5d0815bdeb82d6b057be5598a20b8b7d29a28f" -> "sha256:464133ed26943ec189c7ffa00872cdad35cd6720c12dd5e430c34ce5ee73f66f" [label=""];
  "sha256:464133ed26943ec189c7ffa00872cdad35cd6720c12dd5e430c34ce5ee73f66f" -> "sha256:28caa4fc6fd4e873837e039c78ab0140d09381e348359a5435716d378504d5e8" [label=""];
  "sha256:28caa4fc6fd4e873837e039c78ab0140d09381e348359a5435716d378504d5e8" -> "sha256:23be09d7ee915e71a44323a14ab3eac506bff43179cee0880605e2532d2c7fa0" [label=""];
  "sha256:23be09d7ee915e71a44323a14ab3eac506bff43179cee0880605e2532d2c7fa0" -> "sha256:a314425c4f1e3fe474d2b44bde2013539d5cda639219cf2729e2722433ce30a6" [label=""];
}
