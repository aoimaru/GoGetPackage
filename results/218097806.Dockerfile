[app/sources/218097806.Dockerfile]
digraph {
  "sha256:a8bf451888c5e039577f5300a4a68ebb14677e901d96b3ad78fd2fa99f9bf67c" [label="docker-image://docker.io/inikolaev/alpine-nodejs:latest" shape="ellipse"];
  "sha256:dd04c7f378bc3539f25760377ac6da65bcf30c93cbe5a9bf52ca3eeb16a1f910" [label="/bin/sh -c npm install -g heroku" shape="box"];
  "sha256:0d829c1c26016f2efc03131d859160e57a5880cd634fc4b7b1bd11f655a07a06" [label="sha256:0d829c1c26016f2efc03131d859160e57a5880cd634fc4b7b1bd11f655a07a06" shape="plaintext"];
  "sha256:a8bf451888c5e039577f5300a4a68ebb14677e901d96b3ad78fd2fa99f9bf67c" -> "sha256:dd04c7f378bc3539f25760377ac6da65bcf30c93cbe5a9bf52ca3eeb16a1f910" [label=""];
  "sha256:dd04c7f378bc3539f25760377ac6da65bcf30c93cbe5a9bf52ca3eeb16a1f910" -> "sha256:0d829c1c26016f2efc03131d859160e57a5880cd634fc4b7b1bd11f655a07a06" [label=""];
}

