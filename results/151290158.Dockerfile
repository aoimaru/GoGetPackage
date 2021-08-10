[app/sources/151290158.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:8fa08c2593a2f2757400bc504956931d12e8415123f1f67a57b86b2e979fda8a" [label="/bin/sh -c apt-get -yq update && apt-get -yq install wget sudo ruby vim" shape="box"];
  "sha256:4457a6c9f2f3d02ee04b1ac70b9c8eb4495ca230f739c8dec7d8cf2821671222" [label="/bin/sh -c wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh" shape="box"];
  "sha256:d09e96e8a891cf5a2e73a7da5695e8784df8929a07fca90fc0ee8e5f02639c71" [label="/bin/sh -c git config --global user.email kevin@littlejohn.id.au   && git config --global user.name \"Kevin Littlejohn\"   && git config --global push.default simple" shape="box"];
  "sha256:4b545b286836cd60580a9ba79fd1192b9a66b53696a433f9e8b4be2d535a3466" [label="sha256:4b545b286836cd60580a9ba79fd1192b9a66b53696a433f9e8b4be2d535a3466" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:8fa08c2593a2f2757400bc504956931d12e8415123f1f67a57b86b2e979fda8a" [label=""];
  "sha256:8fa08c2593a2f2757400bc504956931d12e8415123f1f67a57b86b2e979fda8a" -> "sha256:4457a6c9f2f3d02ee04b1ac70b9c8eb4495ca230f739c8dec7d8cf2821671222" [label=""];
  "sha256:4457a6c9f2f3d02ee04b1ac70b9c8eb4495ca230f739c8dec7d8cf2821671222" -> "sha256:d09e96e8a891cf5a2e73a7da5695e8784df8929a07fca90fc0ee8e5f02639c71" [label=""];
  "sha256:d09e96e8a891cf5a2e73a7da5695e8784df8929a07fca90fc0ee8e5f02639c71" -> "sha256:4b545b286836cd60580a9ba79fd1192b9a66b53696a433f9e8b4be2d535a3466" [label=""];
}

