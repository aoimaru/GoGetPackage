[app/sources/136620251.Dockerfile]
digraph {
  "sha256:014d3e16694ac6b9d583a5e546ed9c225265e6fd2065d209ea9c913edb77238b" [label="docker-image://docker.io/mavromat/bgpstream-redis:v1.0" shape="ellipse"];
  "sha256:4dce806da172590f31f12acec386baea75023775186e36cfe1c82778e24123af" [label="/bin/sh -c apt-get update &&     apt-get -y install --no-install-recommends python3-pip supervisor tcl postgresql-client &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:739f4e48599f6e2bf8b72deb1fe8f3b2df5389632cc80e3d67eed7334b7d23b2" [label="mkdir{path=/root}" shape="note"];
  "sha256:75c7664b0dd51f8c2f381f5c07fad886d6058d8e4511e78c50bf113be6307528" [label="local://context" shape="ellipse"];
  "sha256:9bcc3fd8df17d2815025bcf41af7a5cc88c74a863596923589be1fe6438f5869" [label="copy{src=/, dest=/root/}" shape="note"];
  "sha256:9ac1ca3f97cd91989aaa4ec1c2021ad094ba6ad1e4e25a20ff53548b29f6ab9b" [label="copy{src=/testing/configs, dest=/etc/artemis/}" shape="note"];
  "sha256:b77e8cf41f2156edca48d9eef49923cddd1dcd6c28b18e8d6422a46f5c16a4c9" [label="copy{src=/testing/supervisor.d, dest=/etc/supervisor/conf.d/}" shape="note"];
  "sha256:5648bddcf1cad0b969e5b70e8e76f50460ec76057c75aade841386e660cb6fc2" [label="/bin/sh -c pip3 --no-cache-dir install -r requirements.txt" shape="box"];
  "sha256:58bf70a5066acbfd35ca8fd0125206ccc8e325f003c16d8ddfd60f84fedcae85" [label="/bin/sh -c pip3 --no-cache-dir install git+https://github.com/supervisor/supervisor@a0ee8f1026c929ae4d9fc84741924414e8008f49" shape="box"];
  "sha256:79ffb829e4d45e862c0fb4ca5e37b2653c5caf9a75e7139754ba0e2115386cff" [label="/bin/sh -c pip3 --no-cache-dir install coverage git+https://github.com/coveralls-clients/coveralls-python@a9b5e3081c8697b60286b9736e956134a2796d5f" shape="box"];
  "sha256:d648c276ff54f411804359edecd30a9512f51e9993c97dd8bd467cd1ef24ef4a" [label="/bin/sh -c mkdir -p /etc/artemis/ &&     mkdir -p /var/log/artemis/" shape="box"];
  "sha256:40b612269e747b62ce669a2766456dec8b867612623ec22defa2a088f244565d" [label="sha256:40b612269e747b62ce669a2766456dec8b867612623ec22defa2a088f244565d" shape="plaintext"];
  "sha256:014d3e16694ac6b9d583a5e546ed9c225265e6fd2065d209ea9c913edb77238b" -> "sha256:4dce806da172590f31f12acec386baea75023775186e36cfe1c82778e24123af" [label=""];
  "sha256:4dce806da172590f31f12acec386baea75023775186e36cfe1c82778e24123af" -> "sha256:739f4e48599f6e2bf8b72deb1fe8f3b2df5389632cc80e3d67eed7334b7d23b2" [label=""];
  "sha256:739f4e48599f6e2bf8b72deb1fe8f3b2df5389632cc80e3d67eed7334b7d23b2" -> "sha256:9bcc3fd8df17d2815025bcf41af7a5cc88c74a863596923589be1fe6438f5869" [label=""];
  "sha256:75c7664b0dd51f8c2f381f5c07fad886d6058d8e4511e78c50bf113be6307528" -> "sha256:9bcc3fd8df17d2815025bcf41af7a5cc88c74a863596923589be1fe6438f5869" [label=""];
  "sha256:9bcc3fd8df17d2815025bcf41af7a5cc88c74a863596923589be1fe6438f5869" -> "sha256:9ac1ca3f97cd91989aaa4ec1c2021ad094ba6ad1e4e25a20ff53548b29f6ab9b" [label=""];
  "sha256:75c7664b0dd51f8c2f381f5c07fad886d6058d8e4511e78c50bf113be6307528" -> "sha256:9ac1ca3f97cd91989aaa4ec1c2021ad094ba6ad1e4e25a20ff53548b29f6ab9b" [label=""];
  "sha256:9ac1ca3f97cd91989aaa4ec1c2021ad094ba6ad1e4e25a20ff53548b29f6ab9b" -> "sha256:b77e8cf41f2156edca48d9eef49923cddd1dcd6c28b18e8d6422a46f5c16a4c9" [label=""];
  "sha256:75c7664b0dd51f8c2f381f5c07fad886d6058d8e4511e78c50bf113be6307528" -> "sha256:b77e8cf41f2156edca48d9eef49923cddd1dcd6c28b18e8d6422a46f5c16a4c9" [label=""];
  "sha256:b77e8cf41f2156edca48d9eef49923cddd1dcd6c28b18e8d6422a46f5c16a4c9" -> "sha256:5648bddcf1cad0b969e5b70e8e76f50460ec76057c75aade841386e660cb6fc2" [label=""];
  "sha256:5648bddcf1cad0b969e5b70e8e76f50460ec76057c75aade841386e660cb6fc2" -> "sha256:58bf70a5066acbfd35ca8fd0125206ccc8e325f003c16d8ddfd60f84fedcae85" [label=""];
  "sha256:58bf70a5066acbfd35ca8fd0125206ccc8e325f003c16d8ddfd60f84fedcae85" -> "sha256:79ffb829e4d45e862c0fb4ca5e37b2653c5caf9a75e7139754ba0e2115386cff" [label=""];
  "sha256:79ffb829e4d45e862c0fb4ca5e37b2653c5caf9a75e7139754ba0e2115386cff" -> "sha256:d648c276ff54f411804359edecd30a9512f51e9993c97dd8bd467cd1ef24ef4a" [label=""];
  "sha256:d648c276ff54f411804359edecd30a9512f51e9993c97dd8bd467cd1ef24ef4a" -> "sha256:40b612269e747b62ce669a2766456dec8b867612623ec22defa2a088f244565d" [label=""];
}

