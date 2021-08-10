[app/sources/192425897.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:d0e4c2c00d2236619ee50200d3563db960bfe14c36b739d24d055d706719ef66" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends build-essential libffi-dev     libssl-dev python-dev python-minimal python-pip python-setuptools     python-virtualenv systemd &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2a0a00952ec299c0ea43edf3d41ccd7c1c04ee2aa752e6f233ac881a71b7174f" [label="/bin/sh -c pip install enum34 ipaddress wheel &&     pip install ansible ansible-lint" shape="box"];
  "sha256:046163dee509c1ef93fcc2c44ae1bbd9b728fd1f53e6d887e2b618658db62f19" [label="local://context" shape="ellipse"];
  "sha256:d02085adda46075db3185bb2c4f090b3d122c9188aee07df29f66ab820949e20" [label="copy{src=/.ansible-lint, dest=/}" shape="note"];
  "sha256:970b3d63270570f2a768d48a36cae556a06e223ca8d96eb7cd2145d8f7adf313" [label="sha256:970b3d63270570f2a768d48a36cae556a06e223ca8d96eb7cd2145d8f7adf313" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:d0e4c2c00d2236619ee50200d3563db960bfe14c36b739d24d055d706719ef66" [label=""];
  "sha256:d0e4c2c00d2236619ee50200d3563db960bfe14c36b739d24d055d706719ef66" -> "sha256:2a0a00952ec299c0ea43edf3d41ccd7c1c04ee2aa752e6f233ac881a71b7174f" [label=""];
  "sha256:2a0a00952ec299c0ea43edf3d41ccd7c1c04ee2aa752e6f233ac881a71b7174f" -> "sha256:d02085adda46075db3185bb2c4f090b3d122c9188aee07df29f66ab820949e20" [label=""];
  "sha256:046163dee509c1ef93fcc2c44ae1bbd9b728fd1f53e6d887e2b618658db62f19" -> "sha256:d02085adda46075db3185bb2c4f090b3d122c9188aee07df29f66ab820949e20" [label=""];
  "sha256:d02085adda46075db3185bb2c4f090b3d122c9188aee07df29f66ab820949e20" -> "sha256:970b3d63270570f2a768d48a36cae556a06e223ca8d96eb7cd2145d8f7adf313" [label=""];
}

