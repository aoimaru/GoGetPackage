[app/sources/282363934.Dockerfile]
digraph {
  "sha256:032492b653bf476a6c833707335ad8b26281f6c4b93f6e496e6da1ff5fa3dacf" [label="docker-image://gcr.io/distroless/base:latest@sha256:97f9cbf81590c7dd878d7e10c20116fa7488c2fb91b3c839df1ebdcb61ab13ca" shape="ellipse"];
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" [label="docker-image://docker.io/library/golang:1.10" shape="ellipse"];
  "sha256:7a303c264fb7c95f685ed5d8e450cfa7fdc35fb52eb22fbb602a3a1ab6937fa5" [label="https://github.com/GoogleCloudPlatform/docker-credential-gcr/releases/download/v1.4.3-static/docker-credential-gcr_linux_amd64-1.4.3.tar.gz" shape="ellipse"];
  "sha256:cfac0ba2170715231840c7c4f9f9fd19c0dc8eb6745dc5950aa9487d82d8b3c7" [label="copy{src=/docker-credential-gcr_linux_amd64-1.4.3.tar.gz, dest=/usr/local/bin/}" shape="note"];
  "sha256:5e01ecf8f66a20b22e29595f709a935d5ce42478a04c5b6cceaec1790c5adc57" [label="/bin/sh -c tar -C /usr/local/bin/ -xvzf /usr/local/bin/docker-credential-gcr_linux_amd64-1.4.3.tar.gz" shape="box"];
  "sha256:fb53bdfb56f97213b7598018c61853902316352bd6bba3c2ef857cc1cced9999" [label="copy{src=/usr/local/bin/docker-credential-gcr, dest=/docker-credential-gcr}" shape="note"];
  "sha256:1b7fc9a810fe1956ad7d973fdd22efb31f83a92f63fdeed1bb4c2b3d619fdc55" [label="local://context" shape="ellipse"];
  "sha256:be1c64fa860a3aa590d831d98161e80a9e08353883618742dd6274d35fe5c195" [label="copy{src=/out/container-structure-test-linux-amd64, dest=/container-structure-test}" shape="note"];
  "sha256:aebe6a00998f99f4e7539bfcfabe959c015ee4dba3103b1cbab0063e1be433e6" [label="sha256:aebe6a00998f99f4e7539bfcfabe959c015ee4dba3103b1cbab0063e1be433e6" shape="plaintext"];
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" -> "sha256:cfac0ba2170715231840c7c4f9f9fd19c0dc8eb6745dc5950aa9487d82d8b3c7" [label=""];
  "sha256:7a303c264fb7c95f685ed5d8e450cfa7fdc35fb52eb22fbb602a3a1ab6937fa5" -> "sha256:cfac0ba2170715231840c7c4f9f9fd19c0dc8eb6745dc5950aa9487d82d8b3c7" [label=""];
  "sha256:cfac0ba2170715231840c7c4f9f9fd19c0dc8eb6745dc5950aa9487d82d8b3c7" -> "sha256:5e01ecf8f66a20b22e29595f709a935d5ce42478a04c5b6cceaec1790c5adc57" [label=""];
  "sha256:032492b653bf476a6c833707335ad8b26281f6c4b93f6e496e6da1ff5fa3dacf" -> "sha256:fb53bdfb56f97213b7598018c61853902316352bd6bba3c2ef857cc1cced9999" [label=""];
  "sha256:5e01ecf8f66a20b22e29595f709a935d5ce42478a04c5b6cceaec1790c5adc57" -> "sha256:fb53bdfb56f97213b7598018c61853902316352bd6bba3c2ef857cc1cced9999" [label=""];
  "sha256:fb53bdfb56f97213b7598018c61853902316352bd6bba3c2ef857cc1cced9999" -> "sha256:be1c64fa860a3aa590d831d98161e80a9e08353883618742dd6274d35fe5c195" [label=""];
  "sha256:1b7fc9a810fe1956ad7d973fdd22efb31f83a92f63fdeed1bb4c2b3d619fdc55" -> "sha256:be1c64fa860a3aa590d831d98161e80a9e08353883618742dd6274d35fe5c195" [label=""];
  "sha256:be1c64fa860a3aa590d831d98161e80a9e08353883618742dd6274d35fe5c195" -> "sha256:aebe6a00998f99f4e7539bfcfabe959c015ee4dba3103b1cbab0063e1be433e6" [label=""];
}

