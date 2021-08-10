[app/sources/287571849.Dockerfile]
digraph {
  "sha256:48a8ec76822579a2ceb62acee1e4737b73fb3d24a0576eb20b4666ccfcd06449" [label="docker-image://docker.io/library/node:8.6.0" shape="ellipse"];
  "sha256:2181c8b80fa5028ba1e169cae106cb6c17d4650048e8d987bcc6ee27749da00d" [label="mkdir{path=/opt}" shape="note"];
  "sha256:9c09ecca1cbc10343de21fe4c45476eb8111b5f48387f1a0c816aa19afef8aed" [label="/bin/sh -c curl -o- -L https://yarnpkg.com/install.sh | bash" shape="box"];
  "sha256:fa02c81058bc3c9d1924dde7418b93012ae66864d9cfb72e562611b3ce5e6a6a" [label="/bin/sh -c mkdir -p /usr/app/" shape="box"];
  "sha256:228eb7e16c272d11d43b8f202fbce903de4d8ecf5a4538245dc55c0b51df3a6d" [label="local://context" shape="ellipse"];
  "sha256:1156a0dba326ef23d9ab8265cb45e46aa0a472f98aa497a198e4053000b685e3" [label="copy{src=/, dest=/usr/app/}" shape="note"];
  "sha256:ed39740a5e2bc8644c8f4697155625696b0b8e486830a679194f6889eb42e8cb" [label="mkdir{path=/usr/app}" shape="note"];
  "sha256:1b5d1e17dfeeb71676eb8256e292211103b8218d334cad79e4b1874d3699a221" [label="/bin/sh -c yarn install" shape="box"];
  "sha256:57313606e25f99bea7ca70a191bcdef45bab818ec00d2fdc31ff2fcf38fbb1ca" [label="sha256:57313606e25f99bea7ca70a191bcdef45bab818ec00d2fdc31ff2fcf38fbb1ca" shape="plaintext"];
  "sha256:48a8ec76822579a2ceb62acee1e4737b73fb3d24a0576eb20b4666ccfcd06449" -> "sha256:2181c8b80fa5028ba1e169cae106cb6c17d4650048e8d987bcc6ee27749da00d" [label=""];
  "sha256:2181c8b80fa5028ba1e169cae106cb6c17d4650048e8d987bcc6ee27749da00d" -> "sha256:9c09ecca1cbc10343de21fe4c45476eb8111b5f48387f1a0c816aa19afef8aed" [label=""];
  "sha256:9c09ecca1cbc10343de21fe4c45476eb8111b5f48387f1a0c816aa19afef8aed" -> "sha256:fa02c81058bc3c9d1924dde7418b93012ae66864d9cfb72e562611b3ce5e6a6a" [label=""];
  "sha256:fa02c81058bc3c9d1924dde7418b93012ae66864d9cfb72e562611b3ce5e6a6a" -> "sha256:1156a0dba326ef23d9ab8265cb45e46aa0a472f98aa497a198e4053000b685e3" [label=""];
  "sha256:228eb7e16c272d11d43b8f202fbce903de4d8ecf5a4538245dc55c0b51df3a6d" -> "sha256:1156a0dba326ef23d9ab8265cb45e46aa0a472f98aa497a198e4053000b685e3" [label=""];
  "sha256:1156a0dba326ef23d9ab8265cb45e46aa0a472f98aa497a198e4053000b685e3" -> "sha256:ed39740a5e2bc8644c8f4697155625696b0b8e486830a679194f6889eb42e8cb" [label=""];
  "sha256:ed39740a5e2bc8644c8f4697155625696b0b8e486830a679194f6889eb42e8cb" -> "sha256:1b5d1e17dfeeb71676eb8256e292211103b8218d334cad79e4b1874d3699a221" [label=""];
  "sha256:1b5d1e17dfeeb71676eb8256e292211103b8218d334cad79e4b1874d3699a221" -> "sha256:57313606e25f99bea7ca70a191bcdef45bab818ec00d2fdc31ff2fcf38fbb1ca" [label=""];
}

