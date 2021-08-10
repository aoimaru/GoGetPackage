[app/sources/247823090.Dockerfile]
digraph {
  "sha256:39760020313ad82427d3183b527847570228b9852f477b55df25bd37ba643b72" [label="docker-image://docker.io/zachdeibert/electron-docker:6.3.0" shape="ellipse"];
  "sha256:e47d16b9311389ee493de4c7cd1ffe884e70f05cda8af6eeaff371081d8e6f54" [label="/bin/sh -c apt-get update && apt-get install -y make && rm -rf /var/lib/apt/cache/*" shape="box"];
  "sha256:646075ad644abd4a5157d6136563f0ffe8c94bb4bdccea74c0b160c7f5571c9e" [label="sha256:646075ad644abd4a5157d6136563f0ffe8c94bb4bdccea74c0b160c7f5571c9e" shape="plaintext"];
  "sha256:39760020313ad82427d3183b527847570228b9852f477b55df25bd37ba643b72" -> "sha256:e47d16b9311389ee493de4c7cd1ffe884e70f05cda8af6eeaff371081d8e6f54" [label=""];
  "sha256:e47d16b9311389ee493de4c7cd1ffe884e70f05cda8af6eeaff371081d8e6f54" -> "sha256:646075ad644abd4a5157d6136563f0ffe8c94bb4bdccea74c0b160c7f5571c9e" [label=""];
}

