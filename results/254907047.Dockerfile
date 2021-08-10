[app/sources/254907047.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:dd75ec2a75f6a018479418138f048cd861419fc6da55ec9f89e9858b5d40557e" [label="local://context" shape="ellipse"];
  "sha256:4004dba193764170558399e731af97a57a0b08b4ea4f911bae129d36fecfce53" [label="copy{src=/apiextensions-apiserver, dest=/}" shape="note"];
  "sha256:370d56e887f26f3b1b134b854ff08a394981203b2b0a79b48206569fbf96a25f" [label="sha256:370d56e887f26f3b1b134b854ff08a394981203b2b0a79b48206569fbf96a25f" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:4004dba193764170558399e731af97a57a0b08b4ea4f911bae129d36fecfce53" [label=""];
  "sha256:dd75ec2a75f6a018479418138f048cd861419fc6da55ec9f89e9858b5d40557e" -> "sha256:4004dba193764170558399e731af97a57a0b08b4ea4f911bae129d36fecfce53" [label=""];
  "sha256:4004dba193764170558399e731af97a57a0b08b4ea4f911bae129d36fecfce53" -> "sha256:370d56e887f26f3b1b134b854ff08a394981203b2b0a79b48206569fbf96a25f" [label=""];
}

