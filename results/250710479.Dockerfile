[app/sources/250710479.Dockerfile]
digraph {
  "sha256:00076590e8e3e5e2d0bb81e36e8ba61e54df61a27a647c5c1f6b7fc005b07d17" [label="docker-image://docker.io/library/elasticsearch:2.2" shape="ellipse"];
  "sha256:fb6900d32f24bd67d53ed395c8f9d79ff4c20f88582d2876c88c48b7ad7f1378" [label="/bin/sh -c /usr/share/elasticsearch/bin/plugin install royrusso/elasticsearch-HQ" shape="box"];
  "sha256:0891c78f810ef6121ccd18f11f7e0314b3ba044ff0c2788368a38c9613985d5f" [label="sha256:0891c78f810ef6121ccd18f11f7e0314b3ba044ff0c2788368a38c9613985d5f" shape="plaintext"];
  "sha256:00076590e8e3e5e2d0bb81e36e8ba61e54df61a27a647c5c1f6b7fc005b07d17" -> "sha256:fb6900d32f24bd67d53ed395c8f9d79ff4c20f88582d2876c88c48b7ad7f1378" [label=""];
  "sha256:fb6900d32f24bd67d53ed395c8f9d79ff4c20f88582d2876c88c48b7ad7f1378" -> "sha256:0891c78f810ef6121ccd18f11f7e0314b3ba044ff0c2788368a38c9613985d5f" [label=""];
}

