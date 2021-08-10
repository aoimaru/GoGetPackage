[app/sources/274238562.Dockerfile]
digraph {
  "sha256:3e35ab9598b580790e1aca1b1cc07c26c5ffe0066e91911a5b076def440f358a" [label="local://context" shape="ellipse"];
  "sha256:c768ef9339480f2b7711dd39d6c8b6e511a87a4507dea7aa903026adce86dcae" [label="docker-image://docker.io/mhart/alpine-node:9.7" shape="ellipse"];
  "sha256:f068385f6cd7d68c2635ab2ef7f779d76a9d7569670cfba725ef62280d37b8c7" [label="/bin/sh -c npm install -g ganache-cli@6.0.3" shape="box"];
  "sha256:441d9f465393ef92f8f200c7ed2d5de7f6224fa3d05858bc9e084165c7e33cd7" [label="copy{src=/ganache.sh, dest=/ganache.sh}" shape="note"];
  "sha256:e6a9e6db75d61ac53a4d8a2bceea7f7c9e12496d8ea353b1202dc474804bd03d" [label="/bin/sh -c chmod +x ganache.sh" shape="box"];
  "sha256:198407b340d52d0f601b453c4d99e126854044d67b57b6e8e6866c23f4cf6090" [label="sha256:198407b340d52d0f601b453c4d99e126854044d67b57b6e8e6866c23f4cf6090" shape="plaintext"];
  "sha256:c768ef9339480f2b7711dd39d6c8b6e511a87a4507dea7aa903026adce86dcae" -> "sha256:f068385f6cd7d68c2635ab2ef7f779d76a9d7569670cfba725ef62280d37b8c7" [label=""];
  "sha256:f068385f6cd7d68c2635ab2ef7f779d76a9d7569670cfba725ef62280d37b8c7" -> "sha256:441d9f465393ef92f8f200c7ed2d5de7f6224fa3d05858bc9e084165c7e33cd7" [label=""];
  "sha256:3e35ab9598b580790e1aca1b1cc07c26c5ffe0066e91911a5b076def440f358a" -> "sha256:441d9f465393ef92f8f200c7ed2d5de7f6224fa3d05858bc9e084165c7e33cd7" [label=""];
  "sha256:441d9f465393ef92f8f200c7ed2d5de7f6224fa3d05858bc9e084165c7e33cd7" -> "sha256:e6a9e6db75d61ac53a4d8a2bceea7f7c9e12496d8ea353b1202dc474804bd03d" [label=""];
  "sha256:e6a9e6db75d61ac53a4d8a2bceea7f7c9e12496d8ea353b1202dc474804bd03d" -> "sha256:198407b340d52d0f601b453c4d99e126854044d67b57b6e8e6866c23f4cf6090" [label=""];
}

