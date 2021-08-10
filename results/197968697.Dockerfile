[app/sources/197968697.Dockerfile]
digraph {
  "sha256:55e4473d0bf409125a4a22673eb36128895ccbb66666ffca6be81b0b5429d282" [label="local://context" shape="ellipse"];
  "sha256:a33bc1caa45eddcf1aa934ce396ec2a22164cd5de2c5f9fe18defb2c4faeeccd" [label="copy{src=/busybox.tar.xz, dest=/}" shape="note"];
  "sha256:aa8977415db5d24ba760d0d65ef371288a97b26aa99b4c8372fc53aa65888d16" [label="sha256:aa8977415db5d24ba760d0d65ef371288a97b26aa99b4c8372fc53aa65888d16" shape="plaintext"];
  "sha256:55e4473d0bf409125a4a22673eb36128895ccbb66666ffca6be81b0b5429d282" -> "sha256:a33bc1caa45eddcf1aa934ce396ec2a22164cd5de2c5f9fe18defb2c4faeeccd" [label=""];
  "sha256:a33bc1caa45eddcf1aa934ce396ec2a22164cd5de2c5f9fe18defb2c4faeeccd" -> "sha256:aa8977415db5d24ba760d0d65ef371288a97b26aa99b4c8372fc53aa65888d16" [label=""];
}

