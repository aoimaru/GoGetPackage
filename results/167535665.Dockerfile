[app/sources/167535665.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:6baeb6461547e11b965383f9efbb1f11a90e98cb09ddf24295dc93fab1551da4" [label="/bin/sh -c yum install -y make sqlite-devel zlib-devel bash git gcc-c++" shape="box"];
  "sha256:d146cc5f3f087998b300f12b0d44310e2cc9d1794f2b457b74ed3f15af87a3b9" [label="/bin/sh -c mkdir -p /tmp/tippecanoe-src" shape="box"];
  "sha256:d8072b072b19d8fc0ad4787489b2d898add83508c1a53983139ddecf26de6464" [label="mkdir{path=/tmp/tippecanoe-src}" shape="note"];
  "sha256:0ab140d89b609cc0c9620e6c8e40e229469f483a377f140b685a184ff329a6ba" [label="local://context" shape="ellipse"];
  "sha256:e13c1b139171a464aca5e121263bbbf21384732877980b9b7b0fcd13d1871c68" [label="copy{src=/, dest=/tmp/tippecanoe-src}" shape="note"];
  "sha256:e545f4276d147865c932ca5086801479febd4d4ad3c9221442eceb74368a0835" [label="/bin/sh -c make   && make install" shape="box"];
  "sha256:7b87629efc0f5e72d27a6213ab285423b58d071ffe948b8261697d9200e03f8d" [label="sha256:7b87629efc0f5e72d27a6213ab285423b58d071ffe948b8261697d9200e03f8d" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:6baeb6461547e11b965383f9efbb1f11a90e98cb09ddf24295dc93fab1551da4" [label=""];
  "sha256:6baeb6461547e11b965383f9efbb1f11a90e98cb09ddf24295dc93fab1551da4" -> "sha256:d146cc5f3f087998b300f12b0d44310e2cc9d1794f2b457b74ed3f15af87a3b9" [label=""];
  "sha256:d146cc5f3f087998b300f12b0d44310e2cc9d1794f2b457b74ed3f15af87a3b9" -> "sha256:d8072b072b19d8fc0ad4787489b2d898add83508c1a53983139ddecf26de6464" [label=""];
  "sha256:d8072b072b19d8fc0ad4787489b2d898add83508c1a53983139ddecf26de6464" -> "sha256:e13c1b139171a464aca5e121263bbbf21384732877980b9b7b0fcd13d1871c68" [label=""];
  "sha256:0ab140d89b609cc0c9620e6c8e40e229469f483a377f140b685a184ff329a6ba" -> "sha256:e13c1b139171a464aca5e121263bbbf21384732877980b9b7b0fcd13d1871c68" [label=""];
  "sha256:e13c1b139171a464aca5e121263bbbf21384732877980b9b7b0fcd13d1871c68" -> "sha256:e545f4276d147865c932ca5086801479febd4d4ad3c9221442eceb74368a0835" [label=""];
  "sha256:e545f4276d147865c932ca5086801479febd4d4ad3c9221442eceb74368a0835" -> "sha256:7b87629efc0f5e72d27a6213ab285423b58d071ffe948b8261697d9200e03f8d" [label=""];
}

