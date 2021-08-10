[app/sources/247334051.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:121632be109ac59cf5a5915240959fdd33d3b6a2b198e8dfd5fb736e91296986" [label="/bin/sh -c apt update &&     apt install -y         build-essential         libffi-dev         mysql-client         python-dev         python-pip &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:53bc68ad6011cba137e2acee0c4685650506b9436d9616b3f65b5b0007c6169d" [label="/bin/sh -c mkdir -p /opt/CTFd" shape="box"];
  "sha256:b3d148657d9775ded73996d5d26ec7fb745aff5dabd004bccb7a55b62ba2fbbd" [label="local://context" shape="ellipse"];
  "sha256:5f634a2e0448fafefd48917264dcd6ef43afc5392de2f65c9a3ebef0cb0604ea" [label="copy{src=/, dest=/opt/CTFd}" shape="note"];
  "sha256:2b4353f4dad4e939a42674d188453572d7cf456ca237761e9eb3a6f11fda2cbb" [label="mkdir{path=/opt/CTFd}" shape="note"];
  "sha256:f188a048292c0a5de3969f9eb7a0fdb76a1fb91c634d7aa99e911b086d503755" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:77f8e5ba2801f95f60f756c6c412538470609fe309f55950cc694625d49580f4" [label="/bin/sh -c pip install pymysql" shape="box"];
  "sha256:89942bbeeabf90b1c5865cf5e447cbbc40da58d892da16fcd55b97c6fc08394a" [label="/bin/sh -c chmod +x /opt/CTFd/docker-entrypoint.sh" shape="box"];
  "sha256:d4b8748d124eb468f434838cdbc0af0c5b3a93fa35ac6d7326965ea3a96b83ea" [label="sha256:d4b8748d124eb468f434838cdbc0af0c5b3a93fa35ac6d7326965ea3a96b83ea" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:121632be109ac59cf5a5915240959fdd33d3b6a2b198e8dfd5fb736e91296986" [label=""];
  "sha256:121632be109ac59cf5a5915240959fdd33d3b6a2b198e8dfd5fb736e91296986" -> "sha256:53bc68ad6011cba137e2acee0c4685650506b9436d9616b3f65b5b0007c6169d" [label=""];
  "sha256:53bc68ad6011cba137e2acee0c4685650506b9436d9616b3f65b5b0007c6169d" -> "sha256:5f634a2e0448fafefd48917264dcd6ef43afc5392de2f65c9a3ebef0cb0604ea" [label=""];
  "sha256:b3d148657d9775ded73996d5d26ec7fb745aff5dabd004bccb7a55b62ba2fbbd" -> "sha256:5f634a2e0448fafefd48917264dcd6ef43afc5392de2f65c9a3ebef0cb0604ea" [label=""];
  "sha256:5f634a2e0448fafefd48917264dcd6ef43afc5392de2f65c9a3ebef0cb0604ea" -> "sha256:2b4353f4dad4e939a42674d188453572d7cf456ca237761e9eb3a6f11fda2cbb" [label=""];
  "sha256:2b4353f4dad4e939a42674d188453572d7cf456ca237761e9eb3a6f11fda2cbb" -> "sha256:f188a048292c0a5de3969f9eb7a0fdb76a1fb91c634d7aa99e911b086d503755" [label=""];
  "sha256:f188a048292c0a5de3969f9eb7a0fdb76a1fb91c634d7aa99e911b086d503755" -> "sha256:77f8e5ba2801f95f60f756c6c412538470609fe309f55950cc694625d49580f4" [label=""];
  "sha256:77f8e5ba2801f95f60f756c6c412538470609fe309f55950cc694625d49580f4" -> "sha256:89942bbeeabf90b1c5865cf5e447cbbc40da58d892da16fcd55b97c6fc08394a" [label=""];
  "sha256:89942bbeeabf90b1c5865cf5e447cbbc40da58d892da16fcd55b97c6fc08394a" -> "sha256:d4b8748d124eb468f434838cdbc0af0c5b3a93fa35ac6d7326965ea3a96b83ea" [label=""];
}

