[app/sources/160803305.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:587be877872fc74c15cb013236cfd33e3787035528f02f7fa29cc5aa0dfd9702" [label="/bin/sh -c apk add --no-cache openssl file jansson bison python tini su-exec" shape="box"];
  "sha256:2b5e48d00f7fc4cf0150ab430a6fdf2d418acd30880408219c7083e3fd05f9f4" [label="/bin/sh -c apk add --no-cache -t .build-deps py-setuptools   openssl-dev   jansson-dev   python-dev   build-base   libc-dev   file-dev   automake   autoconf   libtool   flex   git   git   && set -x   && echo \"Install Yara from source...\"   && cd /tmp/   && git clone --recursive --branch v$YARA_VERSION https://github.com/VirusTotal/yara.git   && cd /tmp/yara   && ./bootstrap.sh   && sync   && ./configure --with-crypto   --enable-magic   --enable-cuckoo   --enable-dotnet   && make   && make install   && echo \"Install yara-python...\"   && cd /tmp/   && git clone --recursive --branch v$YARA_PY_VERSION https://github.com/VirusTotal/yara-python   && cd yara-python   && python setup.py build --dynamic-linking   && python setup.py install   && echo \"Make test_rule...\"   && mkdir /rules   && echo \"rule dummy { condition: true }\" > /rules/test_rule   && rm -rf /tmp/*   && apk del --purge .build-deps" shape="box"];
  "sha256:11dc5f5c9ac2d7087f1b42ef0b5c338b422c8669659760b69c6db220317c8bf2" [label="mkdir{path=/malware}" shape="note"];
  "sha256:61b1334e4caa7cacff78370aec8e55727aa7b3de9dc6593e1c5f86232bb89812" [label="sha256:61b1334e4caa7cacff78370aec8e55727aa7b3de9dc6593e1c5f86232bb89812" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:587be877872fc74c15cb013236cfd33e3787035528f02f7fa29cc5aa0dfd9702" [label=""];
  "sha256:587be877872fc74c15cb013236cfd33e3787035528f02f7fa29cc5aa0dfd9702" -> "sha256:2b5e48d00f7fc4cf0150ab430a6fdf2d418acd30880408219c7083e3fd05f9f4" [label=""];
  "sha256:2b5e48d00f7fc4cf0150ab430a6fdf2d418acd30880408219c7083e3fd05f9f4" -> "sha256:11dc5f5c9ac2d7087f1b42ef0b5c338b422c8669659760b69c6db220317c8bf2" [label=""];
  "sha256:11dc5f5c9ac2d7087f1b42ef0b5c338b422c8669659760b69c6db220317c8bf2" -> "sha256:61b1334e4caa7cacff78370aec8e55727aa7b3de9dc6593e1c5f86232bb89812" [label=""];
}

