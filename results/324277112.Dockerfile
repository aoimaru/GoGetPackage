[app/sources/324277112.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:2de46d63501078a49b5d87383d0580631fba8b0ceff6e53394536f2b5da12392" [label="/bin/sh -c apt-get -yqq update && apt-get -yqq install docker.io && apt-get -yqq install git" shape="box"];
  "sha256:69a84eb58c86d9d14f3fec01378ea00079d2a8c3d1f62245ca722f8706e79f07" [label="/bin/sh -c mkdir -p /root/src" shape="box"];
  "sha256:4da7069088b12eae042d284a47f759b3eb209dc8f4b054de2414759024275b4d" [label="mkdir{path=/root/src}" shape="note"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" [label="docker-image://docker.io/library/golang:1.10-alpine" shape="ellipse"];
  "sha256:7bbab00023e5a9bcf2a85aedc7ec0ce6548eb440033b8c0cee48aafa248ccb6b" [label="mkdir{path=/go/src/component-docker}" shape="note"];
  "sha256:a9b495642a5447ceb0489f6e62b1394499b84df2d7007d5b68e9d89bed3ae5e6" [label="local://context" shape="ellipse"];
  "sha256:014015eebe4bf35308695e4f2fbe012be29075b8fdb0c838a6325d9d3e1b7aab" [label="copy{src=/, dest=/go/src/component-docker}" shape="note"];
  "sha256:fe4757879fc00766cc28a701f852e0f961a5c28d6256232d1f42fdba7d25d734" [label="/bin/sh -c set -ex && go build -v -o /go/bin/component-docker -gcflags '-N -l' ./*.go" shape="box"];
  "sha256:81358e1796fb7782de7f96d441ef29795cd150040a284d12807a1026f670d282" [label="copy{src=/go/bin/component-docker, dest=/usr/bin/}" shape="note"];
  "sha256:3276f1f3bb1fb6c5b3fc3210bc469f875281728b2e879eff284ddf6377595691" [label="sha256:3276f1f3bb1fb6c5b3fc3210bc469f875281728b2e879eff284ddf6377595691" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:2de46d63501078a49b5d87383d0580631fba8b0ceff6e53394536f2b5da12392" [label=""];
  "sha256:2de46d63501078a49b5d87383d0580631fba8b0ceff6e53394536f2b5da12392" -> "sha256:69a84eb58c86d9d14f3fec01378ea00079d2a8c3d1f62245ca722f8706e79f07" [label=""];
  "sha256:69a84eb58c86d9d14f3fec01378ea00079d2a8c3d1f62245ca722f8706e79f07" -> "sha256:4da7069088b12eae042d284a47f759b3eb209dc8f4b054de2414759024275b4d" [label=""];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" -> "sha256:7bbab00023e5a9bcf2a85aedc7ec0ce6548eb440033b8c0cee48aafa248ccb6b" [label=""];
  "sha256:7bbab00023e5a9bcf2a85aedc7ec0ce6548eb440033b8c0cee48aafa248ccb6b" -> "sha256:014015eebe4bf35308695e4f2fbe012be29075b8fdb0c838a6325d9d3e1b7aab" [label=""];
  "sha256:a9b495642a5447ceb0489f6e62b1394499b84df2d7007d5b68e9d89bed3ae5e6" -> "sha256:014015eebe4bf35308695e4f2fbe012be29075b8fdb0c838a6325d9d3e1b7aab" [label=""];
  "sha256:014015eebe4bf35308695e4f2fbe012be29075b8fdb0c838a6325d9d3e1b7aab" -> "sha256:fe4757879fc00766cc28a701f852e0f961a5c28d6256232d1f42fdba7d25d734" [label=""];
  "sha256:4da7069088b12eae042d284a47f759b3eb209dc8f4b054de2414759024275b4d" -> "sha256:81358e1796fb7782de7f96d441ef29795cd150040a284d12807a1026f670d282" [label=""];
  "sha256:fe4757879fc00766cc28a701f852e0f961a5c28d6256232d1f42fdba7d25d734" -> "sha256:81358e1796fb7782de7f96d441ef29795cd150040a284d12807a1026f670d282" [label=""];
  "sha256:81358e1796fb7782de7f96d441ef29795cd150040a284d12807a1026f670d282" -> "sha256:3276f1f3bb1fb6c5b3fc3210bc469f875281728b2e879eff284ddf6377595691" [label=""];
}

