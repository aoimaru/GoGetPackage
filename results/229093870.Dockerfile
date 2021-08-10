[app/sources/229093870.Dockerfile]
digraph {
  "sha256:fd288e3b31475eeae82df359f97fa31f22e0f4d035a051fcf703d85f4f52d103" [label="docker-image://daocloud.io/nginx@sha256:48d56bae87c65ca642b0a1d13c3dc97c4430994991e5531ff123f77cdf975fae" shape="ellipse"];
  "sha256:14f49e09190c4870461bb6e967de7635beb01fadfe7abf2731e1835f9e9001cb" [label="/bin/sh -c mkdir /wwwroot" shape="box"];
  "sha256:0f65e80c7e2a1274fd11d36778146b80ba612210a0a1f408facf1590191a7c57" [label="local://context" shape="ellipse"];
  "sha256:b49d56df26a1ff12418387bd049a1a75fb0eec5ebdba03adf71910d702881927" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:d484c9fdb852e28a9c8ec874a40abfe3fce401cd29154aaaf713b4e564bce4bc" [label="copy{src=/proj/dist, dest=/wwwroot/}" shape="note"];
  "sha256:b9046719718a34afbbf6598026ade78523bb2703845d92f80f13fbfbc167c34f" [label="sha256:b9046719718a34afbbf6598026ade78523bb2703845d92f80f13fbfbc167c34f" shape="plaintext"];
  "sha256:fd288e3b31475eeae82df359f97fa31f22e0f4d035a051fcf703d85f4f52d103" -> "sha256:14f49e09190c4870461bb6e967de7635beb01fadfe7abf2731e1835f9e9001cb" [label=""];
  "sha256:14f49e09190c4870461bb6e967de7635beb01fadfe7abf2731e1835f9e9001cb" -> "sha256:b49d56df26a1ff12418387bd049a1a75fb0eec5ebdba03adf71910d702881927" [label=""];
  "sha256:0f65e80c7e2a1274fd11d36778146b80ba612210a0a1f408facf1590191a7c57" -> "sha256:b49d56df26a1ff12418387bd049a1a75fb0eec5ebdba03adf71910d702881927" [label=""];
  "sha256:b49d56df26a1ff12418387bd049a1a75fb0eec5ebdba03adf71910d702881927" -> "sha256:d484c9fdb852e28a9c8ec874a40abfe3fce401cd29154aaaf713b4e564bce4bc" [label=""];
  "sha256:0f65e80c7e2a1274fd11d36778146b80ba612210a0a1f408facf1590191a7c57" -> "sha256:d484c9fdb852e28a9c8ec874a40abfe3fce401cd29154aaaf713b4e564bce4bc" [label=""];
  "sha256:d484c9fdb852e28a9c8ec874a40abfe3fce401cd29154aaaf713b4e564bce4bc" -> "sha256:b9046719718a34afbbf6598026ade78523bb2703845d92f80f13fbfbc167c34f" [label=""];
}

