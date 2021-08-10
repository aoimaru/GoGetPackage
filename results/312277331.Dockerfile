[app/sources/312277331.Dockerfile]
digraph {
  "sha256:6ef3733dc1923e1c365d2748aaa1d1bbdffe8678dc82beb8069affbda5ce459e" [label="local://context" shape="ellipse"];
  "sha256:d468b18a3efd621a2482d9d72b7a80b3661ff8c83976338341f070237642d452" [label="docker-image://docker.io/library/debian:9.8-slim" shape="ellipse"];
  "sha256:42f5e4bb76866f77425d8ee515cc7b3b28d9dedfae374ec071e4ef7c24e064b9" [label="/bin/sh -c printf \"deb http://deb.debian.org/debian stretch-backports main\\n\" > /etc/apt/sources.list.d/backports.list     && apt-get update     && apt-get -t stretch-backports install -y iptables iproute2" shape="box"];
  "sha256:2461932107ce334e8284b6ab05456259adfb2c27ccf250f7e914f57ac2686fe1" [label="/bin/sh -c apt-get update && apt-get install -y     ipset     iputils-arping     iputils-ping     iputils-tracepath     net-tools     conntrack     runit     kmod     netbase     procps     ca-certificates" shape="box"];
  "sha256:580847abb1c3a5e8e3e80cebeb3d2f933fa976614da1406abe3100b7b04b3235" [label="docker-image://docker.io/calico/bird:latest" shape="ellipse"];
  "sha256:92b8e85f467a2ff592f3a5cd7ca4c43bbcdf2cf7f78000a8ed2c6adcad99d837" [label="copy{src=/bird*, dest=/bin/}" shape="note"];
  "sha256:a0535dedf19d745020b83e57a49ea95e09443255cbc0a93ae3b60427e227a254" [label="copy{src=/filesystem, dest=/}" shape="note"];
  "sha256:4c6277beb8e3e9bb895d0ebfb75c97d0b084b0f036f5ce1667fbdd6de0f4d8fc" [label="copy{src=/vendor/github.com/kelseyhightower/confd/etc/calico, dest=/etc/calico/}" shape="note"];
  "sha256:131b58343b065ae0f1bb12e23e10df6a8f993d75f3980ab1cc86f13a70b54dbf" [label="copy{src=/dist/bin/calico-node-amd64, dest=/bin/calico-node}" shape="note"];
  "sha256:fe7a486a1815953148e82579982aa7f81c7501c0b1a200ddfef44138994881e2" [label="docker-image://docker.io/calico/bpftool:v5.0-amd64" shape="ellipse"];
  "sha256:d52e533d2caef7a251a8f89fc7a321536c42848387c2c6c7ff271659ed1d7ace" [label="copy{src=/bpftool, dest=/bin}" shape="note"];
  "sha256:d58c9389d169014a04775e7659d2ecde2412e70d4d5851ad58124903401ce4d0" [label="sha256:d58c9389d169014a04775e7659d2ecde2412e70d4d5851ad58124903401ce4d0" shape="plaintext"];
  "sha256:d468b18a3efd621a2482d9d72b7a80b3661ff8c83976338341f070237642d452" -> "sha256:42f5e4bb76866f77425d8ee515cc7b3b28d9dedfae374ec071e4ef7c24e064b9" [label=""];
  "sha256:42f5e4bb76866f77425d8ee515cc7b3b28d9dedfae374ec071e4ef7c24e064b9" -> "sha256:2461932107ce334e8284b6ab05456259adfb2c27ccf250f7e914f57ac2686fe1" [label=""];
  "sha256:2461932107ce334e8284b6ab05456259adfb2c27ccf250f7e914f57ac2686fe1" -> "sha256:92b8e85f467a2ff592f3a5cd7ca4c43bbcdf2cf7f78000a8ed2c6adcad99d837" [label=""];
  "sha256:580847abb1c3a5e8e3e80cebeb3d2f933fa976614da1406abe3100b7b04b3235" -> "sha256:92b8e85f467a2ff592f3a5cd7ca4c43bbcdf2cf7f78000a8ed2c6adcad99d837" [label=""];
  "sha256:92b8e85f467a2ff592f3a5cd7ca4c43bbcdf2cf7f78000a8ed2c6adcad99d837" -> "sha256:a0535dedf19d745020b83e57a49ea95e09443255cbc0a93ae3b60427e227a254" [label=""];
  "sha256:6ef3733dc1923e1c365d2748aaa1d1bbdffe8678dc82beb8069affbda5ce459e" -> "sha256:a0535dedf19d745020b83e57a49ea95e09443255cbc0a93ae3b60427e227a254" [label=""];
  "sha256:a0535dedf19d745020b83e57a49ea95e09443255cbc0a93ae3b60427e227a254" -> "sha256:4c6277beb8e3e9bb895d0ebfb75c97d0b084b0f036f5ce1667fbdd6de0f4d8fc" [label=""];
  "sha256:6ef3733dc1923e1c365d2748aaa1d1bbdffe8678dc82beb8069affbda5ce459e" -> "sha256:4c6277beb8e3e9bb895d0ebfb75c97d0b084b0f036f5ce1667fbdd6de0f4d8fc" [label=""];
  "sha256:4c6277beb8e3e9bb895d0ebfb75c97d0b084b0f036f5ce1667fbdd6de0f4d8fc" -> "sha256:131b58343b065ae0f1bb12e23e10df6a8f993d75f3980ab1cc86f13a70b54dbf" [label=""];
  "sha256:6ef3733dc1923e1c365d2748aaa1d1bbdffe8678dc82beb8069affbda5ce459e" -> "sha256:131b58343b065ae0f1bb12e23e10df6a8f993d75f3980ab1cc86f13a70b54dbf" [label=""];
  "sha256:131b58343b065ae0f1bb12e23e10df6a8f993d75f3980ab1cc86f13a70b54dbf" -> "sha256:d52e533d2caef7a251a8f89fc7a321536c42848387c2c6c7ff271659ed1d7ace" [label=""];
  "sha256:fe7a486a1815953148e82579982aa7f81c7501c0b1a200ddfef44138994881e2" -> "sha256:d52e533d2caef7a251a8f89fc7a321536c42848387c2c6c7ff271659ed1d7ace" [label=""];
  "sha256:d52e533d2caef7a251a8f89fc7a321536c42848387c2c6c7ff271659ed1d7ace" -> "sha256:d58c9389d169014a04775e7659d2ecde2412e70d4d5851ad58124903401ce4d0" [label=""];
}

