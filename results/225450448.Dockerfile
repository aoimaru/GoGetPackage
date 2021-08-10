[app/sources/225450448.Dockerfile]
digraph {
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" [label="docker-image://docker.io/library/golang:1.4" shape="ellipse"];
  "sha256:7a00ca1a8597e7b51912a8cb3fe01d6708bf5f662842367d17e615d27bec7640" [label="/bin/sh -c echo \"deb http://ftp.us.debian.org/debian testing main contrib\" >> /etc/apt/sources.list" shape="box"];
  "sha256:493c6100ae89811801f61f245529af8437f2ad2011d6a364479ed8f8ac6818f3" [label="/bin/sh -c apt-get update && apt-get install -y iptables criu=1.5.2-1 && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:144e3a37beb735a2224674eb2ca51a10cd86338c466223d1771b3c646b7b24b2" [label="/bin/sh -c go get golang.org/x/tools/cmd/cover" shape="box"];
  "sha256:4d7325c64beabc2d275a47ef2ff2af29be6612e2672cdf001da44e60a985b29c" [label="/bin/sh -c go get github.com/docker/docker/pkg/term" shape="box"];
  "sha256:4b4804515f467196c61bb2fa315e745f1212cc443da12cfbf5743c0d20ec6b32" [label="/bin/sh -c mkdir /busybox &&     curl -sSL 'https://github.com/jpetazzo/docker-busybox/raw/buildroot-2014.11/rootfs.tar' | tar -xC /busybox" shape="box"];
  "sha256:31eae7d0c61f6d1267d80384bdec774861c5d83b7387e10427ff78c59b9e4c56" [label="/bin/sh -c curl -sSL https://raw.githubusercontent.com/docker/docker/master/hack/dind -o /dind &&     chmod +x /dind" shape="box"];
  "sha256:1561b8bd8f4b3b2f21e920cd0f5fd3ca6fe44484f8b0e5e488a45191d1bd8af8" [label="local://context" shape="ellipse"];
  "sha256:98771c84b4d82a6b05d4ffa697e23444f9969f6fc92212e9163b176990aed93a" [label="copy{src=/, dest=/go/src/github.com/docker/libcontainer}" shape="note"];
  "sha256:063b7581478fa50018f90ca2fedd082a5c399e9bc5bf7cef2dd03d979bbd4b63" [label="mkdir{path=/go/src/github.com/docker/libcontainer}" shape="note"];
  "sha256:b9d491ae30b6198ae91151702bf93711ac440d25590bbdd31de5d990042c3c3d" [label="/bin/sh -c cp sample_configs/minimal.json /busybox/container.json" shape="box"];
  "sha256:d502bd2f8b670d395347d0cf647056913fda427d6737f21fd7f8bba5a8df1288" [label="/bin/sh -c make direct-install" shape="box"];
  "sha256:0fd2292173e819701d30a24861422a873fdc7c9e4600864344cf3d383db12a19" [label="sha256:0fd2292173e819701d30a24861422a873fdc7c9e4600864344cf3d383db12a19" shape="plaintext"];
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" -> "sha256:7a00ca1a8597e7b51912a8cb3fe01d6708bf5f662842367d17e615d27bec7640" [label=""];
  "sha256:7a00ca1a8597e7b51912a8cb3fe01d6708bf5f662842367d17e615d27bec7640" -> "sha256:493c6100ae89811801f61f245529af8437f2ad2011d6a364479ed8f8ac6818f3" [label=""];
  "sha256:493c6100ae89811801f61f245529af8437f2ad2011d6a364479ed8f8ac6818f3" -> "sha256:144e3a37beb735a2224674eb2ca51a10cd86338c466223d1771b3c646b7b24b2" [label=""];
  "sha256:144e3a37beb735a2224674eb2ca51a10cd86338c466223d1771b3c646b7b24b2" -> "sha256:4d7325c64beabc2d275a47ef2ff2af29be6612e2672cdf001da44e60a985b29c" [label=""];
  "sha256:4d7325c64beabc2d275a47ef2ff2af29be6612e2672cdf001da44e60a985b29c" -> "sha256:4b4804515f467196c61bb2fa315e745f1212cc443da12cfbf5743c0d20ec6b32" [label=""];
  "sha256:4b4804515f467196c61bb2fa315e745f1212cc443da12cfbf5743c0d20ec6b32" -> "sha256:31eae7d0c61f6d1267d80384bdec774861c5d83b7387e10427ff78c59b9e4c56" [label=""];
  "sha256:31eae7d0c61f6d1267d80384bdec774861c5d83b7387e10427ff78c59b9e4c56" -> "sha256:98771c84b4d82a6b05d4ffa697e23444f9969f6fc92212e9163b176990aed93a" [label=""];
  "sha256:1561b8bd8f4b3b2f21e920cd0f5fd3ca6fe44484f8b0e5e488a45191d1bd8af8" -> "sha256:98771c84b4d82a6b05d4ffa697e23444f9969f6fc92212e9163b176990aed93a" [label=""];
  "sha256:98771c84b4d82a6b05d4ffa697e23444f9969f6fc92212e9163b176990aed93a" -> "sha256:063b7581478fa50018f90ca2fedd082a5c399e9bc5bf7cef2dd03d979bbd4b63" [label=""];
  "sha256:063b7581478fa50018f90ca2fedd082a5c399e9bc5bf7cef2dd03d979bbd4b63" -> "sha256:b9d491ae30b6198ae91151702bf93711ac440d25590bbdd31de5d990042c3c3d" [label=""];
  "sha256:b9d491ae30b6198ae91151702bf93711ac440d25590bbdd31de5d990042c3c3d" -> "sha256:d502bd2f8b670d395347d0cf647056913fda427d6737f21fd7f8bba5a8df1288" [label=""];
  "sha256:d502bd2f8b670d395347d0cf647056913fda427d6737f21fd7f8bba5a8df1288" -> "sha256:0fd2292173e819701d30a24861422a873fdc7c9e4600864344cf3d383db12a19" [label=""];
}

