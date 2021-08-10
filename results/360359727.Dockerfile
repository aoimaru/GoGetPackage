[app/sources/360359727.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:7173f072187fedf5592ba239bbb9cb90e4e1cd8e1fbf50288e6dfd6865809063" [label="/bin/sh -c apt-get update &&     apt-get install -y             curl             gdb             lsof             net-tools             pstack             strace &&     apt-get clean" shape="box"];
  "sha256:89d9825d05a6092e5a9665bd4e8472b0abffaf0f5d75a8254fd9faf613f99aa8" [label="sha256:89d9825d05a6092e5a9665bd4e8472b0abffaf0f5d75a8254fd9faf613f99aa8" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:7173f072187fedf5592ba239bbb9cb90e4e1cd8e1fbf50288e6dfd6865809063" [label=""];
  "sha256:7173f072187fedf5592ba239bbb9cb90e4e1cd8e1fbf50288e6dfd6865809063" -> "sha256:89d9825d05a6092e5a9665bd4e8472b0abffaf0f5d75a8254fd9faf613f99aa8" [label=""];
}

