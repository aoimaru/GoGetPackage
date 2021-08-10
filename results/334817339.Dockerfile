[app/sources/334817339.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:1d4f44be3e9eabe424e99e9bb3b2f3d5cdfb5192e92520c81ca3e629ac2d8da1" [label="/bin/sh -c apt-get update  && apt-get install -y python3-pip python3-yaml  && pip3 install pandas feather-format" shape="box"];
  "sha256:25fdba9500f6cfed71970790ae5865b161a8dfed25dc7bcbd7fdd628fe477705" [label="local://context" shape="ellipse"];
  "sha256:9af4db86eb80082a491067dab42536e6939b31c79e0a555b120c66627d9f8083" [label="copy{src=/merge_feather.py, dest=/scripts/merge_feather.py}" shape="note"];
  "sha256:3e69f9ea7873fd1371eb9ca7d37bdd39d3bbc3fcea47741b3a1a704361a97459" [label="sha256:3e69f9ea7873fd1371eb9ca7d37bdd39d3bbc3fcea47741b3a1a704361a97459" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:1d4f44be3e9eabe424e99e9bb3b2f3d5cdfb5192e92520c81ca3e629ac2d8da1" [label=""];
  "sha256:1d4f44be3e9eabe424e99e9bb3b2f3d5cdfb5192e92520c81ca3e629ac2d8da1" -> "sha256:9af4db86eb80082a491067dab42536e6939b31c79e0a555b120c66627d9f8083" [label=""];
  "sha256:25fdba9500f6cfed71970790ae5865b161a8dfed25dc7bcbd7fdd628fe477705" -> "sha256:9af4db86eb80082a491067dab42536e6939b31c79e0a555b120c66627d9f8083" [label=""];
  "sha256:9af4db86eb80082a491067dab42536e6939b31c79e0a555b120c66627d9f8083" -> "sha256:3e69f9ea7873fd1371eb9ca7d37bdd39d3bbc3fcea47741b3a1a704361a97459" [label=""];
}

