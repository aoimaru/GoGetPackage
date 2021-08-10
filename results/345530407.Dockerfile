[app/sources/345530407.Dockerfile]
digraph {
  "sha256:84640809efa52258e82f47d179caa99a233ac7bcd04163e6b20f8872881edb86" [label="docker-image://docker.io/stevedomin/elixir:1.3.1" shape="ellipse"];
  "sha256:b6a11ba39afeea7a8c8c8168b99f0f637732596e97642ba527a189f38719da7e" [label="/bin/sh -c useradd -ms /bin/bash elixir" shape="box"];
  "sha256:c40c4a2c92c08a6f971d15727154ee65448e521a58c39067de47580b2f55ba8d" [label="mkdir{path=/home/elixir}" shape="note"];
  "sha256:7cb75980d71811bc6c48a1079b180f905ad2ba638f6b348643108c2f1a2c2fdd" [label="sha256:7cb75980d71811bc6c48a1079b180f905ad2ba638f6b348643108c2f1a2c2fdd" shape="plaintext"];
  "sha256:84640809efa52258e82f47d179caa99a233ac7bcd04163e6b20f8872881edb86" -> "sha256:b6a11ba39afeea7a8c8c8168b99f0f637732596e97642ba527a189f38719da7e" [label=""];
  "sha256:b6a11ba39afeea7a8c8c8168b99f0f637732596e97642ba527a189f38719da7e" -> "sha256:c40c4a2c92c08a6f971d15727154ee65448e521a58c39067de47580b2f55ba8d" [label=""];
  "sha256:c40c4a2c92c08a6f971d15727154ee65448e521a58c39067de47580b2f55ba8d" -> "sha256:7cb75980d71811bc6c48a1079b180f905ad2ba638f6b348643108c2f1a2c2fdd" [label=""];
}

