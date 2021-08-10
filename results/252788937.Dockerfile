[app/sources/252788937.Dockerfile]
digraph {
  "sha256:91fb465648d743faca637f74cd1e08ca7e21c539580b48ef18d0df967e8667d2" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:3d49bf3810444fd5e26ad691fff2b3509f069a709cb9e5ee61326d632ca83bee" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:3c5e9600720f06efb221e033e609a6b73da9deb0e5c1e063f143d4594f640d29" [label="/bin/sh -c apt-get -y install supervisor postfix sasl2-bin opendkim opendkim-tools" shape="box"];
  "sha256:cf281e2bb34b27124790848706b6739635f2812d90d8f10ff3d515622f223563" [label="copy{src=/assets/install.sh, dest=/opt/install.sh}" shape="note"];
  "sha256:99b0b7a7bef2ea454f7df94ca8eb6ac32b4084143e5c076ab16a84084b50b7cb" [label="sha256:99b0b7a7bef2ea454f7df94ca8eb6ac32b4084143e5c076ab16a84084b50b7cb" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:3d49bf3810444fd5e26ad691fff2b3509f069a709cb9e5ee61326d632ca83bee" [label=""];
  "sha256:3d49bf3810444fd5e26ad691fff2b3509f069a709cb9e5ee61326d632ca83bee" -> "sha256:3c5e9600720f06efb221e033e609a6b73da9deb0e5c1e063f143d4594f640d29" [label=""];
  "sha256:3c5e9600720f06efb221e033e609a6b73da9deb0e5c1e063f143d4594f640d29" -> "sha256:cf281e2bb34b27124790848706b6739635f2812d90d8f10ff3d515622f223563" [label=""];
  "sha256:91fb465648d743faca637f74cd1e08ca7e21c539580b48ef18d0df967e8667d2" -> "sha256:cf281e2bb34b27124790848706b6739635f2812d90d8f10ff3d515622f223563" [label=""];
  "sha256:cf281e2bb34b27124790848706b6739635f2812d90d8f10ff3d515622f223563" -> "sha256:99b0b7a7bef2ea454f7df94ca8eb6ac32b4084143e5c076ab16a84084b50b7cb" [label=""];
}

