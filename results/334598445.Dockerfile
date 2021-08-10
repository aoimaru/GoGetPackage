[app/sources/334598445.Dockerfile]
digraph {
  "sha256:37ca65a6a10df418a0b6cf3f887e38f20c5632b1cb8e226f3d2f5caed28c3f06" [label="docker-image://docker.io/rocker/verse:3.4.3" shape="ellipse"];
  "sha256:f2fae1ff2dd210876d63e88940d2afaed9f7dbe3c138f51bd8caaf869bb6828c" [label="install2.r skimr babynames" shape="box"];
  "sha256:9f104a26f8cac3e1c5b4029eccab2e473b2b73d80f00d0369db2784966d47801" [label="installGithub.r yihui/xaringan@646f04e" shape="box"];
  "sha256:8fdf8ef34878e32909829138b042cc1d352cc6a9ba84dc7ec262139d561271e1" [label="/bin/sh -c git clone https://github.com/gadenbuie/trug-ggplot2.git" shape="box"];
  "sha256:555ba2d211958f3abfee17ae848201f4db6c8758d050cc0dc4cd6f6bb95bcd92" [label="sha256:555ba2d211958f3abfee17ae848201f4db6c8758d050cc0dc4cd6f6bb95bcd92" shape="plaintext"];
  "sha256:37ca65a6a10df418a0b6cf3f887e38f20c5632b1cb8e226f3d2f5caed28c3f06" -> "sha256:f2fae1ff2dd210876d63e88940d2afaed9f7dbe3c138f51bd8caaf869bb6828c" [label=""];
  "sha256:f2fae1ff2dd210876d63e88940d2afaed9f7dbe3c138f51bd8caaf869bb6828c" -> "sha256:9f104a26f8cac3e1c5b4029eccab2e473b2b73d80f00d0369db2784966d47801" [label=""];
  "sha256:9f104a26f8cac3e1c5b4029eccab2e473b2b73d80f00d0369db2784966d47801" -> "sha256:8fdf8ef34878e32909829138b042cc1d352cc6a9ba84dc7ec262139d561271e1" [label=""];
  "sha256:8fdf8ef34878e32909829138b042cc1d352cc6a9ba84dc7ec262139d561271e1" -> "sha256:555ba2d211958f3abfee17ae848201f4db6c8758d050cc0dc4cd6f6bb95bcd92" [label=""];
}

