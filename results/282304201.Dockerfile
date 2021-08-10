[app/sources/282304201.Dockerfile]
digraph {
  "sha256:db5b055067dab7fbfa004bbfb84d28f10615d41689fa6fe7a1ab5698f9235340" [label="docker-image://docker.io/frolvlad/alpine-glibc:latest" shape="ellipse"];
  "sha256:c497fe411ee11b20795319e636bef501b69bc96ff14c01d37a9d8a5d8bb41cca" [label="/bin/sh -c mkdir -p /etc/envoy" shape="box"];
  "sha256:b225b57dcfd3fe7bbebba9d37cbafb57941efd8989097570c069fa0b4c8417a2" [label="local://context" shape="ellipse"];
  "sha256:0c842bfc4e01c679ad902de3e42b0a0ab611df6d7d3a56262ac032f2ea8be116" [label="copy{src=/build_release_stripped/envoy, dest=/usr/local/bin/envoy}" shape="note"];
  "sha256:e27d3b835b0761b8f7c1930aba8cf1a09537aab1a86bc0aeb86f3490b76d1f08" [label="copy{src=/configs/google_com_proxy.v2.yaml, dest=/etc/envoy/envoy.yaml}" shape="note"];
  "sha256:5a4bd4521bbc31d1153435c06df90a05495539a5d4a60a5e8f8dd7418d1252db" [label="copy{src=/ci/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:6c493f04481bbf06970aaf86c0280a3f144c89155a15dce3e1191b6840e41f9b" [label="sha256:6c493f04481bbf06970aaf86c0280a3f144c89155a15dce3e1191b6840e41f9b" shape="plaintext"];
  "sha256:db5b055067dab7fbfa004bbfb84d28f10615d41689fa6fe7a1ab5698f9235340" -> "sha256:c497fe411ee11b20795319e636bef501b69bc96ff14c01d37a9d8a5d8bb41cca" [label=""];
  "sha256:c497fe411ee11b20795319e636bef501b69bc96ff14c01d37a9d8a5d8bb41cca" -> "sha256:0c842bfc4e01c679ad902de3e42b0a0ab611df6d7d3a56262ac032f2ea8be116" [label=""];
  "sha256:b225b57dcfd3fe7bbebba9d37cbafb57941efd8989097570c069fa0b4c8417a2" -> "sha256:0c842bfc4e01c679ad902de3e42b0a0ab611df6d7d3a56262ac032f2ea8be116" [label=""];
  "sha256:0c842bfc4e01c679ad902de3e42b0a0ab611df6d7d3a56262ac032f2ea8be116" -> "sha256:e27d3b835b0761b8f7c1930aba8cf1a09537aab1a86bc0aeb86f3490b76d1f08" [label=""];
  "sha256:b225b57dcfd3fe7bbebba9d37cbafb57941efd8989097570c069fa0b4c8417a2" -> "sha256:e27d3b835b0761b8f7c1930aba8cf1a09537aab1a86bc0aeb86f3490b76d1f08" [label=""];
  "sha256:e27d3b835b0761b8f7c1930aba8cf1a09537aab1a86bc0aeb86f3490b76d1f08" -> "sha256:5a4bd4521bbc31d1153435c06df90a05495539a5d4a60a5e8f8dd7418d1252db" [label=""];
  "sha256:b225b57dcfd3fe7bbebba9d37cbafb57941efd8989097570c069fa0b4c8417a2" -> "sha256:5a4bd4521bbc31d1153435c06df90a05495539a5d4a60a5e8f8dd7418d1252db" [label=""];
  "sha256:5a4bd4521bbc31d1153435c06df90a05495539a5d4a60a5e8f8dd7418d1252db" -> "sha256:6c493f04481bbf06970aaf86c0280a3f144c89155a15dce3e1191b6840e41f9b" [label=""];
}

