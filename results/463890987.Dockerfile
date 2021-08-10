[app/sources/463890987.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:090e14a4ecd202a9a14c5a2eb3f48d155d605a00c4aa232bab6a3076005ae8a6" [label="/bin/sh -c apt-get update && apt-get install -y wget && apt-get clean" shape="box"];
  "sha256:100c84a4e55d024817276974abe1ba0d593b162d0cbb78df9a647a359aae526a" [label="/bin/sh -c wget http://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.9.2/sratoolkit.2.9.2-ubuntu64.tar.gz &&   tar -xzf sratoolkit.2.9.2-ubuntu64.tar.gz &&   rm -r sratoolkit.2.9.2-ubuntu64.tar.gz &&   mkdir /data" shape="box"];
  "sha256:6784fcdff144352957f106f361e719654d2d3090b0d29ce8fec8c739e4dff446" [label="mkdir{path=/data}" shape="note"];
  "sha256:c4888546abdfb46624fc5f431d72dce7342ec6e223e2d1d98231204204e83597" [label="sha256:c4888546abdfb46624fc5f431d72dce7342ec6e223e2d1d98231204204e83597" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:090e14a4ecd202a9a14c5a2eb3f48d155d605a00c4aa232bab6a3076005ae8a6" [label=""];
  "sha256:090e14a4ecd202a9a14c5a2eb3f48d155d605a00c4aa232bab6a3076005ae8a6" -> "sha256:100c84a4e55d024817276974abe1ba0d593b162d0cbb78df9a647a359aae526a" [label=""];
  "sha256:100c84a4e55d024817276974abe1ba0d593b162d0cbb78df9a647a359aae526a" -> "sha256:6784fcdff144352957f106f361e719654d2d3090b0d29ce8fec8c739e4dff446" [label=""];
  "sha256:6784fcdff144352957f106f361e719654d2d3090b0d29ce8fec8c739e4dff446" -> "sha256:c4888546abdfb46624fc5f431d72dce7342ec6e223e2d1d98231204204e83597" [label=""];
}

