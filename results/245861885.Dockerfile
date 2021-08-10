[app/sources/245861885.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:172b7e87f03c3c175e570aaea2ec35765e17cd888afa499e6e4c1c1112f328d2" [label="/bin/sh -c apt-get update && apt-get -y install curl git-core" shape="box"];
  "sha256:80c3b9462dcb8cc4c3062881e9d7bbe240124a065925415c21b712f2194c6d4b" [label="/bin/sh -c ln -s /usr/bin/python3 /usr/bin/python" shape="box"];
  "sha256:19d8095f9017c4fd691f1d4e34cc4db39eda909e0fa561b4f9a743d24be99d16" [label="/bin/sh -c apt-get -y install build-essential python3-dev python3-setuptools python3-distutils-extra" shape="box"];
  "sha256:f92bc2e5ec7860837d9df8cfc93c33ed1c55cd3eb4d6160f7117d7fa7d7f99a6" [label="/bin/sh -c easy_install3 pip" shape="box"];
  "sha256:b300e8865eaeba2b6d4cb2563f51fb53396dff1b17cb32b3be49892b8b4531cd" [label="/bin/sh -c pip3 install --upgrade pip" shape="box"];
  "sha256:e07d395959ea991be84c1c65902e051d619f2e324f6eb3a8209b189e969a9d1c" [label="/bin/sh -c pip3 install --upgrade awscli                            jupyter                            matplotlib                            mrjob                            tweepy                            numpy                            sklearn                            scipy" shape="box"];
  "sha256:c17399ac494bb9a5555e87f0a197d7ca417c06e9d7474e2ff513300fff4ad667" [label="/bin/sh -c echo 'deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main' >> /etc/apt/sources.list &&     echo 'deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main' >> /etc/apt/sources.list &&     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886 &&     apt-get update &&     echo oracle-java${JAVA_VER}-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections &&     apt-get install -y --force-yes --no-install-recommends oracle-java${JAVA_VER}-installer oracle-java${JAVA_VER}-set-default &&     apt-get clean &&     rm -rf /var/cache/oracle-jdk${JAVA_VER}-installer" shape="box"];
  "sha256:cda63eb5dc8a96bcfa0a9d81ea6cb1c13b3903e82ea10feaf851acd57f6cf1ab" [label="/bin/sh -c curl -s $SPARK_ARCHIVE | tar -xz -C /usr/local/" shape="box"];
  "sha256:2eddf245cdbef16c62acaea87f1333e1ba6b13b57e411087c60130931239f09c" [label="/bin/sh -c echo \"#!/bin/bash \\naws emr create-cluster --release-label emr-5.5.0  --name 'emr-5.5.0 sparklyr + jupyter cli example'  --applications Name=Hadoop Name=Hive Name=Spark Name=Pig Name=Tez Name=Ganglia Name=Presto  --ec2-attributes KeyName=\\${1},InstanceProfile=EMR_EC2_DefaultRole  --service-role EMR_DefaultRole  --instance-groups    InstanceGroupType=MASTER,InstanceCount=1,InstanceType=c3.4xlarge    InstanceGroupType=CORE,InstanceCount=4,InstanceType=c3.4xlarge  --region us-east-1  --log-uri s3://\\${2}/emr-logs/  --bootstrap-actions Name='Install Jupyter notebook',Path='s3://aws-bigdata-blog/artifacts/aws-blog-emr-jupyter/install-jupyter-emr5.sh',Args=[--ds-packages,--ml-packages,--python-packages,'matplotlib tweepy sklearn scipy',--port,8880,--password,jupyter,--jupyterhub,--jupyterhub-port,8001,--cached-install,--notebook-dir,s3://\\${2}/notebooks/,--copy-samples]\" > /usr/local/bin/create-emr-cluster" shape="box"];
  "sha256:9f9d75d53481fef7dab46d9f92acc31df7ca99d79e6fb0c112861cf1e3db2ad6" [label="/bin/sh -c chmod +x /usr/local/bin/create-emr-cluster" shape="box"];
  "sha256:c62f50d7eb4c06358c05da63b069807c0168b037f86128a168a22ba5f9e53b2e" [label="/bin/sh -c useradd --create-home --shell /bin/bash student" shape="box"];
  "sha256:3cf93a92ec69770591356c28acd67189b974a6a5ff9f02f6cbc6f7b9203e4ac6" [label="/bin/sh -c cd /home/student && git clone https://github.com/a4tunado/lectures-hse-spark.git" shape="box"];
  "sha256:df0d200ca285514eb3e0aba998a383477b60b3a4b2a33de889e78ed8ae1b8246" [label="mkdir{path=/home/student/lectures-hse-spark}" shape="note"];
  "sha256:5483b79755e103c7467e2e4b719e152b30287ccf2b14fe747b4b8d44ef4a8285" [label="sha256:5483b79755e103c7467e2e4b719e152b30287ccf2b14fe747b4b8d44ef4a8285" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:172b7e87f03c3c175e570aaea2ec35765e17cd888afa499e6e4c1c1112f328d2" [label=""];
  "sha256:172b7e87f03c3c175e570aaea2ec35765e17cd888afa499e6e4c1c1112f328d2" -> "sha256:80c3b9462dcb8cc4c3062881e9d7bbe240124a065925415c21b712f2194c6d4b" [label=""];
  "sha256:80c3b9462dcb8cc4c3062881e9d7bbe240124a065925415c21b712f2194c6d4b" -> "sha256:19d8095f9017c4fd691f1d4e34cc4db39eda909e0fa561b4f9a743d24be99d16" [label=""];
  "sha256:19d8095f9017c4fd691f1d4e34cc4db39eda909e0fa561b4f9a743d24be99d16" -> "sha256:f92bc2e5ec7860837d9df8cfc93c33ed1c55cd3eb4d6160f7117d7fa7d7f99a6" [label=""];
  "sha256:f92bc2e5ec7860837d9df8cfc93c33ed1c55cd3eb4d6160f7117d7fa7d7f99a6" -> "sha256:b300e8865eaeba2b6d4cb2563f51fb53396dff1b17cb32b3be49892b8b4531cd" [label=""];
  "sha256:b300e8865eaeba2b6d4cb2563f51fb53396dff1b17cb32b3be49892b8b4531cd" -> "sha256:e07d395959ea991be84c1c65902e051d619f2e324f6eb3a8209b189e969a9d1c" [label=""];
  "sha256:e07d395959ea991be84c1c65902e051d619f2e324f6eb3a8209b189e969a9d1c" -> "sha256:c17399ac494bb9a5555e87f0a197d7ca417c06e9d7474e2ff513300fff4ad667" [label=""];
  "sha256:c17399ac494bb9a5555e87f0a197d7ca417c06e9d7474e2ff513300fff4ad667" -> "sha256:cda63eb5dc8a96bcfa0a9d81ea6cb1c13b3903e82ea10feaf851acd57f6cf1ab" [label=""];
  "sha256:cda63eb5dc8a96bcfa0a9d81ea6cb1c13b3903e82ea10feaf851acd57f6cf1ab" -> "sha256:2eddf245cdbef16c62acaea87f1333e1ba6b13b57e411087c60130931239f09c" [label=""];
  "sha256:2eddf245cdbef16c62acaea87f1333e1ba6b13b57e411087c60130931239f09c" -> "sha256:9f9d75d53481fef7dab46d9f92acc31df7ca99d79e6fb0c112861cf1e3db2ad6" [label=""];
  "sha256:9f9d75d53481fef7dab46d9f92acc31df7ca99d79e6fb0c112861cf1e3db2ad6" -> "sha256:c62f50d7eb4c06358c05da63b069807c0168b037f86128a168a22ba5f9e53b2e" [label=""];
  "sha256:c62f50d7eb4c06358c05da63b069807c0168b037f86128a168a22ba5f9e53b2e" -> "sha256:3cf93a92ec69770591356c28acd67189b974a6a5ff9f02f6cbc6f7b9203e4ac6" [label=""];
  "sha256:3cf93a92ec69770591356c28acd67189b974a6a5ff9f02f6cbc6f7b9203e4ac6" -> "sha256:df0d200ca285514eb3e0aba998a383477b60b3a4b2a33de889e78ed8ae1b8246" [label=""];
  "sha256:df0d200ca285514eb3e0aba998a383477b60b3a4b2a33de889e78ed8ae1b8246" -> "sha256:5483b79755e103c7467e2e4b719e152b30287ccf2b14fe747b4b8d44ef4a8285" [label=""];
}

