[app/sources/285082390.Dockerfile]
digraph {
  "sha256:c89762998aaf035b8eebc15c707610de02aa9b8f0b0091d2fa94fc7837241b94" [label="docker-image://docker.io/library/vault:latest" shape="ellipse"];
  "sha256:029e6c11996277f3c19c257140d1e14332f496bf35be0d91032b2a07862fc906" [label="local://context" shape="ellipse"];
  "sha256:413933ed76919b2f100890afe0500ec956dd2a5407ff8c3823020fb3bd73fb99" [label="copy{src=/assets/binaries/vault, dest=/bin/vault}" shape="note"];
  "sha256:cceda103a4b58adc113cbb7092e232e7f606749cdbf1aa7410ead129df72c61a" [label="copy{src=/Dockerfile, dest=/Dockerfile}" shape="note"];
  "sha256:5b1a06477df24893fa2d27749d628cc6e5b0411266689d26dc065c7c3ddecf4e" [label="sha256:5b1a06477df24893fa2d27749d628cc6e5b0411266689d26dc065c7c3ddecf4e" shape="plaintext"];
  "sha256:c89762998aaf035b8eebc15c707610de02aa9b8f0b0091d2fa94fc7837241b94" -> "sha256:413933ed76919b2f100890afe0500ec956dd2a5407ff8c3823020fb3bd73fb99" [label=""];
  "sha256:029e6c11996277f3c19c257140d1e14332f496bf35be0d91032b2a07862fc906" -> "sha256:413933ed76919b2f100890afe0500ec956dd2a5407ff8c3823020fb3bd73fb99" [label=""];
  "sha256:413933ed76919b2f100890afe0500ec956dd2a5407ff8c3823020fb3bd73fb99" -> "sha256:cceda103a4b58adc113cbb7092e232e7f606749cdbf1aa7410ead129df72c61a" [label=""];
  "sha256:029e6c11996277f3c19c257140d1e14332f496bf35be0d91032b2a07862fc906" -> "sha256:cceda103a4b58adc113cbb7092e232e7f606749cdbf1aa7410ead129df72c61a" [label=""];
  "sha256:cceda103a4b58adc113cbb7092e232e7f606749cdbf1aa7410ead129df72c61a" -> "sha256:5b1a06477df24893fa2d27749d628cc6e5b0411266689d26dc065c7c3ddecf4e" [label=""];
}

