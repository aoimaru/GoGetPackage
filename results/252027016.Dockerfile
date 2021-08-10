[app/sources/252027016.Dockerfile]
digraph {
  "sha256:ec03de3fac4f4c255e208d302729964cc03160425163aa153c42efda31987584" [label="docker-image://docker.io/conoria/alpine-pandoc:latest" shape="ellipse"];
  "sha256:8995887de977376c9e2bdd502e80f196d4ff3feb9989ae03fc80847a0c796ae4" [label="/bin/sh -c apk add --no-cache gmp libffi zlib pcre cmark@testing R R-dev curl openssl-dev curl-dev gcc g++ git coreutils libxml2-dev &&  R -q -e 'install.packages(\"bookdown\", repo=\"https://cran.rstudio.com/\")' &&  rm -rf /tmp/*" shape="box"];
  "sha256:d4d80815417bfea6c9a019cba06220223083b192b5dded8ec3e570efb122f0d7" [label="sha256:d4d80815417bfea6c9a019cba06220223083b192b5dded8ec3e570efb122f0d7" shape="plaintext"];
  "sha256:ec03de3fac4f4c255e208d302729964cc03160425163aa153c42efda31987584" -> "sha256:8995887de977376c9e2bdd502e80f196d4ff3feb9989ae03fc80847a0c796ae4" [label=""];
  "sha256:8995887de977376c9e2bdd502e80f196d4ff3feb9989ae03fc80847a0c796ae4" -> "sha256:d4d80815417bfea6c9a019cba06220223083b192b5dded8ec3e570efb122f0d7" [label=""];
}

