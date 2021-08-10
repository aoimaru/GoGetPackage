[app/sources/375341856.Dockerfile]
digraph {
  "sha256:57fc5cd68ee2f93c72b4c303c890d4192482949c376ab99976fa638191f4b726" [label="local://context" shape="ellipse"];
  "sha256:2d03b27268c15982221afd6ed1a0b3b47c3e8e5da5953c1b2e32e248bc599de3" [label="docker-image://docker.io/library/python:2-alpine" shape="ellipse"];
  "sha256:62c3c4ae1908d31dd8f091815da8470459a5f1c33ff256cb81f78c76e487b1b4" [label="/bin/sh -c apk --no-cache add ${PACKAGES}" shape="box"];
  "sha256:e73cf456c01097cb5f4250a48a730c6e264a11d5a61064d7aa8747f3ba46d444" [label="/bin/sh -c adduser -D -H -u 19857 algo" shape="box"];
  "sha256:354e36b15a131e3ab1ee6f9fd536eb28364fd1bd9c10d2c9b50206ec7a98a0d8" [label="/bin/sh -c mkdir -p /algo && mkdir -p /algo/configs" shape="box"];
  "sha256:e932c6c8807755007fada8322ff2328ce8ea249e2cf8572b78c60290223e850a" [label="mkdir{path=/algo}" shape="note"];
  "sha256:7e97c8e3a3662adb2a5b155194bbb9a6e03186e6954b006f8cc313f2d3084242" [label="copy{src=/requirements.txt, dest=/algo/}" shape="note"];
  "sha256:b2d4e4e5e73a99db832eb42da8e79f8c4d2533c4aa1e99ec4f05e29f6c6716b6" [label="/bin/sh -c apk --no-cache add ${BUILD_PACKAGES} &&     python -m pip --no-cache-dir install -U pip &&     python -m pip --no-cache-dir install virtualenv &&     python -m virtualenv env &&     source env/bin/activate &&     python -m pip --no-cache-dir install -r requirements.txt &&     apk del ${BUILD_PACKAGES}" shape="box"];
  "sha256:b845b398964c63d803a3b49d5b7952b8bf4b23073f7063d69c703d39507b6b54" [label="copy{src=/, dest=/algo/}" shape="note"];
  "sha256:4cf64dc8d5d96b251f5677453fd5befad59cbb4647913af64262f1b920598d07" [label="/bin/sh -c chmod 0755 /algo/algo-docker.sh" shape="box"];
  "sha256:03a3249c727ad0a550b77752a9e82e6bb224de014ee08b1f1bd66889ce0eb8fb" [label="sha256:03a3249c727ad0a550b77752a9e82e6bb224de014ee08b1f1bd66889ce0eb8fb" shape="plaintext"];
  "sha256:2d03b27268c15982221afd6ed1a0b3b47c3e8e5da5953c1b2e32e248bc599de3" -> "sha256:62c3c4ae1908d31dd8f091815da8470459a5f1c33ff256cb81f78c76e487b1b4" [label=""];
  "sha256:62c3c4ae1908d31dd8f091815da8470459a5f1c33ff256cb81f78c76e487b1b4" -> "sha256:e73cf456c01097cb5f4250a48a730c6e264a11d5a61064d7aa8747f3ba46d444" [label=""];
  "sha256:e73cf456c01097cb5f4250a48a730c6e264a11d5a61064d7aa8747f3ba46d444" -> "sha256:354e36b15a131e3ab1ee6f9fd536eb28364fd1bd9c10d2c9b50206ec7a98a0d8" [label=""];
  "sha256:354e36b15a131e3ab1ee6f9fd536eb28364fd1bd9c10d2c9b50206ec7a98a0d8" -> "sha256:e932c6c8807755007fada8322ff2328ce8ea249e2cf8572b78c60290223e850a" [label=""];
  "sha256:e932c6c8807755007fada8322ff2328ce8ea249e2cf8572b78c60290223e850a" -> "sha256:7e97c8e3a3662adb2a5b155194bbb9a6e03186e6954b006f8cc313f2d3084242" [label=""];
  "sha256:57fc5cd68ee2f93c72b4c303c890d4192482949c376ab99976fa638191f4b726" -> "sha256:7e97c8e3a3662adb2a5b155194bbb9a6e03186e6954b006f8cc313f2d3084242" [label=""];
  "sha256:7e97c8e3a3662adb2a5b155194bbb9a6e03186e6954b006f8cc313f2d3084242" -> "sha256:b2d4e4e5e73a99db832eb42da8e79f8c4d2533c4aa1e99ec4f05e29f6c6716b6" [label=""];
  "sha256:b2d4e4e5e73a99db832eb42da8e79f8c4d2533c4aa1e99ec4f05e29f6c6716b6" -> "sha256:b845b398964c63d803a3b49d5b7952b8bf4b23073f7063d69c703d39507b6b54" [label=""];
  "sha256:57fc5cd68ee2f93c72b4c303c890d4192482949c376ab99976fa638191f4b726" -> "sha256:b845b398964c63d803a3b49d5b7952b8bf4b23073f7063d69c703d39507b6b54" [label=""];
  "sha256:b845b398964c63d803a3b49d5b7952b8bf4b23073f7063d69c703d39507b6b54" -> "sha256:4cf64dc8d5d96b251f5677453fd5befad59cbb4647913af64262f1b920598d07" [label=""];
  "sha256:4cf64dc8d5d96b251f5677453fd5befad59cbb4647913af64262f1b920598d07" -> "sha256:03a3249c727ad0a550b77752a9e82e6bb224de014ee08b1f1bd66889ce0eb8fb" [label=""];
}

