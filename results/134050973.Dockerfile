[app/sources/134050973.Dockerfile]
digraph {
  "sha256:952fd226df86fe3faf57c7ccb5c24d3dc31a5152f9dad546047a530a05bd90b0" [label="docker-image://docker.io/library/ubuntu:12.04@sha256:18305429afa14ea462f810146ba44d4363ae76e4c8dfc38288cf73aa07485005" shape="ellipse"];
  "sha256:e9602c1c8592b71496d931b08b60583ad66d912b687b36dc976ed54867a56fc8" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:9cf3cfe7e9d13ca1ed11c8b054ea8c2cb3c09d769ad9e0f7334d1c9b8a896463" [label="/bin/sh -c apt-get upgrade -qq" shape="box"];
  "sha256:476df37c2d2e6a894e4311ab1c284dd9f80a08364d6716254b2f2fd77b1e3add" [label="/bin/sh -c apt-get install -y -qq --no-install-recommends inkscape" shape="box"];
  "sha256:1dd0d6aa86dfb22cbbaad1889258b9b0eb4c690d79e2ac2dc942a2d8e0f3a49d" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:ddd45aac864de7539ca64197359bdfc2ffd5181fdf8b1ec0d5f570b916b99f2f" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:b8365a419a1069eb9110783b383e194db45f7496d3750795bf2c204dd0f3b1c6" [label="sha256:b8365a419a1069eb9110783b383e194db45f7496d3750795bf2c204dd0f3b1c6" shape="plaintext"];
  "sha256:952fd226df86fe3faf57c7ccb5c24d3dc31a5152f9dad546047a530a05bd90b0" -> "sha256:e9602c1c8592b71496d931b08b60583ad66d912b687b36dc976ed54867a56fc8" [label=""];
  "sha256:e9602c1c8592b71496d931b08b60583ad66d912b687b36dc976ed54867a56fc8" -> "sha256:9cf3cfe7e9d13ca1ed11c8b054ea8c2cb3c09d769ad9e0f7334d1c9b8a896463" [label=""];
  "sha256:9cf3cfe7e9d13ca1ed11c8b054ea8c2cb3c09d769ad9e0f7334d1c9b8a896463" -> "sha256:476df37c2d2e6a894e4311ab1c284dd9f80a08364d6716254b2f2fd77b1e3add" [label=""];
  "sha256:476df37c2d2e6a894e4311ab1c284dd9f80a08364d6716254b2f2fd77b1e3add" -> "sha256:1dd0d6aa86dfb22cbbaad1889258b9b0eb4c690d79e2ac2dc942a2d8e0f3a49d" [label=""];
  "sha256:1dd0d6aa86dfb22cbbaad1889258b9b0eb4c690d79e2ac2dc942a2d8e0f3a49d" -> "sha256:ddd45aac864de7539ca64197359bdfc2ffd5181fdf8b1ec0d5f570b916b99f2f" [label=""];
  "sha256:ddd45aac864de7539ca64197359bdfc2ffd5181fdf8b1ec0d5f570b916b99f2f" -> "sha256:b8365a419a1069eb9110783b383e194db45f7496d3750795bf2c204dd0f3b1c6" [label=""];
}

