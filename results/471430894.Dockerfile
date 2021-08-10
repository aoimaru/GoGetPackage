[app/sources/471430894.Dockerfile]
digraph {
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" [label="docker-image://docker.io/library/golang:1.11-alpine" shape="ellipse"];
  "sha256:4b14bf0f1dc75ad7d0ab53b409ceb5f64eabce6ddbad19454e5907a800295097" [label="/bin/sh -c apk add --no-cache git gcc musl-dev" shape="box"];
  "sha256:f421ac7fbbf02e594395eb8be1f0c0e44c74bc37f45e9228ae680f662828e65d" [label="mkdir{path=/go/src/app}" shape="note"];
  "sha256:192d45fc68ff4076ab31860b76443c65cac319e25132f422528609e47e57dee2" [label="local://context" shape="ellipse"];
  "sha256:6e8483f3d868e14193221cddfa0686839e935eccf83c31d854265b68273d20fb" [label="copy{src=/, dest=/go/src/app/}" shape="note"];
  "sha256:dbd7898ced1e6a0a6404f4d344a3a4be64f06edbf1f873a3776a5716826d927d" [label="/bin/sh -c go build -o action ." shape="box"];
  "sha256:c252523ce542bcae56fec62c3355447e04ef4275d659f85ef86db7f1e9614c68" [label="sha256:c252523ce542bcae56fec62c3355447e04ef4275d659f85ef86db7f1e9614c68" shape="plaintext"];
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" -> "sha256:4b14bf0f1dc75ad7d0ab53b409ceb5f64eabce6ddbad19454e5907a800295097" [label=""];
  "sha256:4b14bf0f1dc75ad7d0ab53b409ceb5f64eabce6ddbad19454e5907a800295097" -> "sha256:f421ac7fbbf02e594395eb8be1f0c0e44c74bc37f45e9228ae680f662828e65d" [label=""];
  "sha256:f421ac7fbbf02e594395eb8be1f0c0e44c74bc37f45e9228ae680f662828e65d" -> "sha256:6e8483f3d868e14193221cddfa0686839e935eccf83c31d854265b68273d20fb" [label=""];
  "sha256:192d45fc68ff4076ab31860b76443c65cac319e25132f422528609e47e57dee2" -> "sha256:6e8483f3d868e14193221cddfa0686839e935eccf83c31d854265b68273d20fb" [label=""];
  "sha256:6e8483f3d868e14193221cddfa0686839e935eccf83c31d854265b68273d20fb" -> "sha256:dbd7898ced1e6a0a6404f4d344a3a4be64f06edbf1f873a3776a5716826d927d" [label=""];
  "sha256:dbd7898ced1e6a0a6404f4d344a3a4be64f06edbf1f873a3776a5716826d927d" -> "sha256:c252523ce542bcae56fec62c3355447e04ef4275d659f85ef86db7f1e9614c68" [label=""];
}

