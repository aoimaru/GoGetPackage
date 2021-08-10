[app/sources/178534379.Dockerfile]
digraph {
  "sha256:f42adffb46b864171b8cc659c140638a35e604265374726c0c78a3e5c4e5bc3c" [label="docker-image://docker.io/library/ubuntu:wily" shape="ellipse"];
  "sha256:d4fd20bd020355fc18d06e2001a4a9d17309e52767a600495191b96f16a5ba8b" [label="/bin/sh -c apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399" shape="box"];
  "sha256:7f660b170b96b28e059d22a8170df783007c37cee2570945690dcb975aa3f1dc" [label="/bin/sh -c echo \"deb http://download.rethinkdb.com/apt wily main\" > /etc/apt/sources.list.d/rethinkdb.list" shape="box"];
  "sha256:e343054683165bf34388448f4e7f65d73d3d95af44d8d116d4bf8f13084d66fb" [label="/bin/sh -c apt-get update \t&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f55b48f8a43dd7e0f63fb9ff5105363f1c79c2c328ec6812e7713e3f85d427e3" [label="mkdir{path=/data}" shape="note"];
  "sha256:84303f72d7a30d841ce0b00ac55ef537cfb9dbb2dc955d5b72a6e49d1e7972e1" [label="sha256:84303f72d7a30d841ce0b00ac55ef537cfb9dbb2dc955d5b72a6e49d1e7972e1" shape="plaintext"];
  "sha256:f42adffb46b864171b8cc659c140638a35e604265374726c0c78a3e5c4e5bc3c" -> "sha256:d4fd20bd020355fc18d06e2001a4a9d17309e52767a600495191b96f16a5ba8b" [label=""];
  "sha256:d4fd20bd020355fc18d06e2001a4a9d17309e52767a600495191b96f16a5ba8b" -> "sha256:7f660b170b96b28e059d22a8170df783007c37cee2570945690dcb975aa3f1dc" [label=""];
  "sha256:7f660b170b96b28e059d22a8170df783007c37cee2570945690dcb975aa3f1dc" -> "sha256:e343054683165bf34388448f4e7f65d73d3d95af44d8d116d4bf8f13084d66fb" [label=""];
  "sha256:e343054683165bf34388448f4e7f65d73d3d95af44d8d116d4bf8f13084d66fb" -> "sha256:f55b48f8a43dd7e0f63fb9ff5105363f1c79c2c328ec6812e7713e3f85d427e3" [label=""];
  "sha256:f55b48f8a43dd7e0f63fb9ff5105363f1c79c2c328ec6812e7713e3f85d427e3" -> "sha256:84303f72d7a30d841ce0b00ac55ef537cfb9dbb2dc955d5b72a6e49d1e7972e1" [label=""];
}

