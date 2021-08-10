[app/sources/390231860.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:a60f54d49a6c8b5d70a7085200cfd75a5e2c124106e832a8f8cf94a3ac63a731" [label="/bin/sh -c apt-get install -q -y build-essential libreadline-dev libncurses5-dev libpcre3-dev libssl-dev perl wget curl git ufw mlocate vim nano imagemagick" shape="box"];
  "sha256:cdb82300a135ef4f4dac731d546a4b45dacfc378ba7d3556901957bae83fd9fe" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:2c4c2257f11afc20c6cd70aee5acc3ac09b69be493bb72019cdd6f9884093594" [label="/bin/sh -c wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.33.tar.gz" shape="box"];
  "sha256:d513d42cdda9bf4d73941e54a11bd8c9699feb63ad20d9d20bacfe7688be1a58" [label="/bin/sh -c tar -xzvf pcre-8.33.tar.gz" shape="box"];
  "sha256:217fdb86ca23fab04988055f06aa2dda1a780bdf3195b5881ce9aa3cf0c9ab04" [label="mkdir{path=/tmp/pcre-8.33}" shape="note"];
  "sha256:fb88b6174b0b32444d3bcfcf94797b9070598b7b9c14d9b6c609c0d5929b1394" [label="/bin/sh -c ./configure --enable-jit" shape="box"];
  "sha256:4e88ca0e10d2d08577a419be8ee3b64ed1bff598a7594761018e1b77b4afe9a5" [label="/bin/sh -c make -j$(nproc)" shape="box"];
  "sha256:d0817ec2bc9cb684a777b08f0590e5409a883453859353a1f3ecb01c898792ef" [label="/bin/sh -c make install" shape="box"];
  "sha256:67ba6300fc1e92d3ee351d6cd2dd09ea9ee8b5110fd802e78ed31f23ab048192" [label="/bin/sh -c ldconfig" shape="box"];
  "sha256:f84df10cc97c3a1d9f4525b085d7a205ad5693dd620c1060f5971b2966550cc6" [label="sha256:f84df10cc97c3a1d9f4525b085d7a205ad5693dd620c1060f5971b2966550cc6" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:a60f54d49a6c8b5d70a7085200cfd75a5e2c124106e832a8f8cf94a3ac63a731" [label=""];
  "sha256:a60f54d49a6c8b5d70a7085200cfd75a5e2c124106e832a8f8cf94a3ac63a731" -> "sha256:cdb82300a135ef4f4dac731d546a4b45dacfc378ba7d3556901957bae83fd9fe" [label=""];
  "sha256:cdb82300a135ef4f4dac731d546a4b45dacfc378ba7d3556901957bae83fd9fe" -> "sha256:2c4c2257f11afc20c6cd70aee5acc3ac09b69be493bb72019cdd6f9884093594" [label=""];
  "sha256:2c4c2257f11afc20c6cd70aee5acc3ac09b69be493bb72019cdd6f9884093594" -> "sha256:d513d42cdda9bf4d73941e54a11bd8c9699feb63ad20d9d20bacfe7688be1a58" [label=""];
  "sha256:d513d42cdda9bf4d73941e54a11bd8c9699feb63ad20d9d20bacfe7688be1a58" -> "sha256:217fdb86ca23fab04988055f06aa2dda1a780bdf3195b5881ce9aa3cf0c9ab04" [label=""];
  "sha256:217fdb86ca23fab04988055f06aa2dda1a780bdf3195b5881ce9aa3cf0c9ab04" -> "sha256:fb88b6174b0b32444d3bcfcf94797b9070598b7b9c14d9b6c609c0d5929b1394" [label=""];
  "sha256:fb88b6174b0b32444d3bcfcf94797b9070598b7b9c14d9b6c609c0d5929b1394" -> "sha256:4e88ca0e10d2d08577a419be8ee3b64ed1bff598a7594761018e1b77b4afe9a5" [label=""];
  "sha256:4e88ca0e10d2d08577a419be8ee3b64ed1bff598a7594761018e1b77b4afe9a5" -> "sha256:d0817ec2bc9cb684a777b08f0590e5409a883453859353a1f3ecb01c898792ef" [label=""];
  "sha256:d0817ec2bc9cb684a777b08f0590e5409a883453859353a1f3ecb01c898792ef" -> "sha256:67ba6300fc1e92d3ee351d6cd2dd09ea9ee8b5110fd802e78ed31f23ab048192" [label=""];
  "sha256:67ba6300fc1e92d3ee351d6cd2dd09ea9ee8b5110fd802e78ed31f23ab048192" -> "sha256:f84df10cc97c3a1d9f4525b085d7a205ad5693dd620c1060f5971b2966550cc6" [label=""];
}

