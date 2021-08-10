[app/sources/339835269.Dockerfile]
digraph {
  "sha256:378f5c4932b0be290bc2ffe7a710868f86457bc0f7432c7fedc5d8056881b61f" [label="docker-image://docker.io/plugins/docker:linux-arm64" shape="ellipse"];
  "sha256:d53d3a24e9b130570973894b7a105102d5a1ecad31038dd490cd3c018fa8c45a" [label="local://context" shape="ellipse"];
  "sha256:bbbe499d38dff1bb5acba86baa3fce47a348986cd2c520240c641ba3883812d0" [label="copy{src=/release/linux/arm64/drone-heroku, dest=/bin/}" shape="note"];
  "sha256:f84b41f2d2010ae5e9f4a9333f04e0608454499bb4f2c4de88e36ea14827b347" [label="sha256:f84b41f2d2010ae5e9f4a9333f04e0608454499bb4f2c4de88e36ea14827b347" shape="plaintext"];
  "sha256:378f5c4932b0be290bc2ffe7a710868f86457bc0f7432c7fedc5d8056881b61f" -> "sha256:bbbe499d38dff1bb5acba86baa3fce47a348986cd2c520240c641ba3883812d0" [label=""];
  "sha256:d53d3a24e9b130570973894b7a105102d5a1ecad31038dd490cd3c018fa8c45a" -> "sha256:bbbe499d38dff1bb5acba86baa3fce47a348986cd2c520240c641ba3883812d0" [label=""];
  "sha256:bbbe499d38dff1bb5acba86baa3fce47a348986cd2c520240c641ba3883812d0" -> "sha256:f84b41f2d2010ae5e9f4a9333f04e0608454499bb4f2c4de88e36ea14827b347" [label=""];
}

