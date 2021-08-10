[app/sources/412334329.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:a6bbe845060f9c8778f2f751f0a65d8520caeb244e7424b5de9888d4cbd9b2d5" [label="/bin/sh -c apt-get update && \tapt-get install -qy \t\tcmake \t\tbuild-essential \t\twget" shape="box"];
  "sha256:45c2696abac8a1a375046a313a6c06c153958d76fd1f123f3b4a3d9afe87bf65" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:1993cd5c1edb6bace079004ec175e1889bb3fdc51a733b46079f7729393a0655" [label="/bin/sh -c wget ${LIBDSK_URL} -O- | \ttar -xzf - && \tcd libdsk-* && \t./configure && \tmake -j2 && \tmake install && \trm -rf ../libdsk-*" shape="box"];
  "sha256:8fbda71f1370fa99870b02ae4a57a68bebd886c7fb65420b307bde0875aa7776" [label="/bin/sh -c mkdir /build" shape="box"];
  "sha256:36dcc651333221b3e0a04326a8de0b7947a510066a704875e00c85e12859e430" [label="mkdir{path=/build}" shape="note"];
  "sha256:bb53a82a6bb8ff45ad1fdbc32c32955866d40414dc3503b0f9319ca2f2f7307c" [label="local://context" shape="ellipse"];
  "sha256:92af6dd89284efa4ce6e49711a63cdcb8735edf56a01c3cfc600fa7a6bb694ae" [label="copy{src=/docker-build.sh, dest=/build}" shape="note"];
  "sha256:2c7af18aa8267d1708841d97fb303391657ba99b73c44644f56c2d5dbf196276" [label="sha256:2c7af18aa8267d1708841d97fb303391657ba99b73c44644f56c2d5dbf196276" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:a6bbe845060f9c8778f2f751f0a65d8520caeb244e7424b5de9888d4cbd9b2d5" [label=""];
  "sha256:a6bbe845060f9c8778f2f751f0a65d8520caeb244e7424b5de9888d4cbd9b2d5" -> "sha256:45c2696abac8a1a375046a313a6c06c153958d76fd1f123f3b4a3d9afe87bf65" [label=""];
  "sha256:45c2696abac8a1a375046a313a6c06c153958d76fd1f123f3b4a3d9afe87bf65" -> "sha256:1993cd5c1edb6bace079004ec175e1889bb3fdc51a733b46079f7729393a0655" [label=""];
  "sha256:1993cd5c1edb6bace079004ec175e1889bb3fdc51a733b46079f7729393a0655" -> "sha256:8fbda71f1370fa99870b02ae4a57a68bebd886c7fb65420b307bde0875aa7776" [label=""];
  "sha256:8fbda71f1370fa99870b02ae4a57a68bebd886c7fb65420b307bde0875aa7776" -> "sha256:36dcc651333221b3e0a04326a8de0b7947a510066a704875e00c85e12859e430" [label=""];
  "sha256:36dcc651333221b3e0a04326a8de0b7947a510066a704875e00c85e12859e430" -> "sha256:92af6dd89284efa4ce6e49711a63cdcb8735edf56a01c3cfc600fa7a6bb694ae" [label=""];
  "sha256:bb53a82a6bb8ff45ad1fdbc32c32955866d40414dc3503b0f9319ca2f2f7307c" -> "sha256:92af6dd89284efa4ce6e49711a63cdcb8735edf56a01c3cfc600fa7a6bb694ae" [label=""];
  "sha256:92af6dd89284efa4ce6e49711a63cdcb8735edf56a01c3cfc600fa7a6bb694ae" -> "sha256:2c7af18aa8267d1708841d97fb303391657ba99b73c44644f56c2d5dbf196276" [label=""];
}

