[app/sources/248628358.Dockerfile]
digraph {
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" [label="docker-image://docker.io/library/python:2.7-alpine" shape="ellipse"];
  "sha256:cd296e4dd3723e9ad7d57c22209807d8e90ddcdbb5252561293f141736e52679" [label="local://context" shape="ellipse"];
  "sha256:a3d22d4c8a44c7766f8e3c4ed2faf15fcf10799960a6fc6f9f0bc0748c2792db" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:98684174b833752652eebba85be53a5919cd0adbfb144cfc51d9f89395116acd" [label="mkdir{path=/code}" shape="note"];
  "sha256:b430f2977e1fcdee8017f133513cc49f12ca27bb3b22afcabce8afed78feea31" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:b2fa041f0d147839ac9f0c6ed230842b0fc1122b5529dc8fe267c9c132964504" [label="sha256:b2fa041f0d147839ac9f0c6ed230842b0fc1122b5529dc8fe267c9c132964504" shape="plaintext"];
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" -> "sha256:a3d22d4c8a44c7766f8e3c4ed2faf15fcf10799960a6fc6f9f0bc0748c2792db" [label=""];
  "sha256:cd296e4dd3723e9ad7d57c22209807d8e90ddcdbb5252561293f141736e52679" -> "sha256:a3d22d4c8a44c7766f8e3c4ed2faf15fcf10799960a6fc6f9f0bc0748c2792db" [label=""];
  "sha256:a3d22d4c8a44c7766f8e3c4ed2faf15fcf10799960a6fc6f9f0bc0748c2792db" -> "sha256:98684174b833752652eebba85be53a5919cd0adbfb144cfc51d9f89395116acd" [label=""];
  "sha256:98684174b833752652eebba85be53a5919cd0adbfb144cfc51d9f89395116acd" -> "sha256:b430f2977e1fcdee8017f133513cc49f12ca27bb3b22afcabce8afed78feea31" [label=""];
  "sha256:b430f2977e1fcdee8017f133513cc49f12ca27bb3b22afcabce8afed78feea31" -> "sha256:b2fa041f0d147839ac9f0c6ed230842b0fc1122b5529dc8fe267c9c132964504" [label=""];
}

