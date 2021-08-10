[app/sources/206266988.Dockerfile]
digraph {
  "sha256:8b98db3672025fd2b019692917c05b3ff838e247c0ad1e1f882bcad69d4adb80" [label="local://context" shape="ellipse"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:a0c012a9f4d4f42f04555697886fdad0de70e5f81fa0ea84a46b72942902f6ee" [label="/bin/sh -c apt-get update &&     apt-get upgrade -y &&     apt-get install -y       imagemagick       procps       unoconv       &&     apt-get clean" shape="box"];
  "sha256:8bc38ef1c9d592e4dfb77ace439dff793c9d531a7ac95a45d59508a69b3c4602" [label="/bin/sh -c groupadd -g 1000 elasticsearch &&     groupadd -g 1001 fess &&     useradd -u 1000 elasticsearch -g elasticsearch &&     useradd -u 1001 fess -g fess" shape="box"];
  "sha256:c283334f74b22e67feeaf83ce657bfdb68a7ba67794e9ff722f5d4f8fe15c9fa" [label="/bin/sh -c set -x &&     wget --progress=dot:mega ${ES_DOWNLOAD_URL}/elasticsearch-${ELASTIC_VERSION}.deb -O /tmp/elasticsearch-${ELASTIC_VERSION}.deb &&     dpkg -i /tmp/elasticsearch-${ELASTIC_VERSION}.deb &&     rm -rf /tmp/elasticsearch-${ELASTIC_VERSION}.deb &&         wget --progress=dot:mega https://github.com/codelibs/fess/releases/download/fess-${FESS_VERSION}/fess-${FESS_VERSION}.deb -O /tmp/fess-${FESS_VERSION}.deb &&     dpkg -i /tmp/fess-${FESS_VERSION}.deb &&     rm -rf /tmp/fess-${FESS_VERSION}.deb" shape="box"];
  "sha256:d93de92fd77f238093b5f3ce547e263b2c902eda32032ef007076550f360c7ee" [label="/bin/sh -c mkdir /opt/fess &&     chown -R fess.fess /opt/fess &&     sed -i -e 's#FESS_CLASSPATH=\"$FESS_CONF_PATH:$FESS_CLASSPATH\"#FESS_CLASSPATH=\"/opt/fess:$FESS_CONF_PATH:$FESS_CLASSPATH\"#g' /usr/share/fess/bin/fess" shape="box"];
  "sha256:9dfef2aa8b1e368eeffa5f89dc4aa257170bc06ed646e4776fe6cf819a6fa943" [label="/bin/sh -c /usr/share/elasticsearch/bin/elasticsearch-plugin install org.codelibs:elasticsearch-analysis-fess:6.1.0 &&     /usr/share/elasticsearch/bin/elasticsearch-plugin install org.codelibs:elasticsearch-analysis-ja:6.1.0 &&     /usr/share/elasticsearch/bin/elasticsearch-plugin install org.codelibs:elasticsearch-analysis-synonym:6.1.0 &&     /usr/share/elasticsearch/bin/elasticsearch-plugin install org.codelibs:elasticsearch-configsync:6.1.2 &&     /usr/share/elasticsearch/bin/elasticsearch-plugin install org.codelibs:elasticsearch-dataformat:6.1.1 &&     /usr/share/elasticsearch/bin/elasticsearch-plugin install org.codelibs:elasticsearch-langfield:6.1.0 &&     /usr/share/elasticsearch/bin/elasticsearch-plugin install org.codelibs:elasticsearch-minhash:6.1.0" shape="box"];
  "sha256:e83b33320cd5da84257e1211b5a884ed4747c767e614c747961c8da4329b66c3" [label="copy{src=/elasticsearch/config, dest=/etc/elasticsearch}" shape="note"];
  "sha256:cdf2b49c42c45c9165571f99a378e3847bdad222377704ebc1285bd175bdd03b" [label="copy{src=/fess/config, dest=/etc/fess}" shape="note"];
  "sha256:fea01a3ef2003b0c20ebfd86b7cb7ed9a2c857dd1866f376b890cc58485f032f" [label="mkdir{path=/usr/share/fess}" shape="note"];
  "sha256:80479c79adb3124426f9a5e49b11d28bb88be6ffb3b7385f06ddb00b55ea9fb1" [label="copy{src=/run.sh, dest=/etc/run.sh}" shape="note"];
  "sha256:14334955425e6e442635322b0cca1e43bcce8f74cabd09c420a60d990ce38c2b" [label="sha256:14334955425e6e442635322b0cca1e43bcce8f74cabd09c420a60d990ce38c2b" shape="plaintext"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:a0c012a9f4d4f42f04555697886fdad0de70e5f81fa0ea84a46b72942902f6ee" [label=""];
  "sha256:a0c012a9f4d4f42f04555697886fdad0de70e5f81fa0ea84a46b72942902f6ee" -> "sha256:8bc38ef1c9d592e4dfb77ace439dff793c9d531a7ac95a45d59508a69b3c4602" [label=""];
  "sha256:8bc38ef1c9d592e4dfb77ace439dff793c9d531a7ac95a45d59508a69b3c4602" -> "sha256:c283334f74b22e67feeaf83ce657bfdb68a7ba67794e9ff722f5d4f8fe15c9fa" [label=""];
  "sha256:c283334f74b22e67feeaf83ce657bfdb68a7ba67794e9ff722f5d4f8fe15c9fa" -> "sha256:d93de92fd77f238093b5f3ce547e263b2c902eda32032ef007076550f360c7ee" [label=""];
  "sha256:d93de92fd77f238093b5f3ce547e263b2c902eda32032ef007076550f360c7ee" -> "sha256:9dfef2aa8b1e368eeffa5f89dc4aa257170bc06ed646e4776fe6cf819a6fa943" [label=""];
  "sha256:9dfef2aa8b1e368eeffa5f89dc4aa257170bc06ed646e4776fe6cf819a6fa943" -> "sha256:e83b33320cd5da84257e1211b5a884ed4747c767e614c747961c8da4329b66c3" [label=""];
  "sha256:8b98db3672025fd2b019692917c05b3ff838e247c0ad1e1f882bcad69d4adb80" -> "sha256:e83b33320cd5da84257e1211b5a884ed4747c767e614c747961c8da4329b66c3" [label=""];
  "sha256:e83b33320cd5da84257e1211b5a884ed4747c767e614c747961c8da4329b66c3" -> "sha256:cdf2b49c42c45c9165571f99a378e3847bdad222377704ebc1285bd175bdd03b" [label=""];
  "sha256:8b98db3672025fd2b019692917c05b3ff838e247c0ad1e1f882bcad69d4adb80" -> "sha256:cdf2b49c42c45c9165571f99a378e3847bdad222377704ebc1285bd175bdd03b" [label=""];
  "sha256:cdf2b49c42c45c9165571f99a378e3847bdad222377704ebc1285bd175bdd03b" -> "sha256:fea01a3ef2003b0c20ebfd86b7cb7ed9a2c857dd1866f376b890cc58485f032f" [label=""];
  "sha256:fea01a3ef2003b0c20ebfd86b7cb7ed9a2c857dd1866f376b890cc58485f032f" -> "sha256:80479c79adb3124426f9a5e49b11d28bb88be6ffb3b7385f06ddb00b55ea9fb1" [label=""];
  "sha256:8b98db3672025fd2b019692917c05b3ff838e247c0ad1e1f882bcad69d4adb80" -> "sha256:80479c79adb3124426f9a5e49b11d28bb88be6ffb3b7385f06ddb00b55ea9fb1" [label=""];
  "sha256:80479c79adb3124426f9a5e49b11d28bb88be6ffb3b7385f06ddb00b55ea9fb1" -> "sha256:14334955425e6e442635322b0cca1e43bcce8f74cabd09c420a60d990ce38c2b" [label=""];
}

