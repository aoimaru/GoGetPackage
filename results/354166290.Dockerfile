[app/sources/354166290.Dockerfile]
digraph {
  "sha256:da0db8f2cd8ff14b52d52a9d2df5f0bc58fc837b93e6a23f0b511f0e48e14be0" [label="docker-image://docker.io/rancher/confd-base:0.11.0-dev-rancher@sha256:bb4a2df21b9de3b162cfef772e72d12e2db79607fca9099579f405066a99c487" shape="ellipse"];
  "sha256:35c51bf6da40753c8a2f1f6545c5fd26367983b0225ba12f368565c814a93a8d" [label="local://context" shape="ellipse"];
  "sha256:e99e39812ed2cbf4a2ca27e694da309718e12a7402a7b2f00965181e47527284" [label="copy{src=/conf.d, dest=/etc/confd/conf.d}" shape="note"];
  "sha256:55732a517b485d4085e7b9fda6d2aad0f3e19efcbf658a99517b773927029f2a" [label="copy{src=/templates, dest=/etc/confd/templates}" shape="note"];
  "sha256:f7778ca67febe62e3ba0998be88c8e8034c5d09f452dc3a5cad6f0004ef7ca88" [label="sha256:f7778ca67febe62e3ba0998be88c8e8034c5d09f452dc3a5cad6f0004ef7ca88" shape="plaintext"];
  "sha256:da0db8f2cd8ff14b52d52a9d2df5f0bc58fc837b93e6a23f0b511f0e48e14be0" -> "sha256:e99e39812ed2cbf4a2ca27e694da309718e12a7402a7b2f00965181e47527284" [label=""];
  "sha256:35c51bf6da40753c8a2f1f6545c5fd26367983b0225ba12f368565c814a93a8d" -> "sha256:e99e39812ed2cbf4a2ca27e694da309718e12a7402a7b2f00965181e47527284" [label=""];
  "sha256:e99e39812ed2cbf4a2ca27e694da309718e12a7402a7b2f00965181e47527284" -> "sha256:55732a517b485d4085e7b9fda6d2aad0f3e19efcbf658a99517b773927029f2a" [label=""];
  "sha256:35c51bf6da40753c8a2f1f6545c5fd26367983b0225ba12f368565c814a93a8d" -> "sha256:55732a517b485d4085e7b9fda6d2aad0f3e19efcbf658a99517b773927029f2a" [label=""];
  "sha256:55732a517b485d4085e7b9fda6d2aad0f3e19efcbf658a99517b773927029f2a" -> "sha256:f7778ca67febe62e3ba0998be88c8e8034c5d09f452dc3a5cad6f0004ef7ca88" [label=""];
}

