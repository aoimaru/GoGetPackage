[app/sources/252789771.Dockerfile]
digraph {
  "sha256:b0f25630da6b798c0abfb4a73dcf1ae08161ef39184642f00410b7104da4ab87" [label="docker-image://docker.io/dwolla/security-monkey-base:0.9.2" shape="ellipse"];
  "sha256:436cb9dfe51c02a6f5ed40c3079f23dfe15dbdd9024240dccb49db9fd5cd7911" [label="local://context" shape="ellipse"];
  "sha256:3f1c28b10fa764b7799449891cc1282ceb665d87be1b38b937190cfe02df7a27" [label="copy{src=/api-init.sh, dest=/usr/local/src/security_monkey/scripts/api-init.sh}" shape="note"];
  "sha256:37406aaa543d66b6f6b06ad71106dc8c3ef7a88988d9bcf58890ddef9ef1a8e3" [label="/bin/sh -c chmod +x /usr/local/src/security_monkey/scripts/api-init.sh" shape="box"];
  "sha256:db9236ead1e463f803147e7508c6f52aa8e332ac89c5abb9ff67c99f68d614db" [label="sha256:db9236ead1e463f803147e7508c6f52aa8e332ac89c5abb9ff67c99f68d614db" shape="plaintext"];
  "sha256:b0f25630da6b798c0abfb4a73dcf1ae08161ef39184642f00410b7104da4ab87" -> "sha256:3f1c28b10fa764b7799449891cc1282ceb665d87be1b38b937190cfe02df7a27" [label=""];
  "sha256:436cb9dfe51c02a6f5ed40c3079f23dfe15dbdd9024240dccb49db9fd5cd7911" -> "sha256:3f1c28b10fa764b7799449891cc1282ceb665d87be1b38b937190cfe02df7a27" [label=""];
  "sha256:3f1c28b10fa764b7799449891cc1282ceb665d87be1b38b937190cfe02df7a27" -> "sha256:37406aaa543d66b6f6b06ad71106dc8c3ef7a88988d9bcf58890ddef9ef1a8e3" [label=""];
  "sha256:37406aaa543d66b6f6b06ad71106dc8c3ef7a88988d9bcf58890ddef9ef1a8e3" -> "sha256:db9236ead1e463f803147e7508c6f52aa8e332ac89c5abb9ff67c99f68d614db" [label=""];
}

