[app/sources/178534307.Dockerfile]
digraph {
  "sha256:b37972f33109dbb8b4daac693969f672a9008e11e7ce7b058e49eddf91ea5b8d" [label="docker-image://docker.io/library/ubuntu:vivid" shape="ellipse"];
  "sha256:b6804cddf5a3ff81f9606e0b95c7101615b15481f4d34a3a667af81bb6d68de8" [label="/bin/sh -c apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399" shape="box"];
  "sha256:ec5b63df00761955aa19acfb39c20bc285b2e79090cd9611114730133e00c9b2" [label="/bin/sh -c echo \"deb http://download.rethinkdb.com/apt vivid main\" > /etc/apt/sources.list.d/rethinkdb.list" shape="box"];
  "sha256:9126969d572661ee9a1d2be6843ff27edd54321e2a4dfde12b2fb8922d238d86" [label="/bin/sh -c apt-get update \t&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5ec17b5bbbc9b870f05cb20b3c426349c03ceaf8075b128f0d499c8b068cca34" [label="mkdir{path=/data}" shape="note"];
  "sha256:54fc0801b73da8857d2558d1eff622b8e4dfc3ecb22a782e3d073e4e82f87ac3" [label="sha256:54fc0801b73da8857d2558d1eff622b8e4dfc3ecb22a782e3d073e4e82f87ac3" shape="plaintext"];
  "sha256:b37972f33109dbb8b4daac693969f672a9008e11e7ce7b058e49eddf91ea5b8d" -> "sha256:b6804cddf5a3ff81f9606e0b95c7101615b15481f4d34a3a667af81bb6d68de8" [label=""];
  "sha256:b6804cddf5a3ff81f9606e0b95c7101615b15481f4d34a3a667af81bb6d68de8" -> "sha256:ec5b63df00761955aa19acfb39c20bc285b2e79090cd9611114730133e00c9b2" [label=""];
  "sha256:ec5b63df00761955aa19acfb39c20bc285b2e79090cd9611114730133e00c9b2" -> "sha256:9126969d572661ee9a1d2be6843ff27edd54321e2a4dfde12b2fb8922d238d86" [label=""];
  "sha256:9126969d572661ee9a1d2be6843ff27edd54321e2a4dfde12b2fb8922d238d86" -> "sha256:5ec17b5bbbc9b870f05cb20b3c426349c03ceaf8075b128f0d499c8b068cca34" [label=""];
  "sha256:5ec17b5bbbc9b870f05cb20b3c426349c03ceaf8075b128f0d499c8b068cca34" -> "sha256:54fc0801b73da8857d2558d1eff622b8e4dfc3ecb22a782e3d073e4e82f87ac3" [label=""];
}

