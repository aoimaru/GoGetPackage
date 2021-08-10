[app/sources/278635979.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:1590955a67c777368ea865f724723d123fa19f8f2edb37563756d1503cd44844" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:54b892349b87a08c78d1883ea49292e250abbd7affaefe69f3307e9554476ad4" [label="/bin/sh -c apt-get install -y --allow-unauthenticated python3" shape="box"];
  "sha256:e59c888c6e961d741f71b72dcba4baf21fd627734759c4dfcdd7e13f46f7c499" [label="/bin/sh -c apt-get install -y --allow-unauthenticated gcc" shape="box"];
  "sha256:8f746e9c1109171afe644e0ba6b1593b7a50c0def80657d39e945f607c1d4616" [label="sha256:8f746e9c1109171afe644e0ba6b1593b7a50c0def80657d39e945f607c1d4616" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:1590955a67c777368ea865f724723d123fa19f8f2edb37563756d1503cd44844" [label=""];
  "sha256:1590955a67c777368ea865f724723d123fa19f8f2edb37563756d1503cd44844" -> "sha256:54b892349b87a08c78d1883ea49292e250abbd7affaefe69f3307e9554476ad4" [label=""];
  "sha256:54b892349b87a08c78d1883ea49292e250abbd7affaefe69f3307e9554476ad4" -> "sha256:e59c888c6e961d741f71b72dcba4baf21fd627734759c4dfcdd7e13f46f7c499" [label=""];
  "sha256:e59c888c6e961d741f71b72dcba4baf21fd627734759c4dfcdd7e13f46f7c499" -> "sha256:8f746e9c1109171afe644e0ba6b1593b7a50c0def80657d39e945f607c1d4616" [label=""];
}

