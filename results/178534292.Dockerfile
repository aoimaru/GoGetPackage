[app/sources/178534292.Dockerfile]
digraph {
  "sha256:b37972f33109dbb8b4daac693969f672a9008e11e7ce7b058e49eddf91ea5b8d" [label="docker-image://docker.io/library/ubuntu:vivid" shape="ellipse"];
  "sha256:b6804cddf5a3ff81f9606e0b95c7101615b15481f4d34a3a667af81bb6d68de8" [label="/bin/sh -c apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399" shape="box"];
  "sha256:ec5b63df00761955aa19acfb39c20bc285b2e79090cd9611114730133e00c9b2" [label="/bin/sh -c echo \"deb http://download.rethinkdb.com/apt vivid main\" > /etc/apt/sources.list.d/rethinkdb.list" shape="box"];
  "sha256:4e26632fdcee6f33de0a34506b4456418f3e5e4af39cd372c3e985c25fad6781" [label="/bin/sh -c apt-get update \t&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:3a280e547fe96a5f6f16b7d9e47cadddd7c8803c2b99ff5e8252d6e9dac03180" [label="mkdir{path=/data}" shape="note"];
  "sha256:f9e5b09d843c83a387c3459825e1e50e7f582368a217f1a7ce25327661744337" [label="sha256:f9e5b09d843c83a387c3459825e1e50e7f582368a217f1a7ce25327661744337" shape="plaintext"];
  "sha256:b37972f33109dbb8b4daac693969f672a9008e11e7ce7b058e49eddf91ea5b8d" -> "sha256:b6804cddf5a3ff81f9606e0b95c7101615b15481f4d34a3a667af81bb6d68de8" [label=""];
  "sha256:b6804cddf5a3ff81f9606e0b95c7101615b15481f4d34a3a667af81bb6d68de8" -> "sha256:ec5b63df00761955aa19acfb39c20bc285b2e79090cd9611114730133e00c9b2" [label=""];
  "sha256:ec5b63df00761955aa19acfb39c20bc285b2e79090cd9611114730133e00c9b2" -> "sha256:4e26632fdcee6f33de0a34506b4456418f3e5e4af39cd372c3e985c25fad6781" [label=""];
  "sha256:4e26632fdcee6f33de0a34506b4456418f3e5e4af39cd372c3e985c25fad6781" -> "sha256:3a280e547fe96a5f6f16b7d9e47cadddd7c8803c2b99ff5e8252d6e9dac03180" [label=""];
  "sha256:3a280e547fe96a5f6f16b7d9e47cadddd7c8803c2b99ff5e8252d6e9dac03180" -> "sha256:f9e5b09d843c83a387c3459825e1e50e7f582368a217f1a7ce25327661744337" [label=""];
}

