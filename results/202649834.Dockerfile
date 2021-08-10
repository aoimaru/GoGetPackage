[app/sources/202649834.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:b4bb0679c959daaf1a9a49fe015e12b6eb76bb86f54ae9cbb5016d3508bd7371" [label="/bin/sh -c apt-get update && apt-get install -y git npm nodejs openjdk-7-jre" shape="box"];
  "sha256:46be32f24382f415f93f38d2f734a8b7e4095449ea34af02163ec7e76f9a5bcd" [label="/bin/sh -c ln -s /usr/bin/nodejs /usr/local/bin/node" shape="box"];
  "sha256:5abb1793115ce8174461319d994778cf51957ebc86422089a62263a77b645b78" [label="mkdir{path=/build}" shape="note"];
  "sha256:732e7d69753aeb47edfb0ab6bdebda420bb008619d59119de0f3019195406ea0" [label="local://context" shape="ellipse"];
  "sha256:b946a7090cabf0bdaf71018e3273efa8d119ef2339b3fbdcd78ad2c152168ac8" [label="copy{src=/package.json, dest=/build/package.json}" shape="note"];
  "sha256:d317a8481c36f4dda62190f3855c02cdbe9de4e3f481a8c1f5ebe7c9423a6012" [label="/bin/sh -c npm install" shape="box"];
  "sha256:f07199ed5f23f3abc4c94a580c2cf43ec6e094f3f0916804f8419099afd2fa92" [label="copy{src=/, dest=/build}" shape="note"];
  "sha256:08932c5d19db55ef00ba609cacd8ebb40396d6106a76f6dd57c7dee58de16ba3" [label="sha256:08932c5d19db55ef00ba609cacd8ebb40396d6106a76f6dd57c7dee58de16ba3" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:b4bb0679c959daaf1a9a49fe015e12b6eb76bb86f54ae9cbb5016d3508bd7371" [label=""];
  "sha256:b4bb0679c959daaf1a9a49fe015e12b6eb76bb86f54ae9cbb5016d3508bd7371" -> "sha256:46be32f24382f415f93f38d2f734a8b7e4095449ea34af02163ec7e76f9a5bcd" [label=""];
  "sha256:46be32f24382f415f93f38d2f734a8b7e4095449ea34af02163ec7e76f9a5bcd" -> "sha256:5abb1793115ce8174461319d994778cf51957ebc86422089a62263a77b645b78" [label=""];
  "sha256:5abb1793115ce8174461319d994778cf51957ebc86422089a62263a77b645b78" -> "sha256:b946a7090cabf0bdaf71018e3273efa8d119ef2339b3fbdcd78ad2c152168ac8" [label=""];
  "sha256:732e7d69753aeb47edfb0ab6bdebda420bb008619d59119de0f3019195406ea0" -> "sha256:b946a7090cabf0bdaf71018e3273efa8d119ef2339b3fbdcd78ad2c152168ac8" [label=""];
  "sha256:b946a7090cabf0bdaf71018e3273efa8d119ef2339b3fbdcd78ad2c152168ac8" -> "sha256:d317a8481c36f4dda62190f3855c02cdbe9de4e3f481a8c1f5ebe7c9423a6012" [label=""];
  "sha256:d317a8481c36f4dda62190f3855c02cdbe9de4e3f481a8c1f5ebe7c9423a6012" -> "sha256:f07199ed5f23f3abc4c94a580c2cf43ec6e094f3f0916804f8419099afd2fa92" [label=""];
  "sha256:732e7d69753aeb47edfb0ab6bdebda420bb008619d59119de0f3019195406ea0" -> "sha256:f07199ed5f23f3abc4c94a580c2cf43ec6e094f3f0916804f8419099afd2fa92" [label=""];
  "sha256:f07199ed5f23f3abc4c94a580c2cf43ec6e094f3f0916804f8419099afd2fa92" -> "sha256:08932c5d19db55ef00ba609cacd8ebb40396d6106a76f6dd57c7dee58de16ba3" [label=""];
}

