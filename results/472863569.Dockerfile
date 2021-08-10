[app/sources/472863569.Dockerfile]
digraph {
  "sha256:b598caa9a82fa81450f1532035bfbb228e7c0f18e06d00416a0f88a89314059e" [label="docker-image://docker.io/library/nginx:1.11" shape="ellipse"];
  "sha256:c93bf59b22c746e5258cfe4668caecc5980f4e248b0d337c5db60b970f2ad085" [label="/bin/sh -c apt-get update \t&& apt-get install -y \t\tcurl \t\t--no-install-recommends \t&& apt-get clean \t&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man /usr/share/doc" shape="box"];
  "sha256:45361f1997b1c6b164eeff1bdb102abddb21e4e308c990405a8efc0d80ec9849" [label="local://context" shape="ellipse"];
  "sha256:709493f7bfe0b2d966bfe84f5be4e4c8432763bd4609c4bcfb3237252d512446" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:d37b1efdbee132a6a9e1556b9275592ebc2c4fec763fb4901207c3d0b4a48018" [label="sha256:d37b1efdbee132a6a9e1556b9275592ebc2c4fec763fb4901207c3d0b4a48018" shape="plaintext"];
  "sha256:b598caa9a82fa81450f1532035bfbb228e7c0f18e06d00416a0f88a89314059e" -> "sha256:c93bf59b22c746e5258cfe4668caecc5980f4e248b0d337c5db60b970f2ad085" [label=""];
  "sha256:c93bf59b22c746e5258cfe4668caecc5980f4e248b0d337c5db60b970f2ad085" -> "sha256:709493f7bfe0b2d966bfe84f5be4e4c8432763bd4609c4bcfb3237252d512446" [label=""];
  "sha256:45361f1997b1c6b164eeff1bdb102abddb21e4e308c990405a8efc0d80ec9849" -> "sha256:709493f7bfe0b2d966bfe84f5be4e4c8432763bd4609c4bcfb3237252d512446" [label=""];
  "sha256:709493f7bfe0b2d966bfe84f5be4e4c8432763bd4609c4bcfb3237252d512446" -> "sha256:d37b1efdbee132a6a9e1556b9275592ebc2c4fec763fb4901207c3d0b4a48018" [label=""];
}

