[app/sources/279222431.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:30b53e102ed8ea6f5c98fe2460eee3b379d8f5c07a696eb519ff80e95ddc7b02" [label="/bin/sh -c mkdir -p $MARVIN_HOME &&     mkdir -p $MARVIN_DATA_PATH &&     mkdir -p $MARVIN_ENGINE_HOME &&     mkdir -p /var/log/marvin/engines &&     mkdir -p /var/run/marvin/engines" shape="box"];
  "sha256:6a3815d1217fed01070ba0d4f29550be581628320834517a1a5280dcd2647405" [label="/bin/sh -c apt-get update -y &&     apt-get install -y build-essential &&     apt-get install -y maven git python cmake software-properties-common curl libstdc++6 &&     apt-get install -y git &&     apt-get install -y wget &&     apt-get install -y python2.7-dev &&     apt-get install -y python-pip &&     apt-get install -y ipython &&     apt-get install -y libffi-dev &&     apt-get install -y libssl-dev &&     apt-get install -y libxml2-dev &&     apt-get install -y libxslt1-dev &&     apt-get install -y libpng12-dev &&     apt-get install -y libfreetype6-dev &&     apt-get install -y python-tk &&     apt-get install -y libsasl2-dev &&     apt-get install -y python-pip &&     apt-get install -y graphviz &&     pip install --upgrade pip &&     apt-get clean" shape="box"];
  "sha256:913b93df0baf1eb64231a0ee923553690d63104ff4e87378aa6ad098394026e3" [label="/bin/sh -c pip install virtualenvwrapper" shape="box"];
  "sha256:9142bc7ab4f0577526b5089a7d40a698b187146bc09155d3760df4b51418c945" [label="/bin/sh -c add-apt-repository ppa:webupd8team/java -y &&     apt-get -qq update &&     echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections &&     echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections &&     apt-get install -y oracle-java8-installer" shape="box"];
  "sha256:53ba1ff095bac29037d252fbff2e5599c9d614700cf3754fd44072658a713108" [label="/bin/sh -c mkdir -p $SPARK_CONF_DIR" shape="box"];
  "sha256:8f817db8f5284592ffc361d4996bf9f020c46866cea01687125c08e41456e475" [label="/bin/sh -c /bin/bash -c \"cd $MARVIN_ENGINE_HOME &&     source /usr/local/bin/virtualenvwrapper.sh &&     mkvirtualenv $MARVIN_ENGINE_ENV\"" shape="box"];
  "sha256:7d7e1d9886c602601aef23e73001c9d4156bc85d087264b9bba2471a637ba455" [label="local://context" shape="ellipse"];
  "sha256:f89b1f59ba4f86e11381abe560e5c17259fed23cf4974d25b6f2d2b724148f19" [label="copy{src=/build/engine.tar, dest=/opt/marvin/engine}" shape="note"];
  "sha256:844a677e6d3cec6c5c76dcbeb63628f7ef44eb93c390f9dab1ec49b9b4fecc51" [label="copy{src=/build/marvin-engine-executor-assembly.jar, dest=/marvin-data}" shape="note"];
  "sha256:87a1e12960e8f4d85454f25eeb0e7c6f61adb6b7913c55037ce4f8621c91d980" [label="/bin/sh -c /bin/bash -c \"source /usr/local/bin/virtualenvwrapper.sh &&     workon $MARVIN_ENGINE_ENV &&     cd $MARVIN_ENGINE_HOME &&     pip install . --process-dependency-links\"" shape="box"];
  "sha256:005b4110a93ab39d8ccb62652910ccd4ec3414c6938a931fdc66a39d58cd2d1d" [label="sha256:005b4110a93ab39d8ccb62652910ccd4ec3414c6938a931fdc66a39d58cd2d1d" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:30b53e102ed8ea6f5c98fe2460eee3b379d8f5c07a696eb519ff80e95ddc7b02" [label=""];
  "sha256:30b53e102ed8ea6f5c98fe2460eee3b379d8f5c07a696eb519ff80e95ddc7b02" -> "sha256:6a3815d1217fed01070ba0d4f29550be581628320834517a1a5280dcd2647405" [label=""];
  "sha256:6a3815d1217fed01070ba0d4f29550be581628320834517a1a5280dcd2647405" -> "sha256:913b93df0baf1eb64231a0ee923553690d63104ff4e87378aa6ad098394026e3" [label=""];
  "sha256:913b93df0baf1eb64231a0ee923553690d63104ff4e87378aa6ad098394026e3" -> "sha256:9142bc7ab4f0577526b5089a7d40a698b187146bc09155d3760df4b51418c945" [label=""];
  "sha256:9142bc7ab4f0577526b5089a7d40a698b187146bc09155d3760df4b51418c945" -> "sha256:53ba1ff095bac29037d252fbff2e5599c9d614700cf3754fd44072658a713108" [label=""];
  "sha256:53ba1ff095bac29037d252fbff2e5599c9d614700cf3754fd44072658a713108" -> "sha256:8f817db8f5284592ffc361d4996bf9f020c46866cea01687125c08e41456e475" [label=""];
  "sha256:8f817db8f5284592ffc361d4996bf9f020c46866cea01687125c08e41456e475" -> "sha256:f89b1f59ba4f86e11381abe560e5c17259fed23cf4974d25b6f2d2b724148f19" [label=""];
  "sha256:7d7e1d9886c602601aef23e73001c9d4156bc85d087264b9bba2471a637ba455" -> "sha256:f89b1f59ba4f86e11381abe560e5c17259fed23cf4974d25b6f2d2b724148f19" [label=""];
  "sha256:f89b1f59ba4f86e11381abe560e5c17259fed23cf4974d25b6f2d2b724148f19" -> "sha256:844a677e6d3cec6c5c76dcbeb63628f7ef44eb93c390f9dab1ec49b9b4fecc51" [label=""];
  "sha256:7d7e1d9886c602601aef23e73001c9d4156bc85d087264b9bba2471a637ba455" -> "sha256:844a677e6d3cec6c5c76dcbeb63628f7ef44eb93c390f9dab1ec49b9b4fecc51" [label=""];
  "sha256:844a677e6d3cec6c5c76dcbeb63628f7ef44eb93c390f9dab1ec49b9b4fecc51" -> "sha256:87a1e12960e8f4d85454f25eeb0e7c6f61adb6b7913c55037ce4f8621c91d980" [label=""];
  "sha256:87a1e12960e8f4d85454f25eeb0e7c6f61adb6b7913c55037ce4f8621c91d980" -> "sha256:005b4110a93ab39d8ccb62652910ccd4ec3414c6938a931fdc66a39d58cd2d1d" [label=""];
}

