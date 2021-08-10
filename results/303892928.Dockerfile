[app/sources/303892928.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:33c6f2e73706f82b7667f378b7aed82d0431ab2a63134fc0ada49beb371571f1" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common" shape="box"];
  "sha256:c0d9bdbf53d2a9daa92e8b32137e4fd491c1ffc6bf2751f89d27a7d33a69165b" [label="/bin/sh -c apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886 && \tDEBIAN_FRONTEND=noninteractive add-apt-repository -y ppa:webupd8team/java && \tapt-get update && \techo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections &&\tDEBIAN_FRONTEND=noninteractive apt-get install -y oracle-java8-installer" shape="box"];
  "sha256:b36161d166eeaf6c035c37eb1b042688b0bd22630119acf055b7628463d4a83c" [label="/bin/sh -c wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.3.1.tar.gz && \ttar xf elasticsearch-1.3.1.tar.gz && \trm elasticsearch-1.3.1.tar.gz && \tmv elasticsearch-1.3.1 elasticsearch" shape="box"];
  "sha256:d2085bc1238c36f777d17e919606ca5b0a50e20ebb49c7c943410c9732edbb6e" [label="/bin/sh -c wget https://download.elasticsearch.org/logstash/logstash/logstash-1.4.2.tar.gz && \ttar xf logstash-1.4.2.tar.gz && \trm logstash-1.4.2.tar.gz && \tmv logstash-1.4.2 logstash && \ttouch logstash.conf && \techo 'input { tcp { port => 3333 type => \"text event\"} tcp { port => 3334 type => \"json event\" codec => json_lines {} } }' >> logstash.conf && \techo 'output { elasticsearch { host => localhost } }' >> logstash.conf" shape="box"];
  "sha256:a1605d8e9839cf6ffbc116968091d788f014617fa9cfa111f6605399e72116f6" [label="/bin/sh -c wget https://download.elasticsearch.org/kibana/kibana/kibana-3.1.0.tar.gz && \ttar xf kibana-3.1.0.tar.gz && \trm kibana-3.1.0.tar.gz && \tmv kibana-3.1.0  kibana" shape="box"];
  "sha256:16d97c748fc1298b1cc322590018237b30e067e9c062de5c316bb687df8f2381" [label="/bin/sh -c apt-get update && \tapt-get install -y curl" shape="box"];
  "sha256:5c66720803398fd6c391590810f9369b6298d714d615704443a321f545a1eaad" [label="/bin/sh -c apt-get update && \tDEBIAN_FRONTEND=noninteractive apt-get install -y nginx && \tsed -i -e 's/www-data/root/g' /etc/nginx/nginx.conf" shape="box"];
  "sha256:40fe6079350a4a41b3bbb8a145957c198e7ccc391df17a59aecf9e5763ce7e56" [label="/bin/sh -c mv /usr/share/nginx/html /usr/share/nginx/html_orig && \tmkdir /usr/share/nginx/html && \tcp -r /kibana/* /usr/share/nginx/html" shape="box"];
  "sha256:0a3eeffed58bf1910729d470ed655c4c1fe07b9257695510b05cbcad9a0ff005" [label="/bin/sh -c touch elk_start.sh && \techo '#!/bin/bash' >> elk_start.sh && \techo '/elasticsearch/bin/elasticsearch &' >> elk_start.sh && \techo '/etc/init.d/nginx start &' >> elk_start.sh && \techo 'exec /logstash/bin/logstash agent -f /logstash.conf' >> elk_start.sh && \tchmod 777 elk_start.sh" shape="box"];
  "sha256:d9c3f9ae1d82afd9693f5c1b44742b29f42a30f661f7b923bce0e023bc72183f" [label="sha256:d9c3f9ae1d82afd9693f5c1b44742b29f42a30f661f7b923bce0e023bc72183f" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label=""];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" -> "sha256:33c6f2e73706f82b7667f378b7aed82d0431ab2a63134fc0ada49beb371571f1" [label=""];
  "sha256:33c6f2e73706f82b7667f378b7aed82d0431ab2a63134fc0ada49beb371571f1" -> "sha256:c0d9bdbf53d2a9daa92e8b32137e4fd491c1ffc6bf2751f89d27a7d33a69165b" [label=""];
  "sha256:c0d9bdbf53d2a9daa92e8b32137e4fd491c1ffc6bf2751f89d27a7d33a69165b" -> "sha256:b36161d166eeaf6c035c37eb1b042688b0bd22630119acf055b7628463d4a83c" [label=""];
  "sha256:b36161d166eeaf6c035c37eb1b042688b0bd22630119acf055b7628463d4a83c" -> "sha256:d2085bc1238c36f777d17e919606ca5b0a50e20ebb49c7c943410c9732edbb6e" [label=""];
  "sha256:d2085bc1238c36f777d17e919606ca5b0a50e20ebb49c7c943410c9732edbb6e" -> "sha256:a1605d8e9839cf6ffbc116968091d788f014617fa9cfa111f6605399e72116f6" [label=""];
  "sha256:a1605d8e9839cf6ffbc116968091d788f014617fa9cfa111f6605399e72116f6" -> "sha256:16d97c748fc1298b1cc322590018237b30e067e9c062de5c316bb687df8f2381" [label=""];
  "sha256:16d97c748fc1298b1cc322590018237b30e067e9c062de5c316bb687df8f2381" -> "sha256:5c66720803398fd6c391590810f9369b6298d714d615704443a321f545a1eaad" [label=""];
  "sha256:5c66720803398fd6c391590810f9369b6298d714d615704443a321f545a1eaad" -> "sha256:40fe6079350a4a41b3bbb8a145957c198e7ccc391df17a59aecf9e5763ce7e56" [label=""];
  "sha256:40fe6079350a4a41b3bbb8a145957c198e7ccc391df17a59aecf9e5763ce7e56" -> "sha256:0a3eeffed58bf1910729d470ed655c4c1fe07b9257695510b05cbcad9a0ff005" [label=""];
  "sha256:0a3eeffed58bf1910729d470ed655c4c1fe07b9257695510b05cbcad9a0ff005" -> "sha256:d9c3f9ae1d82afd9693f5c1b44742b29f42a30f661f7b923bce0e023bc72183f" [label=""];
}

