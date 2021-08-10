[app/sources/443168753.Dockerfile]
digraph {
  "sha256:ca687d8b0ee1cd3950e45a640604853d2f6c502990a65b770492ebed79871d88" [label="docker-image://docker.io/stackbrew/ubuntu:14.04" shape="ellipse"];
  "sha256:7391245a5aebfa98d8316c253951972a1024ee907772fca4950c30c576b71041" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:e72636bfc2ce48a225cbab3e9fc8b7dc2a33b3b154f17fdd875a033bbe8b50ff" [label="sha256:e72636bfc2ce48a225cbab3e9fc8b7dc2a33b3b154f17fdd875a033bbe8b50ff" shape="plaintext"];
  "sha256:ca687d8b0ee1cd3950e45a640604853d2f6c502990a65b770492ebed79871d88" -> "sha256:7391245a5aebfa98d8316c253951972a1024ee907772fca4950c30c576b71041" [label=""];
  "sha256:7391245a5aebfa98d8316c253951972a1024ee907772fca4950c30c576b71041" -> "sha256:e72636bfc2ce48a225cbab3e9fc8b7dc2a33b3b154f17fdd875a033bbe8b50ff" [label=""];
}

