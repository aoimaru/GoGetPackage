[app/sources/429786384.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:00a5ab51bbc049845c6babd55a374f1470bf71a88943c1a63c69f4d96fffddfe" [label="/bin/sh -c apk add --update &&         apk add git autoconf automake libtool gettext make flex bison pkgconfig &&         apk add gstreamer=1.12.1-r2 &&         apk add gstreamer-tools=1.12.1-r2 &&         apk add gstreamer-dev=1.12.1-r2 &&         apk add gst-plugins-base-dev=1.12.1-r2 &&         apk add gst-plugins-bad-dev=1.12.1-r2 &&         apk add gst-plugins-base=1.12.1-r2 &&         apk add gst-plugins-good=1.12.1-r2 &&         apk add gst-plugins-bad=1.12.1-r2 &&         apk add gst-plugins-ugly=1.12.1-r2 &&         apk add gst-libav=1.12.1-r2" shape="box"];
  "sha256:4a23230ed9299ab90bb53c72ec39fa4ca7c1944ef1e10d6b91ec772145855cee" [label="/bin/sh -c apk add gcc=6.4.0-r4 musl-dev=1.1.16-r15 augeas-dev=1.8.0-r1" shape="box"];
  "sha256:3f3a0c745efb43f921e13ae05ffe31d2c51f343c2b7b0f0063efa1eac5d6b0ed" [label="local://context" shape="ellipse"];
  "sha256:3eb3bb05385355c42318bc5beb8957ba94b7cae238ef312b710a53b5fe8e3193" [label="copy{src=/, dest=/gstreamill}" shape="note"];
  "sha256:5db2c7bdefd1a49cb0437ee505b766f6edd77d2bb650126cffc8982d35414b88" [label="/bin/sh -c cd gstreamill &&         ./autogen.sh &&         ./configure --prefix=/usr &&         make &&         make install && \tcd / && rm -rf gstreamill" shape="box"];
  "sha256:8d61f065d3ce36aff1241bbeb3428d423a838c18afaf047c35f61402cf72ffe2" [label="sha256:8d61f065d3ce36aff1241bbeb3428d423a838c18afaf047c35f61402cf72ffe2" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:00a5ab51bbc049845c6babd55a374f1470bf71a88943c1a63c69f4d96fffddfe" [label=""];
  "sha256:00a5ab51bbc049845c6babd55a374f1470bf71a88943c1a63c69f4d96fffddfe" -> "sha256:4a23230ed9299ab90bb53c72ec39fa4ca7c1944ef1e10d6b91ec772145855cee" [label=""];
  "sha256:4a23230ed9299ab90bb53c72ec39fa4ca7c1944ef1e10d6b91ec772145855cee" -> "sha256:3eb3bb05385355c42318bc5beb8957ba94b7cae238ef312b710a53b5fe8e3193" [label=""];
  "sha256:3f3a0c745efb43f921e13ae05ffe31d2c51f343c2b7b0f0063efa1eac5d6b0ed" -> "sha256:3eb3bb05385355c42318bc5beb8957ba94b7cae238ef312b710a53b5fe8e3193" [label=""];
  "sha256:3eb3bb05385355c42318bc5beb8957ba94b7cae238ef312b710a53b5fe8e3193" -> "sha256:5db2c7bdefd1a49cb0437ee505b766f6edd77d2bb650126cffc8982d35414b88" [label=""];
  "sha256:5db2c7bdefd1a49cb0437ee505b766f6edd77d2bb650126cffc8982d35414b88" -> "sha256:8d61f065d3ce36aff1241bbeb3428d423a838c18afaf047c35f61402cf72ffe2" [label=""];
}

