[app/sources/341249056.Dockerfile]
digraph {
  "sha256:e1efe32a2fa4f9641b3e33c40330b86b9d5dd85ca415446d362aac9db3ba3909" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:bb3e4a7bb0534d5823dec145caa553f272b06ffeaef7ca08d8d8c4225b7207d8" [label="/bin/sh -c apt-get update -y     && apt-get install -y python-setuptools python-pip" shape="box"];
  "sha256:b2062987bb12d97acb6a644ae419e733bbb0fc32b6e0fa65b6a2f80fa5772883" [label="copy{src=/requirements.txt, dest=/src/requirements.txt}" shape="note"];
  "sha256:9e72a3a7cf455ad7d179f7c843d478f865dcc9bd08ae39c7be1d7f4a0fcc3019" [label="/bin/sh -c cd /src; pip install -r requirements.txt" shape="box"];
  "sha256:8b80d0407287ac7fe00b41eb2e3d97c80a5b71fd3a0b2f01b133e33a293b8109" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:df8c3f6840746b705fcfe02b505c2a69c864bb3ab8846d84ef15441aa2b7b4b0" [label="sha256:df8c3f6840746b705fcfe02b505c2a69c864bb3ab8846d84ef15441aa2b7b4b0" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:bb3e4a7bb0534d5823dec145caa553f272b06ffeaef7ca08d8d8c4225b7207d8" [label=""];
  "sha256:bb3e4a7bb0534d5823dec145caa553f272b06ffeaef7ca08d8d8c4225b7207d8" -> "sha256:b2062987bb12d97acb6a644ae419e733bbb0fc32b6e0fa65b6a2f80fa5772883" [label=""];
  "sha256:e1efe32a2fa4f9641b3e33c40330b86b9d5dd85ca415446d362aac9db3ba3909" -> "sha256:b2062987bb12d97acb6a644ae419e733bbb0fc32b6e0fa65b6a2f80fa5772883" [label=""];
  "sha256:b2062987bb12d97acb6a644ae419e733bbb0fc32b6e0fa65b6a2f80fa5772883" -> "sha256:9e72a3a7cf455ad7d179f7c843d478f865dcc9bd08ae39c7be1d7f4a0fcc3019" [label=""];
  "sha256:9e72a3a7cf455ad7d179f7c843d478f865dcc9bd08ae39c7be1d7f4a0fcc3019" -> "sha256:8b80d0407287ac7fe00b41eb2e3d97c80a5b71fd3a0b2f01b133e33a293b8109" [label=""];
  "sha256:e1efe32a2fa4f9641b3e33c40330b86b9d5dd85ca415446d362aac9db3ba3909" -> "sha256:8b80d0407287ac7fe00b41eb2e3d97c80a5b71fd3a0b2f01b133e33a293b8109" [label=""];
  "sha256:8b80d0407287ac7fe00b41eb2e3d97c80a5b71fd3a0b2f01b133e33a293b8109" -> "sha256:df8c3f6840746b705fcfe02b505c2a69c864bb3ab8846d84ef15441aa2b7b4b0" [label=""];
}

