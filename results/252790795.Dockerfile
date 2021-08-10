[app/sources/252790795.Dockerfile]
digraph {
  "sha256:a722ac0a1f8e65ffefd50130089e10cf398e8e7c5dcc34e7818ecf51efbcb8e7" [label="docker-image://docker.io/library/iojs:onbuild" shape="ellipse"];
  "sha256:6f3befccb7c58664d20e062f37f131e42435ed2154716462976ae3723e8efdca" [label="local://context" shape="ellipse"];
  "sha256:2a7178ae4331203e2fbbf04175f3e0564577d91fe6dc38ece131719707dde0ff" [label="copy{src=/, dest=/srv/dproxy}" shape="note"];
  "sha256:db4046cb9619922b06a3bbe7927cf18f37e0caa7fb23860cb41bb797f34a5879" [label="mkdir{path=/srv/dproxy}" shape="note"];
  "sha256:903128fbe736949091a478d395eed8ff768ebe3b8d82b8828691a35345b0f78e" [label="/bin/sh -c npm install" shape="box"];
  "sha256:af04aff07c09ba20397735aa5b6082bc623edb72da9b9ff22023f4c33f005b86" [label="sha256:af04aff07c09ba20397735aa5b6082bc623edb72da9b9ff22023f4c33f005b86" shape="plaintext"];
  "sha256:a722ac0a1f8e65ffefd50130089e10cf398e8e7c5dcc34e7818ecf51efbcb8e7" -> "sha256:2a7178ae4331203e2fbbf04175f3e0564577d91fe6dc38ece131719707dde0ff" [label=""];
  "sha256:6f3befccb7c58664d20e062f37f131e42435ed2154716462976ae3723e8efdca" -> "sha256:2a7178ae4331203e2fbbf04175f3e0564577d91fe6dc38ece131719707dde0ff" [label=""];
  "sha256:2a7178ae4331203e2fbbf04175f3e0564577d91fe6dc38ece131719707dde0ff" -> "sha256:db4046cb9619922b06a3bbe7927cf18f37e0caa7fb23860cb41bb797f34a5879" [label=""];
  "sha256:db4046cb9619922b06a3bbe7927cf18f37e0caa7fb23860cb41bb797f34a5879" -> "sha256:903128fbe736949091a478d395eed8ff768ebe3b8d82b8828691a35345b0f78e" [label=""];
  "sha256:903128fbe736949091a478d395eed8ff768ebe3b8d82b8828691a35345b0f78e" -> "sha256:af04aff07c09ba20397735aa5b6082bc623edb72da9b9ff22023f4c33f005b86" [label=""];
}

