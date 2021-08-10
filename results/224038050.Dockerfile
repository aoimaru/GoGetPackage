[app/sources/224038050.Dockerfile]
digraph {
  "sha256:3d563a9af8b994ffe3906464633e19f54a20bc408be1567f3ed287bda59f7e48" [label="docker-image://docker.io/library/golang:1.8.3-alpine3.6" shape="ellipse"];
  "sha256:fa4baf4e57a353ad7c96092c314c4164cf9d2791bc599718249e8673c8cb11a2" [label="/bin/sh -c apk update &&   apk upgrade --update-cache --available" shape="box"];
  "sha256:78fc442f96307945052aeea6041b78f8c9bd4652de28b19c8b72e5b8f97d03e4" [label="/bin/sh -c apk add git make curl perl bash build-base zlib-dev ucl-dev" shape="box"];
  "sha256:481d248d0e0f219e327a7bb66267dd162101558f57a1b74637f993675b0ce968" [label="/bin/sh -c git clone https://github.com/upx/upx.git && cd upx &&   git submodule update --init --recursive &&   make all && cp -r src/upx.out /usr/local/bin/upx" shape="box"];
  "sha256:bec49033294fc20b6514cee2d38b3fe90004b6ae7f3e414bd2183ff3b6fb914e" [label="/bin/sh -c rm -rf /var/cache/apk/*" shape="box"];
  "sha256:d6bc8c8d68de2149c16c47a9e3ad29c21071429bad31b51f81373497b5bbf478" [label="/bin/sh -c curl https://glide.sh/get | sh" shape="box"];
  "sha256:6c6bbd718de9401b61b8f2ee51b18ff2d148695726d16adad0af184af591d619" [label="/bin/sh -c go get -u github.com/jstemmer/go-junit-report" shape="box"];
  "sha256:fd7bc4d779d23833aac5fbd9a6dc41b51ddba9e3f9e3c58e1d08e250fbc08427" [label="/bin/sh -c go get -u github.com/axw/gocov/gocov" shape="box"];
  "sha256:1e2f3dc71578a37a272d5e85554b4241f44ba8fb79ffec8e147e650b8664bc68" [label="/bin/sh -c go get -u github.com/AlekSi/gocov-xml" shape="box"];
  "sha256:9ca2e996022c5c6c2e05890911b2041cd79899c66922dfe32003981c2f87236e" [label="/bin/sh -c go get -u github.com/golang/lint/golint" shape="box"];
  "sha256:06b339e5895981c5d2e026d2799bd94e68db0280ca5e339810d81b42c7b3540e" [label="/bin/sh -c go get -u github.com/mitchellh/gox" shape="box"];
  "sha256:d9f1103993b59594e1bafeef18ad3e8cef8d6083ed0475ca7799b1e45904fc13" [label="/bin/sh -c go get -u github.com/russross/blackfriday-tool" shape="box"];
  "sha256:9da91d0c4c111225ff76702b8902d58cbe2c996636e59c38c81806dea8d2e475" [label="/bin/sh -c go get -u github.com/kardianos/govendor" shape="box"];
  "sha256:116a2160fed3edf6220e97b895dca042d8ec019095aae413ee23ebd13d5ea4de" [label="/bin/sh -c go get -u github.com/campoy/embedmd" shape="box"];
  "sha256:1826a9a82330f384acdd06c8c6fcc0c217d6af566c9bccbf89c0f63b2258831d" [label="/bin/sh -c curl https://raw.githubusercontent.com/AlDanial/cloc/master/cloc -o /usr/bin/cloc   && chmod 755 /usr/bin/cloc" shape="box"];
  "sha256:c5d3041de68ca20334e45f6b2d4944b468319f34fe1e938c4606b6058a368cf9" [label="local://context" shape="ellipse"];
  "sha256:4fd2d29dd4a731333850884403d4213db5e48fdf24559d58e7fb1ead62356515" [label="copy{src=/coverage.sh, dest=/usr/bin/coverage}" shape="note"];
  "sha256:26c7d50f84daf654062238ac683fdcd8f99575110cf198c8cf8043765a2f23bd" [label="sha256:26c7d50f84daf654062238ac683fdcd8f99575110cf198c8cf8043765a2f23bd" shape="plaintext"];
  "sha256:3d563a9af8b994ffe3906464633e19f54a20bc408be1567f3ed287bda59f7e48" -> "sha256:fa4baf4e57a353ad7c96092c314c4164cf9d2791bc599718249e8673c8cb11a2" [label=""];
  "sha256:fa4baf4e57a353ad7c96092c314c4164cf9d2791bc599718249e8673c8cb11a2" -> "sha256:78fc442f96307945052aeea6041b78f8c9bd4652de28b19c8b72e5b8f97d03e4" [label=""];
  "sha256:78fc442f96307945052aeea6041b78f8c9bd4652de28b19c8b72e5b8f97d03e4" -> "sha256:481d248d0e0f219e327a7bb66267dd162101558f57a1b74637f993675b0ce968" [label=""];
  "sha256:481d248d0e0f219e327a7bb66267dd162101558f57a1b74637f993675b0ce968" -> "sha256:bec49033294fc20b6514cee2d38b3fe90004b6ae7f3e414bd2183ff3b6fb914e" [label=""];
  "sha256:bec49033294fc20b6514cee2d38b3fe90004b6ae7f3e414bd2183ff3b6fb914e" -> "sha256:d6bc8c8d68de2149c16c47a9e3ad29c21071429bad31b51f81373497b5bbf478" [label=""];
  "sha256:d6bc8c8d68de2149c16c47a9e3ad29c21071429bad31b51f81373497b5bbf478" -> "sha256:6c6bbd718de9401b61b8f2ee51b18ff2d148695726d16adad0af184af591d619" [label=""];
  "sha256:6c6bbd718de9401b61b8f2ee51b18ff2d148695726d16adad0af184af591d619" -> "sha256:fd7bc4d779d23833aac5fbd9a6dc41b51ddba9e3f9e3c58e1d08e250fbc08427" [label=""];
  "sha256:fd7bc4d779d23833aac5fbd9a6dc41b51ddba9e3f9e3c58e1d08e250fbc08427" -> "sha256:1e2f3dc71578a37a272d5e85554b4241f44ba8fb79ffec8e147e650b8664bc68" [label=""];
  "sha256:1e2f3dc71578a37a272d5e85554b4241f44ba8fb79ffec8e147e650b8664bc68" -> "sha256:9ca2e996022c5c6c2e05890911b2041cd79899c66922dfe32003981c2f87236e" [label=""];
  "sha256:9ca2e996022c5c6c2e05890911b2041cd79899c66922dfe32003981c2f87236e" -> "sha256:06b339e5895981c5d2e026d2799bd94e68db0280ca5e339810d81b42c7b3540e" [label=""];
  "sha256:06b339e5895981c5d2e026d2799bd94e68db0280ca5e339810d81b42c7b3540e" -> "sha256:d9f1103993b59594e1bafeef18ad3e8cef8d6083ed0475ca7799b1e45904fc13" [label=""];
  "sha256:d9f1103993b59594e1bafeef18ad3e8cef8d6083ed0475ca7799b1e45904fc13" -> "sha256:9da91d0c4c111225ff76702b8902d58cbe2c996636e59c38c81806dea8d2e475" [label=""];
  "sha256:9da91d0c4c111225ff76702b8902d58cbe2c996636e59c38c81806dea8d2e475" -> "sha256:116a2160fed3edf6220e97b895dca042d8ec019095aae413ee23ebd13d5ea4de" [label=""];
  "sha256:116a2160fed3edf6220e97b895dca042d8ec019095aae413ee23ebd13d5ea4de" -> "sha256:1826a9a82330f384acdd06c8c6fcc0c217d6af566c9bccbf89c0f63b2258831d" [label=""];
  "sha256:1826a9a82330f384acdd06c8c6fcc0c217d6af566c9bccbf89c0f63b2258831d" -> "sha256:4fd2d29dd4a731333850884403d4213db5e48fdf24559d58e7fb1ead62356515" [label=""];
  "sha256:c5d3041de68ca20334e45f6b2d4944b468319f34fe1e938c4606b6058a368cf9" -> "sha256:4fd2d29dd4a731333850884403d4213db5e48fdf24559d58e7fb1ead62356515" [label=""];
  "sha256:4fd2d29dd4a731333850884403d4213db5e48fdf24559d58e7fb1ead62356515" -> "sha256:26c7d50f84daf654062238ac683fdcd8f99575110cf198c8cf8043765a2f23bd" [label=""];
}

