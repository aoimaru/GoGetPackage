[app/sources/393398652.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:dae9b9cb630882722b813740b0fe6eedc8fd6dba12179325d9a753a10564298d" [label="/bin/sh -c apt-get update && apt-get install -y curl" shape="box"];
  "sha256:ba2bac0ea9b3c70c30ae6382f10c79e2d4863b612444543cc202f1fcb80a3638" [label="/bin/sh -c apt-get install -y libgd-svg-perl libjson-perl libtext-csv-perl liblog-log4perl-perl vcftools libbatik-java libmodule-build-perl make cpanminus bioperl fop" shape="box"];
  "sha256:f60f44c0fed88626f31a97cae447e5971e441b9130f37dd416eb44ca1b35f8d5" [label="/bin/sh -c cpanm Bio::FeatureIO::gff" shape="box"];
  "sha256:38bb4bb5cfc167d571d5eb4584c9c0efa8cfaab6957acec0a34a8d69a6e84fbf" [label="/bin/sh -c cd /opt && curl -LO https://github.com/jonathancrabtree/Circleator/archive/1.0.2.tar.gz && tar xzf 1.0.2.tar.gz" shape="box"];
  "sha256:0a0add438510a0dc218097ccdba5c5fb3d1f913a724933eb20ba1aeb2a6e396f" [label="/bin/sh -c cd /opt/Circleator-1.0.2 && perl Build.PL && ./Build && ./Build install" shape="box"];
  "sha256:6e5ada51de61e7da6b6e8c50c90e2b516c25205f2703cd95b0df3734e6e2d0d5" [label="/bin/sh -c cd /opt && ln -s Circleator-1.0.2 Circleator" shape="box"];
  "sha256:cd6e7662f6cb553b3c81e02c6d612ad749c6f25e48c5e4a1f46e91e084a14678" [label="/bin/sh -c apt-get install -y libncurses5-dev zlib1g-dev libbz2-dev liblzma-dev gcc libglib2.0-dev" shape="box"];
  "sha256:94eb527e36a1805ad4e8c4c3203b6f22ca6e1b519071c4597b109b48e2c93584" [label="/bin/sh -c cd /opt && curl -LO https://github.com/samtools/samtools/releases/download/1.7/samtools-1.7.tar.bz2 && tar xjf samtools-1.7.tar.bz2" shape="box"];
  "sha256:29b8d4969482aa73cc542c37ea4439d603efc5413777468471cec7c7e5b0907b" [label="/bin/sh -c cd /opt/samtools-1.7 && ./configure && make" shape="box"];
  "sha256:d5fde9184eace186654ca4869263f0a59765d3d443e277557a97632b6cb50132" [label="/bin/sh -c cd /opt/Circleator/util/samtools && ./make.sh && cp bam_get_coverage *.pl ../*.pl /usr/local/bin/" shape="box"];
  "sha256:afa9bdc9127a8b20a30d48c3bacf2890f6a954c4868aaccaa9a1d83c47cc4e97" [label="/bin/sh -c useradd -ms /bin/bash circleator" shape="box"];
  "sha256:17a326d73fe7d541fd0f2b8de221f32f855a48be21fe8ac8451cc4496ea6d311" [label="/bin/sh -c cd /opt && curl -LO https://github.com/jonathancrabtree/Circleator/archive/gh-pages.zip && unzip gh-pages.zip" shape="box"];
  "sha256:e79e92b0324ae14c314339b8aa19591ea084a0d6062c52e0497817d5e6e2e853" [label="/bin/sh -c cp -r /opt/Circleator-gh-pages/tutorials /home/circleator/ && chown -R circleator:circleator /home/circleator/tutorials" shape="box"];
  "sha256:b4c7306a474969bba7af1e710f239592cc57ffffe29a84729b4c9d61231698b6" [label="/bin/sh -c /bin/rm -rf /opt/Circleator-gh-pages /opt/*.gz /opt/*.zip /opt/*.bz2" shape="box"];
  "sha256:a490dd87b90fd9e2a5e5114654fc733653f545a377e308a66f0612eb1ad03d83" [label="mkdir{path=/home/circleator}" shape="note"];
  "sha256:dbfd5647e9e98f3ad2869f12950f255bc2d7e12ff5576d8e2024e259c53059bb" [label="sha256:dbfd5647e9e98f3ad2869f12950f255bc2d7e12ff5576d8e2024e259c53059bb" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:dae9b9cb630882722b813740b0fe6eedc8fd6dba12179325d9a753a10564298d" [label=""];
  "sha256:dae9b9cb630882722b813740b0fe6eedc8fd6dba12179325d9a753a10564298d" -> "sha256:ba2bac0ea9b3c70c30ae6382f10c79e2d4863b612444543cc202f1fcb80a3638" [label=""];
  "sha256:ba2bac0ea9b3c70c30ae6382f10c79e2d4863b612444543cc202f1fcb80a3638" -> "sha256:f60f44c0fed88626f31a97cae447e5971e441b9130f37dd416eb44ca1b35f8d5" [label=""];
  "sha256:f60f44c0fed88626f31a97cae447e5971e441b9130f37dd416eb44ca1b35f8d5" -> "sha256:38bb4bb5cfc167d571d5eb4584c9c0efa8cfaab6957acec0a34a8d69a6e84fbf" [label=""];
  "sha256:38bb4bb5cfc167d571d5eb4584c9c0efa8cfaab6957acec0a34a8d69a6e84fbf" -> "sha256:0a0add438510a0dc218097ccdba5c5fb3d1f913a724933eb20ba1aeb2a6e396f" [label=""];
  "sha256:0a0add438510a0dc218097ccdba5c5fb3d1f913a724933eb20ba1aeb2a6e396f" -> "sha256:6e5ada51de61e7da6b6e8c50c90e2b516c25205f2703cd95b0df3734e6e2d0d5" [label=""];
  "sha256:6e5ada51de61e7da6b6e8c50c90e2b516c25205f2703cd95b0df3734e6e2d0d5" -> "sha256:cd6e7662f6cb553b3c81e02c6d612ad749c6f25e48c5e4a1f46e91e084a14678" [label=""];
  "sha256:cd6e7662f6cb553b3c81e02c6d612ad749c6f25e48c5e4a1f46e91e084a14678" -> "sha256:94eb527e36a1805ad4e8c4c3203b6f22ca6e1b519071c4597b109b48e2c93584" [label=""];
  "sha256:94eb527e36a1805ad4e8c4c3203b6f22ca6e1b519071c4597b109b48e2c93584" -> "sha256:29b8d4969482aa73cc542c37ea4439d603efc5413777468471cec7c7e5b0907b" [label=""];
  "sha256:29b8d4969482aa73cc542c37ea4439d603efc5413777468471cec7c7e5b0907b" -> "sha256:d5fde9184eace186654ca4869263f0a59765d3d443e277557a97632b6cb50132" [label=""];
  "sha256:d5fde9184eace186654ca4869263f0a59765d3d443e277557a97632b6cb50132" -> "sha256:afa9bdc9127a8b20a30d48c3bacf2890f6a954c4868aaccaa9a1d83c47cc4e97" [label=""];
  "sha256:afa9bdc9127a8b20a30d48c3bacf2890f6a954c4868aaccaa9a1d83c47cc4e97" -> "sha256:17a326d73fe7d541fd0f2b8de221f32f855a48be21fe8ac8451cc4496ea6d311" [label=""];
  "sha256:17a326d73fe7d541fd0f2b8de221f32f855a48be21fe8ac8451cc4496ea6d311" -> "sha256:e79e92b0324ae14c314339b8aa19591ea084a0d6062c52e0497817d5e6e2e853" [label=""];
  "sha256:e79e92b0324ae14c314339b8aa19591ea084a0d6062c52e0497817d5e6e2e853" -> "sha256:b4c7306a474969bba7af1e710f239592cc57ffffe29a84729b4c9d61231698b6" [label=""];
  "sha256:b4c7306a474969bba7af1e710f239592cc57ffffe29a84729b4c9d61231698b6" -> "sha256:a490dd87b90fd9e2a5e5114654fc733653f545a377e308a66f0612eb1ad03d83" [label=""];
  "sha256:a490dd87b90fd9e2a5e5114654fc733653f545a377e308a66f0612eb1ad03d83" -> "sha256:dbfd5647e9e98f3ad2869f12950f255bc2d7e12ff5576d8e2024e259c53059bb" [label=""];
}

