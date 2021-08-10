[app/sources/341742648.Dockerfile]
digraph {
  "sha256:86b7a724e6ef95ca6be1528a5ea08bdb6522642a2f539e4abf304ab60e0ef5e6" [label="local://context" shape="ellipse"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:a06feff3833789c6cacb6946b7f60e3263ca27e1c9d2546840bf5d8dc154e707" [label="/bin/sh -c go get github.com/aktau/github-release" shape="box"];
  "sha256:37ba7b5522e2294d63253ff30d0084b01713d37db5cca610acb4ff82e09c4313" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:4aedc412dae3ab6820d86fd2a78bedc6ed0d96124436acec7d82a4ec84f33ed8" [label="mkdir{path=/github/workspace}" shape="note"];
  "sha256:215195035f7282ff5beee72e7e78d7f46b7e1dda8700bd30952a15e005d0f6e3" [label="/bin/sh -c mkdir -p /github/workspace" shape="box"];
  "sha256:d49ec840b7e6f81ff5a04ec2a4792f34d401a637cfbe52a7a51e62605ff5706b" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:9867bd49b009bf02d1b28505e97d33ec35dc7f4813628b24e2cb8ec304be9a7a" [label="sha256:9867bd49b009bf02d1b28505e97d33ec35dc7f4813628b24e2cb8ec304be9a7a" shape="plaintext"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:a06feff3833789c6cacb6946b7f60e3263ca27e1c9d2546840bf5d8dc154e707" [label=""];
  "sha256:a06feff3833789c6cacb6946b7f60e3263ca27e1c9d2546840bf5d8dc154e707" -> "sha256:37ba7b5522e2294d63253ff30d0084b01713d37db5cca610acb4ff82e09c4313" [label=""];
  "sha256:86b7a724e6ef95ca6be1528a5ea08bdb6522642a2f539e4abf304ab60e0ef5e6" -> "sha256:37ba7b5522e2294d63253ff30d0084b01713d37db5cca610acb4ff82e09c4313" [label=""];
  "sha256:37ba7b5522e2294d63253ff30d0084b01713d37db5cca610acb4ff82e09c4313" -> "sha256:4aedc412dae3ab6820d86fd2a78bedc6ed0d96124436acec7d82a4ec84f33ed8" [label=""];
  "sha256:4aedc412dae3ab6820d86fd2a78bedc6ed0d96124436acec7d82a4ec84f33ed8" -> "sha256:215195035f7282ff5beee72e7e78d7f46b7e1dda8700bd30952a15e005d0f6e3" [label=""];
  "sha256:215195035f7282ff5beee72e7e78d7f46b7e1dda8700bd30952a15e005d0f6e3" -> "sha256:d49ec840b7e6f81ff5a04ec2a4792f34d401a637cfbe52a7a51e62605ff5706b" [label=""];
  "sha256:d49ec840b7e6f81ff5a04ec2a4792f34d401a637cfbe52a7a51e62605ff5706b" -> "sha256:9867bd49b009bf02d1b28505e97d33ec35dc7f4813628b24e2cb8ec304be9a7a" [label=""];
}

