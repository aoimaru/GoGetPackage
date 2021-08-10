[app/sources/162069058.Dockerfile]
digraph {
  "sha256:fd8af9292d246665f250f2109f2d198592d30d49c49b5d83dbe5f74402170a5a" [label="docker-image://docker.io/vmware/photon:1.0" shape="ellipse"];
  "sha256:63c426e8d9c66ceb2869102eb7999a8ddd50f4b87883930b7c15b0bbbb3cd11b" [label="/bin/sh -c tyum install -y openjre && tyum clean all" shape="box"];
  "sha256:4c51f20135eb8ce163f6853a4601f2f53c0dd72c537c8f3a5a23710337c442b3" [label="sha256:4c51f20135eb8ce163f6853a4601f2f53c0dd72c537c8f3a5a23710337c442b3" shape="plaintext"];
  "sha256:fd8af9292d246665f250f2109f2d198592d30d49c49b5d83dbe5f74402170a5a" -> "sha256:63c426e8d9c66ceb2869102eb7999a8ddd50f4b87883930b7c15b0bbbb3cd11b" [label=""];
  "sha256:63c426e8d9c66ceb2869102eb7999a8ddd50f4b87883930b7c15b0bbbb3cd11b" -> "sha256:4c51f20135eb8ce163f6853a4601f2f53c0dd72c537c8f3a5a23710337c442b3" [label=""];
}

