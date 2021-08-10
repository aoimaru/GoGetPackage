[app/sources/469458856.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:8afc9538952072ae65d61c3ced3abb1a4f8658420345af06881624f746fb9be3" [label="local://context" shape="ellipse"];
  "sha256:0e205d52694977ea2f9031e9d2e632914b7f7421646d9cb083860bdba5509d3b" [label="copy{src=/glusterfs-simple-provisioner, dest=/glusterfs-simple-provisioner}" shape="note"];
  "sha256:f9cc616dba5d588480f83f4c015bf2ac6e6c7cc42e1c2a474c79ed70109bce30" [label="sha256:f9cc616dba5d588480f83f4c015bf2ac6e6c7cc42e1c2a474c79ed70109bce30" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:0e205d52694977ea2f9031e9d2e632914b7f7421646d9cb083860bdba5509d3b" [label=""];
  "sha256:8afc9538952072ae65d61c3ced3abb1a4f8658420345af06881624f746fb9be3" -> "sha256:0e205d52694977ea2f9031e9d2e632914b7f7421646d9cb083860bdba5509d3b" [label=""];
  "sha256:0e205d52694977ea2f9031e9d2e632914b7f7421646d9cb083860bdba5509d3b" -> "sha256:f9cc616dba5d588480f83f4c015bf2ac6e6c7cc42e1c2a474c79ed70109bce30" [label=""];
}

