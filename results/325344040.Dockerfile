[app/sources/325344040.Dockerfile]
digraph {
  "sha256:881947fc2229ffa45310cb9b3b074e84cffb358da90d0cad36eb786c31a4d6e8" [label="local://context" shape="ellipse"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:807000f1cfaa44f04c5a191f31802b6c3c8d06d311438ae1c4ad5776be299239" [label="copy{src=/bin/linux/amd64/ark-restic-restore-helper, dest=/}" shape="note"];
  "sha256:423db552bb5e55cf08f8dda511c13e237e21efca1e338745d861f6a161b5b3c8" [label="sha256:423db552bb5e55cf08f8dda511c13e237e21efca1e338745d861f6a161b5b3c8" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:807000f1cfaa44f04c5a191f31802b6c3c8d06d311438ae1c4ad5776be299239" [label=""];
  "sha256:881947fc2229ffa45310cb9b3b074e84cffb358da90d0cad36eb786c31a4d6e8" -> "sha256:807000f1cfaa44f04c5a191f31802b6c3c8d06d311438ae1c4ad5776be299239" [label=""];
  "sha256:807000f1cfaa44f04c5a191f31802b6c3c8d06d311438ae1c4ad5776be299239" -> "sha256:423db552bb5e55cf08f8dda511c13e237e21efca1e338745d861f6a161b5b3c8" [label=""];
}

