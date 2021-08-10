[app/sources/405725049.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:b852154d36f50d30d37a1190108869545a4f6e0a63856a567306d1931c8aa621" [label="/bin/sh -c useradd -c \"dirhunt\" -m -s /sbin/nologin dirhunt" shape="box"];
  "sha256:3c574c9629b775393ac77030c91ea7f5c37a6c9e140174129ea9113c578b7a31" [label="/bin/sh -c dnf upgrade -y &&     dnf install -y         python3         python-pip &&     pip3 install dirhunt &&     dnf clean all" shape="box"];
  "sha256:4b47c0fb87696be42106a573dadf8d02676603f4669cad49a1af157d4d170021" [label="sha256:4b47c0fb87696be42106a573dadf8d02676603f4669cad49a1af157d4d170021" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:b852154d36f50d30d37a1190108869545a4f6e0a63856a567306d1931c8aa621" [label=""];
  "sha256:b852154d36f50d30d37a1190108869545a4f6e0a63856a567306d1931c8aa621" -> "sha256:3c574c9629b775393ac77030c91ea7f5c37a6c9e140174129ea9113c578b7a31" [label=""];
  "sha256:3c574c9629b775393ac77030c91ea7f5c37a6c9e140174129ea9113c578b7a31" -> "sha256:4b47c0fb87696be42106a573dadf8d02676603f4669cad49a1af157d4d170021" [label=""];
}

