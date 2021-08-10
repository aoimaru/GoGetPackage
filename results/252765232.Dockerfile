[app/sources/252765232.Dockerfile]
digraph {
  "sha256:326d7f79d30502824b4dc561ee250f5eb77581e931ffed7479a00a0068a06956" [label="docker-image://docker.io/007backups/base:3.0" shape="ellipse"];
  "sha256:984a65dfebea6998fdb52ec10b36b9965ee8da512651b8bf69a6eaee0f79421e" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:3e539650c73ee3617a81e2b008a3347cb2e53c4bc9575122a480717d048d8cf8" [label="local://context" shape="ellipse"];
  "sha256:8438fc34fd3dd082a09a8fae6c450c6a902931835fed7ac382b647e7e3e22dd7" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:a2d6952e4073b31c1df065e007cad1bd9811f8dc5ada33d977db75c195077f79" [label="/bin/sh -c set -ex; python3 -m pip install --no-cache-dir --upgrade \"b2==$PYTHON_B2_VERSION\" \"/usr/src/app\"; rm -rf \"/usr/src/app/\"" shape="box"];
  "sha256:5da160c922327dcd94a4a3b6ee4f047f32904f9ec1e38667674e1b49aad62481" [label="sha256:5da160c922327dcd94a4a3b6ee4f047f32904f9ec1e38667674e1b49aad62481" shape="plaintext"];
  "sha256:326d7f79d30502824b4dc561ee250f5eb77581e931ffed7479a00a0068a06956" -> "sha256:984a65dfebea6998fdb52ec10b36b9965ee8da512651b8bf69a6eaee0f79421e" [label=""];
  "sha256:984a65dfebea6998fdb52ec10b36b9965ee8da512651b8bf69a6eaee0f79421e" -> "sha256:8438fc34fd3dd082a09a8fae6c450c6a902931835fed7ac382b647e7e3e22dd7" [label=""];
  "sha256:3e539650c73ee3617a81e2b008a3347cb2e53c4bc9575122a480717d048d8cf8" -> "sha256:8438fc34fd3dd082a09a8fae6c450c6a902931835fed7ac382b647e7e3e22dd7" [label=""];
  "sha256:8438fc34fd3dd082a09a8fae6c450c6a902931835fed7ac382b647e7e3e22dd7" -> "sha256:a2d6952e4073b31c1df065e007cad1bd9811f8dc5ada33d977db75c195077f79" [label=""];
  "sha256:a2d6952e4073b31c1df065e007cad1bd9811f8dc5ada33d977db75c195077f79" -> "sha256:5da160c922327dcd94a4a3b6ee4f047f32904f9ec1e38667674e1b49aad62481" [label=""];
}

