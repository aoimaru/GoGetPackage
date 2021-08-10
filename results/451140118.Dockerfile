[app/sources/451140118.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:f2d608785e42630a8cd6e47ffe160e0ce9b3cc235d5cb2dc214f24e4e7983996" [label="/bin/sh -c sed -i -e 's/# deb-src/deb-src/g' /etc/apt/sources.list" shape="box"];
  "sha256:3add83fede00f338b8c89d4e2b2f9377039e0ad22d6b9f1188d9f426ea59e905" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y wget dpkg-dev devscripts debhelper dh-autoreconf gnupg2 gnupg-agent" shape="box"];
  "sha256:0bceeb24ad0ce2df7b0d92fd8686f213f6807afc3a67df0fb701914ec4406b64" [label="/bin/sh -c useradd -ms /bin/bash builder" shape="box"];
  "sha256:2bbdcd9efb4dc51128de1dd6b143e53140b539f310f004f370a4a53d5014edc9" [label="mkdir{path=/home/builder}" shape="note"];
  "sha256:77cf3f1cab6579ad0d471df696096edf28a51e9a2762457fcee3b9528fbd5c30" [label="sha256:77cf3f1cab6579ad0d471df696096edf28a51e9a2762457fcee3b9528fbd5c30" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:f2d608785e42630a8cd6e47ffe160e0ce9b3cc235d5cb2dc214f24e4e7983996" [label=""];
  "sha256:f2d608785e42630a8cd6e47ffe160e0ce9b3cc235d5cb2dc214f24e4e7983996" -> "sha256:3add83fede00f338b8c89d4e2b2f9377039e0ad22d6b9f1188d9f426ea59e905" [label=""];
  "sha256:3add83fede00f338b8c89d4e2b2f9377039e0ad22d6b9f1188d9f426ea59e905" -> "sha256:0bceeb24ad0ce2df7b0d92fd8686f213f6807afc3a67df0fb701914ec4406b64" [label=""];
  "sha256:0bceeb24ad0ce2df7b0d92fd8686f213f6807afc3a67df0fb701914ec4406b64" -> "sha256:2bbdcd9efb4dc51128de1dd6b143e53140b539f310f004f370a4a53d5014edc9" [label=""];
  "sha256:2bbdcd9efb4dc51128de1dd6b143e53140b539f310f004f370a4a53d5014edc9" -> "sha256:77cf3f1cab6579ad0d471df696096edf28a51e9a2762457fcee3b9528fbd5c30" [label=""];
}

