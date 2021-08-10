[app/sources/345355966.Dockerfile]
digraph {
  "sha256:20424c1ca2cac9b4d7e1eb4185e6a286876868ea33cddd6585439b269e8fd61e" [label="docker-image://docker.io/balenalib/aarch64-ubuntu:artful-run" shape="ellipse"];
  "sha256:5135f38189716a608d486ac6a75abd13f260bddf7baca3133e3ebeb5f8490148" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:fd1f12871758ccf0c98fc540616eadc71ba4076b5aa72e23666f2dbbde7b65a2" [label="sha256:fd1f12871758ccf0c98fc540616eadc71ba4076b5aa72e23666f2dbbde7b65a2" shape="plaintext"];
  "sha256:20424c1ca2cac9b4d7e1eb4185e6a286876868ea33cddd6585439b269e8fd61e" -> "sha256:5135f38189716a608d486ac6a75abd13f260bddf7baca3133e3ebeb5f8490148" [label=""];
  "sha256:5135f38189716a608d486ac6a75abd13f260bddf7baca3133e3ebeb5f8490148" -> "sha256:fd1f12871758ccf0c98fc540616eadc71ba4076b5aa72e23666f2dbbde7b65a2" [label=""];
}

