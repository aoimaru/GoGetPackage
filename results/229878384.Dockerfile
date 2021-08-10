[app/sources/229878384.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:a52f8931d34c12c07da94b2bf7d98054fc8c86fdaaa466cc1b4a90e3b20d5eb3" [label="/bin/sh -c apt-get update && apt-get install -y python3-pip && pip3 install requests --upgrade" shape="box"];
  "sha256:6cc614452dea1f251dcce14fe8e1b7d52d5aa0e912d0a85bb348b4dd1153fede" [label="local://context" shape="ellipse"];
  "sha256:ce051a8667e35a531bb81ef0b0bdb8575460deb2d11c886f4d15b572a8d3c230" [label="copy{src=/knsync.py, dest=/},copy{src=/run.sh, dest=/}" shape="note"];
  "sha256:f68a39a72bab84dd97ed115bf7f52a4d3fcdf03b980f0557865e280ae9372100" [label="chmod +x /run.sh" shape="box"];
  "sha256:1e22b04c01564e62306fae602737decb118209ce31b74a03e831fc0fbb9c8eb5" [label="sha256:1e22b04c01564e62306fae602737decb118209ce31b74a03e831fc0fbb9c8eb5" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:a52f8931d34c12c07da94b2bf7d98054fc8c86fdaaa466cc1b4a90e3b20d5eb3" [label=""];
  "sha256:a52f8931d34c12c07da94b2bf7d98054fc8c86fdaaa466cc1b4a90e3b20d5eb3" -> "sha256:ce051a8667e35a531bb81ef0b0bdb8575460deb2d11c886f4d15b572a8d3c230" [label=""];
  "sha256:6cc614452dea1f251dcce14fe8e1b7d52d5aa0e912d0a85bb348b4dd1153fede" -> "sha256:ce051a8667e35a531bb81ef0b0bdb8575460deb2d11c886f4d15b572a8d3c230" [label=""];
  "sha256:ce051a8667e35a531bb81ef0b0bdb8575460deb2d11c886f4d15b572a8d3c230" -> "sha256:f68a39a72bab84dd97ed115bf7f52a4d3fcdf03b980f0557865e280ae9372100" [label=""];
  "sha256:f68a39a72bab84dd97ed115bf7f52a4d3fcdf03b980f0557865e280ae9372100" -> "sha256:1e22b04c01564e62306fae602737decb118209ce31b74a03e831fc0fbb9c8eb5" [label=""];
}

