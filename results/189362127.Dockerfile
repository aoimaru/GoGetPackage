[app/sources/189362127.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:720ed9628930e9407dc412d838ba1b97601221add039856a778c74e425407e1e" [label="/bin/sh -c apt-get update &&   apt-get install -y python python-dev python-pip python-virtualenv &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:006aba090ed0ffba77ed19fd129b35506f8427b699c265d5ec2738d75b4b98ce" [label="/bin/sh -c echo \"deb http://cran.rstudio.com/bin/linux/ubuntu xenial/\" | tee -a /etc/apt/sources.list &&     gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9 &&     gpg -a --export E084DAB9 | apt-key add - &&     apt-get update &&     apt-get install -y r-base r-base-dev" shape="box"];
  "sha256:e49bddae06840f095550d635a5a12b423231560f0ca200af63152655b0a48e76" [label="/bin/sh -c sed -i 's/# \\(.*multiverse$\\)/\\1/g' /etc/apt/sources.list &&   apt-get update &&   apt-get -y upgrade &&   apt-get install -y build-essential &&   apt-get install -y software-properties-common &&   apt-get install -y byobu curl git htop man unzip nano wget &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d67af76cf33d2e935d56e34dea165d5373ff90653856afbe77f928004486f009" [label="/bin/sh -c echo oracle-java${JAVA_MAJOR_VERSION}-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections &&   add-apt-repository -y ppa:webupd${JAVA_MAJOR_VERSION}team/java &&   apt-get update &&   apt-get install -y oracle-java${JAVA_MAJOR_VERSION}-installer &&   rm -rf /var/lib/apt/lists/* &&   rm -rf /var/cache/oracle-jdk${JAVA_MAJOR_VERSION}-installer" shape="box"];
  "sha256:d901a9b0b108dac5e5b16889f9eb9c04fa70c92157261aa9cf983a48105e6a4a" [label="/bin/sh -c apt-get install git" shape="box"];
  "sha256:8a5cbf68a053965f32114a649f6ecce1869d7b0c4d773b4c1d76f75d59fd7639" [label="/bin/sh -c git clone  --depth 1 --branch ${SPARK_VERSION} https://github.com/apache/spark.git" shape="box"];
  "sha256:7fae7a720c5a3e4011b46f93c5f7ab5cf97dda5f0bb4763bab3388261db01c0f" [label="mkdir{path=/spark}" shape="note"];
  "sha256:9d26a4d3128e42f346f3fde7f4b70e93d563267f9c9166868c199514b2f18b7f" [label="/bin/sh -c ./R/install-dev.sh" shape="box"];
  "sha256:08c5b17936e3c937ecfa66027ecf924bba505b82cf4b4c2b59ff3fad2f34ea26" [label="/bin/sh -c ./build/mvn -Pyarn -Psparkr -Pmesos -Phive -Phive-thriftserver -Phadoop-${MAJOR_HADOOP_VERSION} -Dhadoop.version=${MAJOR_HADOOP_VERSION}.0 -DskipTests clean package" shape="box"];
  "sha256:c00b4df5d68f2f63ea9842800d669eb4c1c9fa8212d2cf1cab8e8507e8fe6f8a" [label="sha256:c00b4df5d68f2f63ea9842800d669eb4c1c9fa8212d2cf1cab8e8507e8fe6f8a" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:720ed9628930e9407dc412d838ba1b97601221add039856a778c74e425407e1e" [label=""];
  "sha256:720ed9628930e9407dc412d838ba1b97601221add039856a778c74e425407e1e" -> "sha256:006aba090ed0ffba77ed19fd129b35506f8427b699c265d5ec2738d75b4b98ce" [label=""];
  "sha256:006aba090ed0ffba77ed19fd129b35506f8427b699c265d5ec2738d75b4b98ce" -> "sha256:e49bddae06840f095550d635a5a12b423231560f0ca200af63152655b0a48e76" [label=""];
  "sha256:e49bddae06840f095550d635a5a12b423231560f0ca200af63152655b0a48e76" -> "sha256:d67af76cf33d2e935d56e34dea165d5373ff90653856afbe77f928004486f009" [label=""];
  "sha256:d67af76cf33d2e935d56e34dea165d5373ff90653856afbe77f928004486f009" -> "sha256:d901a9b0b108dac5e5b16889f9eb9c04fa70c92157261aa9cf983a48105e6a4a" [label=""];
  "sha256:d901a9b0b108dac5e5b16889f9eb9c04fa70c92157261aa9cf983a48105e6a4a" -> "sha256:8a5cbf68a053965f32114a649f6ecce1869d7b0c4d773b4c1d76f75d59fd7639" [label=""];
  "sha256:8a5cbf68a053965f32114a649f6ecce1869d7b0c4d773b4c1d76f75d59fd7639" -> "sha256:7fae7a720c5a3e4011b46f93c5f7ab5cf97dda5f0bb4763bab3388261db01c0f" [label=""];
  "sha256:7fae7a720c5a3e4011b46f93c5f7ab5cf97dda5f0bb4763bab3388261db01c0f" -> "sha256:9d26a4d3128e42f346f3fde7f4b70e93d563267f9c9166868c199514b2f18b7f" [label=""];
  "sha256:9d26a4d3128e42f346f3fde7f4b70e93d563267f9c9166868c199514b2f18b7f" -> "sha256:08c5b17936e3c937ecfa66027ecf924bba505b82cf4b4c2b59ff3fad2f34ea26" [label=""];
  "sha256:08c5b17936e3c937ecfa66027ecf924bba505b82cf4b4c2b59ff3fad2f34ea26" -> "sha256:c00b4df5d68f2f63ea9842800d669eb4c1c9fa8212d2cf1cab8e8507e8fe6f8a" [label=""];
}

