[app/sources/413079779.Dockerfile]
digraph {
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" [label="docker-image://docker.io/library/golang:1.10-alpine" shape="ellipse"];
  "sha256:e7e6defce7f71a955560ba897e18fd59cb13ccebf661ab4acaf0d9eb454cf02a" [label="/bin/sh -c apk add -U make git" shape="box"];
  "sha256:5550e0681dd3609c0302405babd8a77fa3fb7c0b7228bb58e4dababf6197c257" [label="mkdir{path=/src/github.com/Sfeir/golang-200}" shape="note"];
  "sha256:00aad527d9cc88b4e8123ec57331e9f62d3b702744e1b4ebeb8603371811d42a" [label="local://context" shape="ellipse"];
  "sha256:b068a9e8f6a6f30b23c5dca54cd0ebc065b86007f26bea8213ede90bd71dfa2e" [label="copy{src=/, dest=/src/github.com/Sfeir/golang-200}" shape="note"];
  "sha256:1d85994672e4c45337ab3feec59823ad23191eeb1345c4656a747cf9d29787cb" [label="/bin/sh -c make all && apk del make git &&   rm -rf /gopath/pkg &&   rm -rf /gopath/src &&   rm -rf /var/cache/apk/*" shape="box"];
  "sha256:9c74ced66d5be52705164be163379fce22ff657f82db2b8bf01bda5038efeac6" [label="sha256:9c74ced66d5be52705164be163379fce22ff657f82db2b8bf01bda5038efeac6" shape="plaintext"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" -> "sha256:e7e6defce7f71a955560ba897e18fd59cb13ccebf661ab4acaf0d9eb454cf02a" [label=""];
  "sha256:e7e6defce7f71a955560ba897e18fd59cb13ccebf661ab4acaf0d9eb454cf02a" -> "sha256:5550e0681dd3609c0302405babd8a77fa3fb7c0b7228bb58e4dababf6197c257" [label=""];
  "sha256:5550e0681dd3609c0302405babd8a77fa3fb7c0b7228bb58e4dababf6197c257" -> "sha256:b068a9e8f6a6f30b23c5dca54cd0ebc065b86007f26bea8213ede90bd71dfa2e" [label=""];
  "sha256:00aad527d9cc88b4e8123ec57331e9f62d3b702744e1b4ebeb8603371811d42a" -> "sha256:b068a9e8f6a6f30b23c5dca54cd0ebc065b86007f26bea8213ede90bd71dfa2e" [label=""];
  "sha256:b068a9e8f6a6f30b23c5dca54cd0ebc065b86007f26bea8213ede90bd71dfa2e" -> "sha256:1d85994672e4c45337ab3feec59823ad23191eeb1345c4656a747cf9d29787cb" [label=""];
  "sha256:1d85994672e4c45337ab3feec59823ad23191eeb1345c4656a747cf9d29787cb" -> "sha256:9c74ced66d5be52705164be163379fce22ff657f82db2b8bf01bda5038efeac6" [label=""];
}

