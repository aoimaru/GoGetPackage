[app/sources/352387591.Dockerfile]
digraph {
  "sha256:3f503d6190f7f15aefdf8663ed80f92bbdc553db0a5cb98cfa44e1abdd0e1520" [label="docker-image://docker.io/s390x/ubuntu:16.04" shape="ellipse"];
  "sha256:67fbcbd25ea9fe12599b72dd439cef88beb29641d599b018bcf5cf291b0460dc" [label="mkdir{path=/tmp/source}" shape="note"];
  "sha256:22f56a42779812b3f1f3b0e61ee396a88dcbd41eadfa0ee412486c9e2bc028e7" [label="/bin/sh -c apt-get update -y && apt-get -y install     git     openjdk-8-jdk     unzip     wget  && cd $SOURCE_DIR  && wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-${SONARQUBE_VER}.zip  && unzip sonarqube-${SONARQUBE_VER}.zip  && wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.2.0.1227-linux.zip  && unzip sonar-scanner-cli-3.2.0.1227-linux.zip  && rm -rf sonarqube-${SONARQUBE_VER}.zip sonar-scanner-cli-3.2.0.1227-linux.zip  && cp -r $SOURCE_DIR/sonarqube-${SONARQUBE_VER} $SOURCE_DIR/sonarqube  && cp -r $SOURCE_DIR/sonarqube /opt  &&  rm -rf $SOURCE_DIR  && apt-get remove -y     git     perl     unzip     wget  && apt-get autoremove -y  && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:eecdd1e57b8c1763fbb2ffec41d681cb59582ba4c1451ac24c8061b82d929d02" [label="mkdir{path=/opt/sonarqube/lib}" shape="note"];
  "sha256:47a6aa83d01b48d9829f8dc04455b87bbc24ccf56b1891ce51373281cd35c84f" [label="sha256:47a6aa83d01b48d9829f8dc04455b87bbc24ccf56b1891ce51373281cd35c84f" shape="plaintext"];
  "sha256:3f503d6190f7f15aefdf8663ed80f92bbdc553db0a5cb98cfa44e1abdd0e1520" -> "sha256:67fbcbd25ea9fe12599b72dd439cef88beb29641d599b018bcf5cf291b0460dc" [label=""];
  "sha256:67fbcbd25ea9fe12599b72dd439cef88beb29641d599b018bcf5cf291b0460dc" -> "sha256:22f56a42779812b3f1f3b0e61ee396a88dcbd41eadfa0ee412486c9e2bc028e7" [label=""];
  "sha256:22f56a42779812b3f1f3b0e61ee396a88dcbd41eadfa0ee412486c9e2bc028e7" -> "sha256:eecdd1e57b8c1763fbb2ffec41d681cb59582ba4c1451ac24c8061b82d929d02" [label=""];
  "sha256:eecdd1e57b8c1763fbb2ffec41d681cb59582ba4c1451ac24c8061b82d929d02" -> "sha256:47a6aa83d01b48d9829f8dc04455b87bbc24ccf56b1891ce51373281cd35c84f" [label=""];
}

