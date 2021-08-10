[app/sources/206126381.Dockerfile]
digraph {
  "sha256:01047b5d18033197f33bc9754e2443f3a4e7bfaf5f862008de7447b8291afb17" [label="docker-image://docker.io/crops/codi:deps" shape="ellipse"];
  "sha256:313340262680857a8440c4f739014b7e7b5d6ac608d09b625c32178c43e56182" [label="/bin/sh -c mkdir -p /usr/local/crops/codi/" shape="box"];
  "sha256:7d35986d90f6833d992cc29eb87a5f80fceac28d037e76dedd657af40fec2467" [label="local://context" shape="ellipse"];
  "sha256:557d2996c1ee94dd197b0f908850f41094298d6d36166109e6c4318ce167a338" [label="copy{src=/codi, dest=/usr/local/crops/codi/}" shape="note"];
  "sha256:6f43879c8475266f585ba2068b67766222d2a48145658ae0a54ccb8047357783" [label="copy{src=/utils.[ch], dest=/usr/local/crops/}" shape="note"];
  "sha256:0afe4d4b8ba8e47c0ce9a60318fd205a5821558ad699ff1ee3f04cbd7a79f6ae" [label="copy{src=/globals.[ch], dest=/usr/local/crops/}" shape="note"];
  "sha256:616b922143db50dfeda66f9325a6fe0e3971d881dcbf481d33ea269f6a5c9542" [label="/bin/sh -c cd /usr/local/crops/codi && \tmake $build_type && \tmkdir -p /bin/codi && \tcp /usr/local/crops/codi/codi /bin/codi/run && \trm -rf /usr/local/crops" shape="box"];
  "sha256:5736981b283c88b7fba4c6cda26905e2467043f8d57345cbe715c7935db1fd71" [label="sha256:5736981b283c88b7fba4c6cda26905e2467043f8d57345cbe715c7935db1fd71" shape="plaintext"];
  "sha256:01047b5d18033197f33bc9754e2443f3a4e7bfaf5f862008de7447b8291afb17" -> "sha256:313340262680857a8440c4f739014b7e7b5d6ac608d09b625c32178c43e56182" [label=""];
  "sha256:313340262680857a8440c4f739014b7e7b5d6ac608d09b625c32178c43e56182" -> "sha256:557d2996c1ee94dd197b0f908850f41094298d6d36166109e6c4318ce167a338" [label=""];
  "sha256:7d35986d90f6833d992cc29eb87a5f80fceac28d037e76dedd657af40fec2467" -> "sha256:557d2996c1ee94dd197b0f908850f41094298d6d36166109e6c4318ce167a338" [label=""];
  "sha256:557d2996c1ee94dd197b0f908850f41094298d6d36166109e6c4318ce167a338" -> "sha256:6f43879c8475266f585ba2068b67766222d2a48145658ae0a54ccb8047357783" [label=""];
  "sha256:7d35986d90f6833d992cc29eb87a5f80fceac28d037e76dedd657af40fec2467" -> "sha256:6f43879c8475266f585ba2068b67766222d2a48145658ae0a54ccb8047357783" [label=""];
  "sha256:6f43879c8475266f585ba2068b67766222d2a48145658ae0a54ccb8047357783" -> "sha256:0afe4d4b8ba8e47c0ce9a60318fd205a5821558ad699ff1ee3f04cbd7a79f6ae" [label=""];
  "sha256:7d35986d90f6833d992cc29eb87a5f80fceac28d037e76dedd657af40fec2467" -> "sha256:0afe4d4b8ba8e47c0ce9a60318fd205a5821558ad699ff1ee3f04cbd7a79f6ae" [label=""];
  "sha256:0afe4d4b8ba8e47c0ce9a60318fd205a5821558ad699ff1ee3f04cbd7a79f6ae" -> "sha256:616b922143db50dfeda66f9325a6fe0e3971d881dcbf481d33ea269f6a5c9542" [label=""];
  "sha256:616b922143db50dfeda66f9325a6fe0e3971d881dcbf481d33ea269f6a5c9542" -> "sha256:5736981b283c88b7fba4c6cda26905e2467043f8d57345cbe715c7935db1fd71" [label=""];
}

