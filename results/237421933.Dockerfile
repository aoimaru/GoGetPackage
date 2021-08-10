[app/sources/237421933.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:897a08fa093183698da89ee00e505f58eddd32906cb57f961b530e769345542b" [label="/bin/sh -c apt-get update &&     apt-get install -y       gcc       git       make       wget &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5bb2b8aceed8fb4a7e1403fdbc1172bf12e6a3357632c0106de88dc175decb3d" [label="sha256:5bb2b8aceed8fb4a7e1403fdbc1172bf12e6a3357632c0106de88dc175decb3d" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:897a08fa093183698da89ee00e505f58eddd32906cb57f961b530e769345542b" [label=""];
  "sha256:897a08fa093183698da89ee00e505f58eddd32906cb57f961b530e769345542b" -> "sha256:5bb2b8aceed8fb4a7e1403fdbc1172bf12e6a3357632c0106de88dc175decb3d" [label=""];
}

