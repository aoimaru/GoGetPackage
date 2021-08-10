[app/sources/347054874.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:b62a30e86b762237e346c09041a5701bb660b2f9eb94398dcddd4e65cedce207" [label="local://context" shape="ellipse"];
  "sha256:4c4d3e4a74de60b1397a18b9bbac96681f3408c37e850273e2e212acf957785b" [label="copy{src=/, dest=/root}" shape="note"];
  "sha256:3ce232d51c7e7be6767a87c9d27696b943c2b96258461e4c26a98e334351574d" [label="/bin/sh -c apt-get update -qq -y" shape="box"];
  "sha256:0ed3f59bb8dbe97fcfa5709e259c4d6c362126bf510972bd9c9777d2a0ce6701" [label="/bin/sh -c apt-get install -y wget gnupg2" shape="box"];
  "sha256:4dbbf6b339294833cf071f234c5356d53ba2f005fdd1d3e2720349cc43d1f469" [label="/bin/sh -c wget http://download.opensuse.org/repositories/home:hpcoder1/xUbuntu_18.04/Release.key" shape="box"];
  "sha256:e97a639784e31d6e10106d009d295729ab63eca2fb5bd62aac41e94e8fc8139e" [label="/bin/sh -c apt-key add - < Release.key" shape="box"];
  "sha256:c65f4afe33f3be40bb12002283827cea5995c5736841a3eaae3865b95aba3b08" [label="/bin/sh -c echo 'deb http://download.opensuse.org/repositories/home:/hpcoder1/xUbuntu_18.04/ /' >/etc/apt/sources.list.d/hpcoders.list" shape="box"];
  "sha256:1a1feca231ea37f4157a874e4a30a9208b47cd4c437347865875a4041a0cacca" [label="/bin/sh -c apt-get update -qq -y" shape="box"];
  "sha256:532e78168132afc00bb77ac754f1ad59c543cf0c22e1a08dc37120397a8e5ee9" [label="/bin/sh -c apt-get install -y --allow-unauthenticated scidavis-beta" shape="box"];
  "sha256:2c9b52cf88127f990788c2f0e780ebf2dd2012bb41bd0041a3bc4d46366a3e14" [label="/bin/sh -c apt-get install -y xvfb" shape="box"];
  "sha256:215c491dfb8153227b3358bd3ba5be7b1f473bf690974a615bee21270c16e0b5" [label="/bin/sh -c sh /root/scidavisSmoke.sh" shape="box"];
  "sha256:6e3b3a907f7b82aa6b80515c3baa1e40964c94a7197138e93123983c4bbc2cbc" [label="sha256:6e3b3a907f7b82aa6b80515c3baa1e40964c94a7197138e93123983c4bbc2cbc" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:4c4d3e4a74de60b1397a18b9bbac96681f3408c37e850273e2e212acf957785b" [label=""];
  "sha256:b62a30e86b762237e346c09041a5701bb660b2f9eb94398dcddd4e65cedce207" -> "sha256:4c4d3e4a74de60b1397a18b9bbac96681f3408c37e850273e2e212acf957785b" [label=""];
  "sha256:4c4d3e4a74de60b1397a18b9bbac96681f3408c37e850273e2e212acf957785b" -> "sha256:3ce232d51c7e7be6767a87c9d27696b943c2b96258461e4c26a98e334351574d" [label=""];
  "sha256:3ce232d51c7e7be6767a87c9d27696b943c2b96258461e4c26a98e334351574d" -> "sha256:0ed3f59bb8dbe97fcfa5709e259c4d6c362126bf510972bd9c9777d2a0ce6701" [label=""];
  "sha256:0ed3f59bb8dbe97fcfa5709e259c4d6c362126bf510972bd9c9777d2a0ce6701" -> "sha256:4dbbf6b339294833cf071f234c5356d53ba2f005fdd1d3e2720349cc43d1f469" [label=""];
  "sha256:4dbbf6b339294833cf071f234c5356d53ba2f005fdd1d3e2720349cc43d1f469" -> "sha256:e97a639784e31d6e10106d009d295729ab63eca2fb5bd62aac41e94e8fc8139e" [label=""];
  "sha256:e97a639784e31d6e10106d009d295729ab63eca2fb5bd62aac41e94e8fc8139e" -> "sha256:c65f4afe33f3be40bb12002283827cea5995c5736841a3eaae3865b95aba3b08" [label=""];
  "sha256:c65f4afe33f3be40bb12002283827cea5995c5736841a3eaae3865b95aba3b08" -> "sha256:1a1feca231ea37f4157a874e4a30a9208b47cd4c437347865875a4041a0cacca" [label=""];
  "sha256:1a1feca231ea37f4157a874e4a30a9208b47cd4c437347865875a4041a0cacca" -> "sha256:532e78168132afc00bb77ac754f1ad59c543cf0c22e1a08dc37120397a8e5ee9" [label=""];
  "sha256:532e78168132afc00bb77ac754f1ad59c543cf0c22e1a08dc37120397a8e5ee9" -> "sha256:2c9b52cf88127f990788c2f0e780ebf2dd2012bb41bd0041a3bc4d46366a3e14" [label=""];
  "sha256:2c9b52cf88127f990788c2f0e780ebf2dd2012bb41bd0041a3bc4d46366a3e14" -> "sha256:215c491dfb8153227b3358bd3ba5be7b1f473bf690974a615bee21270c16e0b5" [label=""];
  "sha256:215c491dfb8153227b3358bd3ba5be7b1f473bf690974a615bee21270c16e0b5" -> "sha256:6e3b3a907f7b82aa6b80515c3baa1e40964c94a7197138e93123983c4bbc2cbc" [label=""];
}

