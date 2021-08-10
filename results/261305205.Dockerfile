[app/sources/261305205.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:80ac48d0b7c00475b94e817b6573bde9a7881a602eac8e74c961b48555a2bf09" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:0bc9791ca53ad1a15906a968ba4001a1b079a6a3c7cf12b19f77348be2bc721a" [label="/bin/sh -c apt-get -y install         libevent-dev         python3.6-dev         python3.6         python3-pip &&     python3.6 -m pip install         locustio==0.8" shape="box"];
  "sha256:8b395dc84dbe46a4c76cda22bd64dc9ad47ea9ceb20b21f8628b2bb522d0ecff" [label="local://context" shape="ellipse"];
  "sha256:cf5ad5bbdc1a1f71ff784710344d69e58311655bc73de9135d6f2b85323a94f8" [label="copy{src=/run.py, dest=/run.py}" shape="note"];
  "sha256:0d6cd4b4855c9f281aa36ff72d4f3125e4d3ec2e6ba0218f37fc95fffe145979" [label="sha256:0d6cd4b4855c9f281aa36ff72d4f3125e4d3ec2e6ba0218f37fc95fffe145979" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:80ac48d0b7c00475b94e817b6573bde9a7881a602eac8e74c961b48555a2bf09" [label=""];
  "sha256:80ac48d0b7c00475b94e817b6573bde9a7881a602eac8e74c961b48555a2bf09" -> "sha256:0bc9791ca53ad1a15906a968ba4001a1b079a6a3c7cf12b19f77348be2bc721a" [label=""];
  "sha256:0bc9791ca53ad1a15906a968ba4001a1b079a6a3c7cf12b19f77348be2bc721a" -> "sha256:cf5ad5bbdc1a1f71ff784710344d69e58311655bc73de9135d6f2b85323a94f8" [label=""];
  "sha256:8b395dc84dbe46a4c76cda22bd64dc9ad47ea9ceb20b21f8628b2bb522d0ecff" -> "sha256:cf5ad5bbdc1a1f71ff784710344d69e58311655bc73de9135d6f2b85323a94f8" [label=""];
  "sha256:cf5ad5bbdc1a1f71ff784710344d69e58311655bc73de9135d6f2b85323a94f8" -> "sha256:0d6cd4b4855c9f281aa36ff72d4f3125e4d3ec2e6ba0218f37fc95fffe145979" [label=""];
}

