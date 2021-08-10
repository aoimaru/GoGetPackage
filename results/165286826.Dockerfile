[app/sources/165286826.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:136b1c7277b7fe1093c00c605ca7af0da118137104207a3873c35134fd3f7100" [label="/bin/sh -c apt-get update --fix-missing" shape="box"];
  "sha256:48419ed751ff365ba5eb0cd7f3188b00a220baffd78fa6a7aed254710d517678" [label="/bin/sh -c apt-get install -y build-essential wget git python python-dev" shape="box"];
  "sha256:bef9b89076274f935812c25f50eeea1a400e847fb7bb1533a8f85f3a1fe3c44e" [label="/bin/sh -c wget https://bootstrap.pypa.io/get-pip.py && python get-pip.py && rm get-pip.py" shape="box"];
  "sha256:8fe6a23a928ccfe88e5892b0f6e4d940c1383b20f991814cba70cfcfda5fa8fb" [label="/bin/sh -c pip install -U setuptools" shape="box"];
  "sha256:532277a60141c607b31b8d4ec0db7cfd3a320cdacd4f27467a070e11e6e73d92" [label="sha256:532277a60141c607b31b8d4ec0db7cfd3a320cdacd4f27467a070e11e6e73d92" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:136b1c7277b7fe1093c00c605ca7af0da118137104207a3873c35134fd3f7100" [label=""];
  "sha256:136b1c7277b7fe1093c00c605ca7af0da118137104207a3873c35134fd3f7100" -> "sha256:48419ed751ff365ba5eb0cd7f3188b00a220baffd78fa6a7aed254710d517678" [label=""];
  "sha256:48419ed751ff365ba5eb0cd7f3188b00a220baffd78fa6a7aed254710d517678" -> "sha256:bef9b89076274f935812c25f50eeea1a400e847fb7bb1533a8f85f3a1fe3c44e" [label=""];
  "sha256:bef9b89076274f935812c25f50eeea1a400e847fb7bb1533a8f85f3a1fe3c44e" -> "sha256:8fe6a23a928ccfe88e5892b0f6e4d940c1383b20f991814cba70cfcfda5fa8fb" [label=""];
  "sha256:8fe6a23a928ccfe88e5892b0f6e4d940c1383b20f991814cba70cfcfda5fa8fb" -> "sha256:532277a60141c607b31b8d4ec0db7cfd3a320cdacd4f27467a070e11e6e73d92" [label=""];
}

