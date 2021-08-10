[app/sources/339992261.Dockerfile]
digraph {
  "sha256:2f723df304cc0cfb30c5036aeaff28e65d10cb8129432e1cccf7271f96326629" [label="local://context" shape="ellipse"];
  "sha256:3f4dbb644d55b8432a0be3a0ee13d22ab1d5f2a5e5fd9f2d4f7c02e96d8130ce" [label="docker-image://docker.io/library/java:openjdk-7-jre" shape="ellipse"];
  "sha256:5e9eb57f359e0ec1789a2e68fbaa35258e01283448adf0ed6c89f3831e3bc33d" [label="/bin/sh -c apt-get update &&     apt-get install -y curl &&     apt-get clean" shape="box"];
  "sha256:1f6b826be425bcca5b9cafa815ce97f6dcd30bee1ee457055155d7f29e553c0b" [label="/bin/sh -c cd / &&     curl -O https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.5.2.tar.gz &&     tar xf elasticsearch-1.5.2.tar.gz &&     rm elasticsearch-1.5.2.tar.gz" shape="box"];
  "sha256:e7b215bba5cd201585482d7792cb1c9ed4de652b05131b8ca523357f8c8f501b" [label="/bin/sh -c mkdir -p /elasticsearch-1.5.2/config/templates" shape="box"];
  "sha256:28590ff2464a18743ede28f405b5f5112de4be3d3378835178045c8573915922" [label="copy{src=/elasticsearch.yml, dest=/elasticsearch-1.5.2/config/elasticsearch.yml}" shape="note"];
  "sha256:fb3010501a45ab47a1363940b15b75652a13913defc7c66e53aa8fd9de436902" [label="copy{src=/template-k8s-logstash.json, dest=/elasticsearch-1.5.2/config/templates/template-k8s-logstash.json}" shape="note"];
  "sha256:36cf06020d95afd10bd1c9962d44b7e7b93464ccbc40e5434117f009b23ca3cf" [label="copy{src=/run.sh, dest=/}" shape="note"];
  "sha256:722d2b4a9632e1cc8137bb4bf5d02d0f1d78b514a5218a2336d247faf40b7348" [label="copy{src=/elasticsearch_logging_discovery, dest=/}" shape="note"];
  "sha256:8ebb2d6a918adfa7503da59c3440deaa9a26387a376dbcdeb3708854b39fe56b" [label="sha256:8ebb2d6a918adfa7503da59c3440deaa9a26387a376dbcdeb3708854b39fe56b" shape="plaintext"];
  "sha256:3f4dbb644d55b8432a0be3a0ee13d22ab1d5f2a5e5fd9f2d4f7c02e96d8130ce" -> "sha256:5e9eb57f359e0ec1789a2e68fbaa35258e01283448adf0ed6c89f3831e3bc33d" [label=""];
  "sha256:5e9eb57f359e0ec1789a2e68fbaa35258e01283448adf0ed6c89f3831e3bc33d" -> "sha256:1f6b826be425bcca5b9cafa815ce97f6dcd30bee1ee457055155d7f29e553c0b" [label=""];
  "sha256:1f6b826be425bcca5b9cafa815ce97f6dcd30bee1ee457055155d7f29e553c0b" -> "sha256:e7b215bba5cd201585482d7792cb1c9ed4de652b05131b8ca523357f8c8f501b" [label=""];
  "sha256:e7b215bba5cd201585482d7792cb1c9ed4de652b05131b8ca523357f8c8f501b" -> "sha256:28590ff2464a18743ede28f405b5f5112de4be3d3378835178045c8573915922" [label=""];
  "sha256:2f723df304cc0cfb30c5036aeaff28e65d10cb8129432e1cccf7271f96326629" -> "sha256:28590ff2464a18743ede28f405b5f5112de4be3d3378835178045c8573915922" [label=""];
  "sha256:28590ff2464a18743ede28f405b5f5112de4be3d3378835178045c8573915922" -> "sha256:fb3010501a45ab47a1363940b15b75652a13913defc7c66e53aa8fd9de436902" [label=""];
  "sha256:2f723df304cc0cfb30c5036aeaff28e65d10cb8129432e1cccf7271f96326629" -> "sha256:fb3010501a45ab47a1363940b15b75652a13913defc7c66e53aa8fd9de436902" [label=""];
  "sha256:fb3010501a45ab47a1363940b15b75652a13913defc7c66e53aa8fd9de436902" -> "sha256:36cf06020d95afd10bd1c9962d44b7e7b93464ccbc40e5434117f009b23ca3cf" [label=""];
  "sha256:2f723df304cc0cfb30c5036aeaff28e65d10cb8129432e1cccf7271f96326629" -> "sha256:36cf06020d95afd10bd1c9962d44b7e7b93464ccbc40e5434117f009b23ca3cf" [label=""];
  "sha256:36cf06020d95afd10bd1c9962d44b7e7b93464ccbc40e5434117f009b23ca3cf" -> "sha256:722d2b4a9632e1cc8137bb4bf5d02d0f1d78b514a5218a2336d247faf40b7348" [label=""];
  "sha256:2f723df304cc0cfb30c5036aeaff28e65d10cb8129432e1cccf7271f96326629" -> "sha256:722d2b4a9632e1cc8137bb4bf5d02d0f1d78b514a5218a2336d247faf40b7348" [label=""];
  "sha256:722d2b4a9632e1cc8137bb4bf5d02d0f1d78b514a5218a2336d247faf40b7348" -> "sha256:8ebb2d6a918adfa7503da59c3440deaa9a26387a376dbcdeb3708854b39fe56b" [label=""];
}

