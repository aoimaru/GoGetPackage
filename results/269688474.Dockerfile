[app/sources/269688474.Dockerfile]
digraph {
  "sha256:3a321a6a13e8c70d9b6c49254d705171c88ca4761a9c469764ab78a659b0f13b" [label="local://context" shape="ellipse"];
  "sha256:4b527c32c22268797ec7e8a940dde10ca12305fc71886f635307ef662a762699" [label="docker-image://docker.io/library/shell-test-base:latest" shape="ellipse"];
  "sha256:9100e845f0164333356f0f5e66b682526017b064a38b0913297b88c50c817832" [label="mkdir{path=/tests}" shape="note"];
  "sha256:5e453db076e24aa2530462f527d11d34d676bdc60b10ec17cff4e51bb0d5904c" [label="copy{src=/.openwhisk-shell, dest=/.openwhisk-shell}" shape="note"];
  "sha256:27e631040887a1f340021b0c60cf31370a1ac8fe5605c79bb397065b72b8ebad" [label="copy{src=/dist, dest=/dist}" shape="note"];
  "sha256:c65b02f27acc7cd5fdb143d5e8840ee2338ecce3a3cbfe78c9c2d9381dce253d" [label="/bin/sh -c echo \"API_HOST=foo\" > ~/.wskprops" shape="box"];
  "sha256:aa4686cccc0ac6ff8fb577c80a62ac4593a694a93e638f451350c0dd65538a3b" [label="/bin/sh -c echo \"AUTH=bar\" >>  ~/.wskprops" shape="box"];
  "sha256:af7b196120ea369317ec33eb37d808537e1665385c80c5731cb96e7fda2a294e" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:5701c5265e65fa883dc9160c2f65396c0b39d10b6adbc8529eeefebde6af48a8" [label="/bin/sh -c cd /app && npm install --unsafe-perm" shape="box"];
  "sha256:3caf1e1d028f1cc1078a3cb04db8238e1bbee9ea545e69e1a57874aca0d692b0" [label="/bin/sh -c rm ~/.wskprops" shape="box"];
  "sha256:b7939190b382ae0c6790b5106236d049cda6688d387ff9545f2eefccafd861d0" [label="copy{src=/tests, dest=/tests}" shape="note"];
  "sha256:4e86bd1e273e2b03ae4065c46c855462e41ba0a4b38799f4c722dd72cd944fa7" [label="/bin/sh -c cd /tests && npm install" shape="box"];
  "sha256:0b25f99637fc79c34e35c0514683f06001da13f70d8de7aceb71914eb120283c" [label="/bin/sh -c mv /chromedriver /tests/node_modules/electron-chromedriver/bin" shape="box"];
  "sha256:b28de68a7a5cf2d16283bddd2f4d9b95380ec3f067cd4a0d118367aa2aab5ec3" [label="sha256:b28de68a7a5cf2d16283bddd2f4d9b95380ec3f067cd4a0d118367aa2aab5ec3" shape="plaintext"];
  "sha256:4b527c32c22268797ec7e8a940dde10ca12305fc71886f635307ef662a762699" -> "sha256:9100e845f0164333356f0f5e66b682526017b064a38b0913297b88c50c817832" [label=""];
  "sha256:9100e845f0164333356f0f5e66b682526017b064a38b0913297b88c50c817832" -> "sha256:5e453db076e24aa2530462f527d11d34d676bdc60b10ec17cff4e51bb0d5904c" [label=""];
  "sha256:3a321a6a13e8c70d9b6c49254d705171c88ca4761a9c469764ab78a659b0f13b" -> "sha256:5e453db076e24aa2530462f527d11d34d676bdc60b10ec17cff4e51bb0d5904c" [label=""];
  "sha256:5e453db076e24aa2530462f527d11d34d676bdc60b10ec17cff4e51bb0d5904c" -> "sha256:27e631040887a1f340021b0c60cf31370a1ac8fe5605c79bb397065b72b8ebad" [label=""];
  "sha256:3a321a6a13e8c70d9b6c49254d705171c88ca4761a9c469764ab78a659b0f13b" -> "sha256:27e631040887a1f340021b0c60cf31370a1ac8fe5605c79bb397065b72b8ebad" [label=""];
  "sha256:27e631040887a1f340021b0c60cf31370a1ac8fe5605c79bb397065b72b8ebad" -> "sha256:c65b02f27acc7cd5fdb143d5e8840ee2338ecce3a3cbfe78c9c2d9381dce253d" [label=""];
  "sha256:c65b02f27acc7cd5fdb143d5e8840ee2338ecce3a3cbfe78c9c2d9381dce253d" -> "sha256:aa4686cccc0ac6ff8fb577c80a62ac4593a694a93e638f451350c0dd65538a3b" [label=""];
  "sha256:aa4686cccc0ac6ff8fb577c80a62ac4593a694a93e638f451350c0dd65538a3b" -> "sha256:af7b196120ea369317ec33eb37d808537e1665385c80c5731cb96e7fda2a294e" [label=""];
  "sha256:3a321a6a13e8c70d9b6c49254d705171c88ca4761a9c469764ab78a659b0f13b" -> "sha256:af7b196120ea369317ec33eb37d808537e1665385c80c5731cb96e7fda2a294e" [label=""];
  "sha256:af7b196120ea369317ec33eb37d808537e1665385c80c5731cb96e7fda2a294e" -> "sha256:5701c5265e65fa883dc9160c2f65396c0b39d10b6adbc8529eeefebde6af48a8" [label=""];
  "sha256:5701c5265e65fa883dc9160c2f65396c0b39d10b6adbc8529eeefebde6af48a8" -> "sha256:3caf1e1d028f1cc1078a3cb04db8238e1bbee9ea545e69e1a57874aca0d692b0" [label=""];
  "sha256:3caf1e1d028f1cc1078a3cb04db8238e1bbee9ea545e69e1a57874aca0d692b0" -> "sha256:b7939190b382ae0c6790b5106236d049cda6688d387ff9545f2eefccafd861d0" [label=""];
  "sha256:3a321a6a13e8c70d9b6c49254d705171c88ca4761a9c469764ab78a659b0f13b" -> "sha256:b7939190b382ae0c6790b5106236d049cda6688d387ff9545f2eefccafd861d0" [label=""];
  "sha256:b7939190b382ae0c6790b5106236d049cda6688d387ff9545f2eefccafd861d0" -> "sha256:4e86bd1e273e2b03ae4065c46c855462e41ba0a4b38799f4c722dd72cd944fa7" [label=""];
  "sha256:4e86bd1e273e2b03ae4065c46c855462e41ba0a4b38799f4c722dd72cd944fa7" -> "sha256:0b25f99637fc79c34e35c0514683f06001da13f70d8de7aceb71914eb120283c" [label=""];
  "sha256:0b25f99637fc79c34e35c0514683f06001da13f70d8de7aceb71914eb120283c" -> "sha256:b28de68a7a5cf2d16283bddd2f4d9b95380ec3f067cd4a0d118367aa2aab5ec3" [label=""];
}

