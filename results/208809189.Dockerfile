[app/sources/208809189.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:26404811ba7edd53b1112a1239dff051104d614496d16c2471f49fb3f53dc96b" [label="/bin/sh -c apt-get update &&     apt-get -y dist-upgrade &&     apt-get autoclean &&     rm -rf /tmp/* && rm -rf /var/log/*" shape="box"];
  "sha256:ae5b3a5e6505ac024a4c9a212895d9701a9198eff38a64e27c58516efcf5d82c" [label="sha256:ae5b3a5e6505ac024a4c9a212895d9701a9198eff38a64e27c58516efcf5d82c" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:26404811ba7edd53b1112a1239dff051104d614496d16c2471f49fb3f53dc96b" [label=""];
  "sha256:26404811ba7edd53b1112a1239dff051104d614496d16c2471f49fb3f53dc96b" -> "sha256:ae5b3a5e6505ac024a4c9a212895d9701a9198eff38a64e27c58516efcf5d82c" [label=""];
}

