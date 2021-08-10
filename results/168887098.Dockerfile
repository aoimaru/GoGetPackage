[app/sources/168887098.Dockerfile]
digraph {
  "sha256:38c2ec385ac1e9e2948936140b0fb63764fc80e2bf9fb4f39e4600efaf2d445d" [label="local://context" shape="ellipse"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:d2d92322ef87dcebbce890148e51a04ecb3057c0cf34c1480835626b587f1f83" [label="/bin/sh -c groupadd -r socrata && useradd -r -g socrata socrata" shape="box"];
  "sha256:c8613b916c411760c1a54fbc3eb5239719c37fc10bf010c767efaa4ec8f0c639" [label="/bin/sh -c groupadd -g 31415 metrics && usermod -a -G metrics socrata" shape="box"];
  "sha256:07ecebf023b32dddb7df3926f68033ff926edfd8a209118a9b8c35923f75fd2f" [label="/bin/sh -c apt-get -y update &&     apt-get -y upgrade;     apt-get -y install           build-essential           locales           curl           dnsutils           python-jinja2           zip           ruby2.5" shape="box"];
  "sha256:1c471f30bde59652e742f1730a16877d278ab341913d14379c064a3acbc056e4" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:bbf463eea467147eb76057db72826bdfd9b81c7594cd7c1cb75a08af8cc8a674" [label="/bin/sh -c mkdir /etc/pre-init.d" shape="box"];
  "sha256:22de0cc5570354bd5e7638caf8e4cd794604cf7fed477b751ee9b5205ce41f37" [label="/bin/sh -c gem2.5 install aws-sdk-resources --pre" shape="box"];
  "sha256:d98c26d13f6a4f05c6c34a609a4cca7ab5bd82923c1f6143a9df8df6f06a1615" [label="copy{src=/env_parse, dest=/bin/},copy{src=/set_ark_host, dest=/bin/},copy{src=/set_ark_hostname, dest=/bin/},copy{src=/set_metrics_dir, dest=/bin/},copy{src=/set_local_dev_hostname, dest=/bin/},copy{src=/ship, dest=/bin/}" shape="note"];
  "sha256:5f9a7cbed26564bfc63158bee52d6775a6856999dede5af40f62e86ce99d00e1" [label="copy{src=/ship.d, dest=/etc/ship.d/}" shape="note"];
  "sha256:711844017afab822e6f69d9560d309f85d5a8d3d5bf1f38882492ed829336bfa" [label="copy{src=/clortho-get, dest=/etc/pre-init.d/clortho-get}" shape="note"];
  "sha256:2c10b6daf0cfb3ba7a562624297780bd72a5f0859bbc693998579a6779ce9c6f" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:1377ea5641874bed27e3453471e8fbaaa9d99d5bf2f025677740b69421a2dcdf" [label="sha256:1377ea5641874bed27e3453471e8fbaaa9d99d5bf2f025677740b69421a2dcdf" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:d2d92322ef87dcebbce890148e51a04ecb3057c0cf34c1480835626b587f1f83" [label=""];
  "sha256:d2d92322ef87dcebbce890148e51a04ecb3057c0cf34c1480835626b587f1f83" -> "sha256:c8613b916c411760c1a54fbc3eb5239719c37fc10bf010c767efaa4ec8f0c639" [label=""];
  "sha256:c8613b916c411760c1a54fbc3eb5239719c37fc10bf010c767efaa4ec8f0c639" -> "sha256:07ecebf023b32dddb7df3926f68033ff926edfd8a209118a9b8c35923f75fd2f" [label=""];
  "sha256:07ecebf023b32dddb7df3926f68033ff926edfd8a209118a9b8c35923f75fd2f" -> "sha256:1c471f30bde59652e742f1730a16877d278ab341913d14379c064a3acbc056e4" [label=""];
  "sha256:1c471f30bde59652e742f1730a16877d278ab341913d14379c064a3acbc056e4" -> "sha256:bbf463eea467147eb76057db72826bdfd9b81c7594cd7c1cb75a08af8cc8a674" [label=""];
  "sha256:bbf463eea467147eb76057db72826bdfd9b81c7594cd7c1cb75a08af8cc8a674" -> "sha256:22de0cc5570354bd5e7638caf8e4cd794604cf7fed477b751ee9b5205ce41f37" [label=""];
  "sha256:22de0cc5570354bd5e7638caf8e4cd794604cf7fed477b751ee9b5205ce41f37" -> "sha256:d98c26d13f6a4f05c6c34a609a4cca7ab5bd82923c1f6143a9df8df6f06a1615" [label=""];
  "sha256:38c2ec385ac1e9e2948936140b0fb63764fc80e2bf9fb4f39e4600efaf2d445d" -> "sha256:d98c26d13f6a4f05c6c34a609a4cca7ab5bd82923c1f6143a9df8df6f06a1615" [label=""];
  "sha256:d98c26d13f6a4f05c6c34a609a4cca7ab5bd82923c1f6143a9df8df6f06a1615" -> "sha256:5f9a7cbed26564bfc63158bee52d6775a6856999dede5af40f62e86ce99d00e1" [label=""];
  "sha256:38c2ec385ac1e9e2948936140b0fb63764fc80e2bf9fb4f39e4600efaf2d445d" -> "sha256:5f9a7cbed26564bfc63158bee52d6775a6856999dede5af40f62e86ce99d00e1" [label=""];
  "sha256:5f9a7cbed26564bfc63158bee52d6775a6856999dede5af40f62e86ce99d00e1" -> "sha256:711844017afab822e6f69d9560d309f85d5a8d3d5bf1f38882492ed829336bfa" [label=""];
  "sha256:38c2ec385ac1e9e2948936140b0fb63764fc80e2bf9fb4f39e4600efaf2d445d" -> "sha256:711844017afab822e6f69d9560d309f85d5a8d3d5bf1f38882492ed829336bfa" [label=""];
  "sha256:711844017afab822e6f69d9560d309f85d5a8d3d5bf1f38882492ed829336bfa" -> "sha256:2c10b6daf0cfb3ba7a562624297780bd72a5f0859bbc693998579a6779ce9c6f" [label=""];
  "sha256:2c10b6daf0cfb3ba7a562624297780bd72a5f0859bbc693998579a6779ce9c6f" -> "sha256:1377ea5641874bed27e3453471e8fbaaa9d99d5bf2f025677740b69421a2dcdf" [label=""];
}

