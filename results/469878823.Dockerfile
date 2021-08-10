[app/sources/469878823.Dockerfile]
digraph {
  "sha256:b4d80dccab164622f6c45c9f517b9dd8bf1a2fe5a3ac132048461059b91760a9" [label="docker-image://docker.io/library/node:8-alpine@sha256:38f7bf07ffd72ac612ec8c829cb20ad416518dbb679768d7733c93175453f4d4" shape="ellipse"];
  "sha256:2454aace85c8c5aacd26d3b7aaca7d1e09dbad8f166b00d6aff5277c65544218" [label="/bin/sh -c mkdir /app && chown node:node /app" shape="box"];
  "sha256:114d86d69e36a13b0d1c340f763c245d51b48ee1c995c66589d4b9c4145dcf53" [label="local://context" shape="ellipse"];
  "sha256:9d31ba5f41893fa649c085428f6f39e162ebc94522e205fb5e9437d6ddfd96bb" [label="copy{src=/package.json, dest=/app/},copy{src=/package-lock.json, dest=/app/}" shape="note"];
  "sha256:1f80a8c3292cf1851e60a622c9d0d59d6851f7b26ed17c7e8cba7edeeed037aa" [label="mkdir{path=/app}" shape="note"];
  "sha256:2839a2b1c265a6e13ba05cc2ce5fc85bb9f55673796249cdb6254eeca4e6d04a" [label="/bin/sh -c npm install" shape="box"];
  "sha256:4657c0c16c28e50c46bd671b66a95cd96fb860ac880cb6d39d7a0d50c7387c71" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:c5a1d9c82a511f43145bb7bc9f91ebdc689faabab6c96fb6a45b87d6aee25e8e" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:5451c39b9b3b5df0bbb43bc2ba8c7e74326de76bb606827d58644982ab6a0a73" [label="mkdir{path=/app}" shape="note"];
  "sha256:d37330aa539e0536dc53412a1f323c95c4516172c223c11d2ef99d87af5b9729" [label="sha256:d37330aa539e0536dc53412a1f323c95c4516172c223c11d2ef99d87af5b9729" shape="plaintext"];
  "sha256:b4d80dccab164622f6c45c9f517b9dd8bf1a2fe5a3ac132048461059b91760a9" -> "sha256:2454aace85c8c5aacd26d3b7aaca7d1e09dbad8f166b00d6aff5277c65544218" [label=""];
  "sha256:b4d80dccab164622f6c45c9f517b9dd8bf1a2fe5a3ac132048461059b91760a9" -> "sha256:9d31ba5f41893fa649c085428f6f39e162ebc94522e205fb5e9437d6ddfd96bb" [label=""];
  "sha256:114d86d69e36a13b0d1c340f763c245d51b48ee1c995c66589d4b9c4145dcf53" -> "sha256:9d31ba5f41893fa649c085428f6f39e162ebc94522e205fb5e9437d6ddfd96bb" [label=""];
  "sha256:9d31ba5f41893fa649c085428f6f39e162ebc94522e205fb5e9437d6ddfd96bb" -> "sha256:1f80a8c3292cf1851e60a622c9d0d59d6851f7b26ed17c7e8cba7edeeed037aa" [label=""];
  "sha256:1f80a8c3292cf1851e60a622c9d0d59d6851f7b26ed17c7e8cba7edeeed037aa" -> "sha256:2839a2b1c265a6e13ba05cc2ce5fc85bb9f55673796249cdb6254eeca4e6d04a" [label=""];
  "sha256:2839a2b1c265a6e13ba05cc2ce5fc85bb9f55673796249cdb6254eeca4e6d04a" -> "sha256:4657c0c16c28e50c46bd671b66a95cd96fb860ac880cb6d39d7a0d50c7387c71" [label=""];
  "sha256:114d86d69e36a13b0d1c340f763c245d51b48ee1c995c66589d4b9c4145dcf53" -> "sha256:4657c0c16c28e50c46bd671b66a95cd96fb860ac880cb6d39d7a0d50c7387c71" [label=""];
  "sha256:2454aace85c8c5aacd26d3b7aaca7d1e09dbad8f166b00d6aff5277c65544218" -> "sha256:c5a1d9c82a511f43145bb7bc9f91ebdc689faabab6c96fb6a45b87d6aee25e8e" [label=""];
  "sha256:4657c0c16c28e50c46bd671b66a95cd96fb860ac880cb6d39d7a0d50c7387c71" -> "sha256:c5a1d9c82a511f43145bb7bc9f91ebdc689faabab6c96fb6a45b87d6aee25e8e" [label=""];
  "sha256:c5a1d9c82a511f43145bb7bc9f91ebdc689faabab6c96fb6a45b87d6aee25e8e" -> "sha256:5451c39b9b3b5df0bbb43bc2ba8c7e74326de76bb606827d58644982ab6a0a73" [label=""];
  "sha256:5451c39b9b3b5df0bbb43bc2ba8c7e74326de76bb606827d58644982ab6a0a73" -> "sha256:d37330aa539e0536dc53412a1f323c95c4516172c223c11d2ef99d87af5b9729" [label=""];
}

