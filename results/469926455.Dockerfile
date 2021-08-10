[app/sources/469926455.Dockerfile]
digraph {
  "sha256:d71b0c7aef9e01c2ea9879a2e05a83ddd72ee6e5c69aa409ee1625256a0e967c" [label="docker-image://docker.io/library/python:3.6.6" shape="ellipse"];
  "sha256:49f0d33aacb8f62372df7d8da6b0d824ff508f6c410883e4cd88c77dafb7073c" [label="/bin/sh -c apt-get update && apt-get install -y     antiword     build-essential     ca-certificates     curl     flac     ffmpeg     gcc     git     gzip     lame     libav-tools     libjpeg-dev     libmad0     libpq-dev     libpulse-dev     libsox-fmt-mp3     libxml2-dev     libxslt1-dev     make     musl-dev     netcat     poppler-utils     postgresql-common     pstotext     python-dev     python-pip     sox     ssh     swig     tar     tesseract-ocr     unrtf     zlib1g-dev     && curl -fsSLO \"$SUPERCRONIC_URL\"     && echo \"${SUPERCRONIC_SHA1SUM}  ${SUPERCRONIC}\" | sha1sum -c -     && chmod +x \"$SUPERCRONIC\"     && mv \"$SUPERCRONIC\" \"/usr/local/bin/${SUPERCRONIC}\"     && ln -s \"/usr/local/bin/${SUPERCRONIC}\" /usr/local/bin/supercronic     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0799c66c22f47db5d00f562c1cf1e73876c521a26a4d641b7b7cf88bbf56de3b" [label="local://context" shape="ellipse"];
  "sha256:2397a8b6997f264ab0053058dafbd03c84765d50d993eb39ff3528ef7a37015b" [label="copy{src=/requirements-test.txt, dest=/}" shape="note"];
  "sha256:22c596b9928772846e189daa81dc4ba897d92cbe1a460afed2408a79f233bb5f" [label="/bin/sh -c pip install -r requirements-test.txt" shape="box"];
  "sha256:f2585843423f1ea031f706f7822e93ebd5bd8fe11e9413e76e3404aae3dbfca7" [label="sha256:f2585843423f1ea031f706f7822e93ebd5bd8fe11e9413e76e3404aae3dbfca7" shape="plaintext"];
  "sha256:d71b0c7aef9e01c2ea9879a2e05a83ddd72ee6e5c69aa409ee1625256a0e967c" -> "sha256:49f0d33aacb8f62372df7d8da6b0d824ff508f6c410883e4cd88c77dafb7073c" [label=""];
  "sha256:49f0d33aacb8f62372df7d8da6b0d824ff508f6c410883e4cd88c77dafb7073c" -> "sha256:2397a8b6997f264ab0053058dafbd03c84765d50d993eb39ff3528ef7a37015b" [label=""];
  "sha256:0799c66c22f47db5d00f562c1cf1e73876c521a26a4d641b7b7cf88bbf56de3b" -> "sha256:2397a8b6997f264ab0053058dafbd03c84765d50d993eb39ff3528ef7a37015b" [label=""];
  "sha256:2397a8b6997f264ab0053058dafbd03c84765d50d993eb39ff3528ef7a37015b" -> "sha256:22c596b9928772846e189daa81dc4ba897d92cbe1a460afed2408a79f233bb5f" [label=""];
  "sha256:22c596b9928772846e189daa81dc4ba897d92cbe1a460afed2408a79f233bb5f" -> "sha256:f2585843423f1ea031f706f7822e93ebd5bd8fe11e9413e76e3404aae3dbfca7" [label=""];
}

