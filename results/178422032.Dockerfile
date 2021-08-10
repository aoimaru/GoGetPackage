[app/sources/178422032.Dockerfile]
digraph {
  "sha256:a7324cfb3810ff519d17c8005657e8b286b6f97a7c0a8445dad230fed0be49f9" [label="docker-image://docker.io/compbio/ngseasy-base:1.0@sha256:5650ffb0bb32ccc457b36a2fb8574ae271ec4151fdd01197fe0f20c87f14c696" shape="ellipse"];
  "sha256:2d9214e4e73c4e782a4325b4925f78e1e404a96bad0ea42381ebdc2f790be36b" [label="/bin/sh -c apt-get update -y && apt-get upgrade -y" shape="box"];
  "sha256:67df1c0cf0e8ce7179579c14c26b4f55ce88545d5049b95ceb9f492b729d7d52" [label="/bin/sh -c cd /usr/local/pipeline &&     wget http://sourceforge.net/projects/excavatortool/files/EXCAVATOR_Package_v2.2.tgz &&     tar xvf EXCAVATOR_Package_v2.2.tgz && RUN chmod -R 777 /usr/local/pipeline" shape="box"];
  "sha256:b6eaf87c77042ee74c3240e662d817a9b450a9c71007d6f8b3b2ddb08dcfaa12" [label="/bin/sh -c chown -R pipeman:ngsgroup /usr/local/pipeline" shape="box"];
  "sha256:4e93f1a6cf938476cd3462d4b74d96c88f67f215fafa45e96ea4c6493208cce8" [label="/bin/sh -c rm -rf /tmp/*" shape="box"];
  "sha256:64122d6e9ee9940078f00f8873945fd62823c3bf9a1f86d3d909271c82f1c52e" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:a295257802cca8f355a8fad79d412afb569ae6ea3d8319387df1cbb5b94c8a68" [label="/bin/sh -c apt-get autoclean && apt-get autoremove -y && rm -rf /var/lib/{apt,dpkg,cache,log}/" shape="box"];
  "sha256:1485c8e666b00e9823ddd6d27b5ae2d06ee7d6f531b7d53a5d9d27992f3b4602" [label="sha256:1485c8e666b00e9823ddd6d27b5ae2d06ee7d6f531b7d53a5d9d27992f3b4602" shape="plaintext"];
  "sha256:a7324cfb3810ff519d17c8005657e8b286b6f97a7c0a8445dad230fed0be49f9" -> "sha256:2d9214e4e73c4e782a4325b4925f78e1e404a96bad0ea42381ebdc2f790be36b" [label=""];
  "sha256:2d9214e4e73c4e782a4325b4925f78e1e404a96bad0ea42381ebdc2f790be36b" -> "sha256:67df1c0cf0e8ce7179579c14c26b4f55ce88545d5049b95ceb9f492b729d7d52" [label=""];
  "sha256:67df1c0cf0e8ce7179579c14c26b4f55ce88545d5049b95ceb9f492b729d7d52" -> "sha256:b6eaf87c77042ee74c3240e662d817a9b450a9c71007d6f8b3b2ddb08dcfaa12" [label=""];
  "sha256:b6eaf87c77042ee74c3240e662d817a9b450a9c71007d6f8b3b2ddb08dcfaa12" -> "sha256:4e93f1a6cf938476cd3462d4b74d96c88f67f215fafa45e96ea4c6493208cce8" [label=""];
  "sha256:4e93f1a6cf938476cd3462d4b74d96c88f67f215fafa45e96ea4c6493208cce8" -> "sha256:64122d6e9ee9940078f00f8873945fd62823c3bf9a1f86d3d909271c82f1c52e" [label=""];
  "sha256:64122d6e9ee9940078f00f8873945fd62823c3bf9a1f86d3d909271c82f1c52e" -> "sha256:a295257802cca8f355a8fad79d412afb569ae6ea3d8319387df1cbb5b94c8a68" [label=""];
  "sha256:a295257802cca8f355a8fad79d412afb569ae6ea3d8319387df1cbb5b94c8a68" -> "sha256:1485c8e666b00e9823ddd6d27b5ae2d06ee7d6f531b7d53a5d9d27992f3b4602" [label=""];
}

