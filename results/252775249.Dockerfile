[app/sources/252775249.Dockerfile]
digraph {
  "sha256:20affb2ba4eec63dcd754faa381325c60955cac557526e11114b63af92fc6e30" [label="docker-image://docker.io/fermayo/flask:latest" shape="ellipse"];
  "sha256:9f8e5b16ddf4aadf5e55f00dc3b44691227b6336aa0b9f67dfcb98eff66a84e4" [label="local://context" shape="ellipse"];
  "sha256:1cfb30701357a4c3f7c604424b051b966b73c4bfce966ab85f3d9bed83070c72" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:057c5f4004c4906281bdadf43a74641d56d82480dc383536a5a57ae6dafe59e7" [label="sha256:057c5f4004c4906281bdadf43a74641d56d82480dc383536a5a57ae6dafe59e7" shape="plaintext"];
  "sha256:20affb2ba4eec63dcd754faa381325c60955cac557526e11114b63af92fc6e30" -> "sha256:1cfb30701357a4c3f7c604424b051b966b73c4bfce966ab85f3d9bed83070c72" [label=""];
  "sha256:9f8e5b16ddf4aadf5e55f00dc3b44691227b6336aa0b9f67dfcb98eff66a84e4" -> "sha256:1cfb30701357a4c3f7c604424b051b966b73c4bfce966ab85f3d9bed83070c72" [label=""];
  "sha256:1cfb30701357a4c3f7c604424b051b966b73c4bfce966ab85f3d9bed83070c72" -> "sha256:057c5f4004c4906281bdadf43a74641d56d82480dc383536a5a57ae6dafe59e7" [label=""];
}

