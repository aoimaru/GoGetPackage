[app/sources/256323131.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:65897a11fff91249c88159cd8e856c0d80273797c1a5b47f82c0092fc1e132b2" [label="/bin/sh -c apk add -U git make build-base &&     apk add -U webkit2gtk-dev &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:39246d9cab40f9f2f95a4f5313d46cf35e9ede76c5e9baaee49594829fdf939a" [label="mkdir{path=/go/src/github.com/prologic/gopherclient}" shape="note"];
  "sha256:874abec2324b9eed82172db4a57c563d6670e556926471072081548d52c6d87d" [label="local://context" shape="ellipse"];
  "sha256:0340b50d69eca647a04df06db26a4215f727bfaf5b4a2860e2c1f37abd4fe9fb" [label="copy{src=/, dest=/go/src/github.com/prologic/gopherclient}" shape="note"];
  "sha256:aaeeb616061076cbc487c03bb734cd473526d5a559111fc7a2fc8569a83c185e" [label="/bin/sh -c make TAG=$TAG BUILD=$BUILD build" shape="box"];
  "sha256:6c3babec177c446c46efbbc06a18e02576d9691ff860d014a6eb50127d48c4dc" [label="copy{src=/go/src/github.com/prologic/gopherclient/gopherclient, dest=/gopherclient}" shape="note"];
  "sha256:767a50e43a58b3202d3d1e9b719c11a38c96f579e9af3ffade30222547b62a69" [label="sha256:767a50e43a58b3202d3d1e9b719c11a38c96f579e9af3ffade30222547b62a69" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:65897a11fff91249c88159cd8e856c0d80273797c1a5b47f82c0092fc1e132b2" [label=""];
  "sha256:65897a11fff91249c88159cd8e856c0d80273797c1a5b47f82c0092fc1e132b2" -> "sha256:39246d9cab40f9f2f95a4f5313d46cf35e9ede76c5e9baaee49594829fdf939a" [label=""];
  "sha256:39246d9cab40f9f2f95a4f5313d46cf35e9ede76c5e9baaee49594829fdf939a" -> "sha256:0340b50d69eca647a04df06db26a4215f727bfaf5b4a2860e2c1f37abd4fe9fb" [label=""];
  "sha256:874abec2324b9eed82172db4a57c563d6670e556926471072081548d52c6d87d" -> "sha256:0340b50d69eca647a04df06db26a4215f727bfaf5b4a2860e2c1f37abd4fe9fb" [label=""];
  "sha256:0340b50d69eca647a04df06db26a4215f727bfaf5b4a2860e2c1f37abd4fe9fb" -> "sha256:aaeeb616061076cbc487c03bb734cd473526d5a559111fc7a2fc8569a83c185e" [label=""];
  "sha256:aaeeb616061076cbc487c03bb734cd473526d5a559111fc7a2fc8569a83c185e" -> "sha256:6c3babec177c446c46efbbc06a18e02576d9691ff860d014a6eb50127d48c4dc" [label=""];
  "sha256:6c3babec177c446c46efbbc06a18e02576d9691ff860d014a6eb50127d48c4dc" -> "sha256:767a50e43a58b3202d3d1e9b719c11a38c96f579e9af3ffade30222547b62a69" [label=""];
}

