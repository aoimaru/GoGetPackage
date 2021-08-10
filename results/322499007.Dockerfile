[app/sources/322499007.Dockerfile]
digraph {
  "sha256:f307372800eefbc3d6a06d22ca5ed74721676fb4f1b638a29c3e47740097e73e" [label="docker-image://docker.io/techbureau/catapult-server:gcc-0.3.0.2" shape="ellipse"];
  "sha256:6169918cf9c207cf58a2f2014f71d08ed8efbb3c4f389f7cf14e23c21a61ea50" [label="local://context" shape="ellipse"];
  "sha256:7cea80f53fb188247d8f25e7271dc1323f53b1fc667ed473627f950b2c0c0664" [label="copy{src=/userconfig, dest=/userconfig}" shape="note"];
  "sha256:c510cd8790805a4fa710dae9abe8a4fcf93b368a8336a542de694f219fff5e95" [label="sha256:c510cd8790805a4fa710dae9abe8a4fcf93b368a8336a542de694f219fff5e95" shape="plaintext"];
  "sha256:f307372800eefbc3d6a06d22ca5ed74721676fb4f1b638a29c3e47740097e73e" -> "sha256:7cea80f53fb188247d8f25e7271dc1323f53b1fc667ed473627f950b2c0c0664" [label=""];
  "sha256:6169918cf9c207cf58a2f2014f71d08ed8efbb3c4f389f7cf14e23c21a61ea50" -> "sha256:7cea80f53fb188247d8f25e7271dc1323f53b1fc667ed473627f950b2c0c0664" [label=""];
  "sha256:7cea80f53fb188247d8f25e7271dc1323f53b1fc667ed473627f950b2c0c0664" -> "sha256:c510cd8790805a4fa710dae9abe8a4fcf93b368a8336a542de694f219fff5e95" [label=""];
}

