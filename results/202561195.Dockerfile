[app/sources/202561195.Dockerfile]
digraph {
  "sha256:fafb7d5d6ccb8ca96aac5a578d55ddb1973adda74a65cf771ea7ed43f7413e6b" [label="docker-image://docker.io/resin/rpi-raspbian:jessie" shape="ellipse"];
  "sha256:c0daa61babbf0bdbcbf5cf5b5ac50834c7ea44b4fbd9a30286b50867763e72b1" [label="/bin/sh -c apt-get update && apt-get install -y -q     cheese     libgl1-mesa-dri     libgl1-mesa-glx     --no-install-recommends     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6bf964edd90efed41c4c03fde29b8ee8a5ca1dc3ac77f1da542e504159af11c1" [label="sha256:6bf964edd90efed41c4c03fde29b8ee8a5ca1dc3ac77f1da542e504159af11c1" shape="plaintext"];
  "sha256:fafb7d5d6ccb8ca96aac5a578d55ddb1973adda74a65cf771ea7ed43f7413e6b" -> "sha256:c0daa61babbf0bdbcbf5cf5b5ac50834c7ea44b4fbd9a30286b50867763e72b1" [label=""];
  "sha256:c0daa61babbf0bdbcbf5cf5b5ac50834c7ea44b4fbd9a30286b50867763e72b1" -> "sha256:6bf964edd90efed41c4c03fde29b8ee8a5ca1dc3ac77f1da542e504159af11c1" [label=""];
}

