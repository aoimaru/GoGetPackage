[app/sources/277098568.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:43719d5226185af5935e4e58285f42b72f39a83a177ed4bcfa9521149bd062b1" [label="/bin/sh -c apt-get update && apt-get install -y supervisor && mkdir -p /var/log/supervisor && apt-get -y install varnish && rm /etc/varnish/default.vcl && rm /etc/default/varnish" shape="box"];
  "sha256:5edc148713c3511d46abf8289722c58433ae1bb6823316fdbce5a183281f9391" [label="sha256:5edc148713c3511d46abf8289722c58433ae1bb6823316fdbce5a183281f9391" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:43719d5226185af5935e4e58285f42b72f39a83a177ed4bcfa9521149bd062b1" [label=""];
  "sha256:43719d5226185af5935e4e58285f42b72f39a83a177ed4bcfa9521149bd062b1" -> "sha256:5edc148713c3511d46abf8289722c58433ae1bb6823316fdbce5a183281f9391" [label=""];
}

