[app/sources/293282766.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:13971322208a34f5248c3df1278354ab5a7b11ca61e37b888180762ec6e0069c" [label="/bin/sh -c apk add --no-cache python3" shape="box"];
  "sha256:3eee10388521b3e67d52cee0cef9bbee46288712e39de2bac490af4ed929964f" [label="/bin/sh -c apk add --no-cache --virtual build-dependencies                       curl                                                fontconfig                                          gcc                                                 libffi-dev                                          musl-dev                                            openssl-dev                                         python3-dev" shape="box"];
  "sha256:161e405a95ee43d5f1e7614bc9305330817bcb73085ed568b7f8b6e6e65659f7" [label="/bin/sh -c mkdir -p /usr/share" shape="box"];
  "sha256:4570803544e162c9ffbde67df4d66b95a1233402eb14ec0c0e731004ed3c4818" [label="mkdir{path=/usr/share}" shape="note"];
  "sha256:4d2edf9017ff2b102b9f93fea92526bc90878accfa35d86aca514f397cfe0004" [label="/bin/sh -c curl -L https://github.com/Overbryd/docker-phantomjs-alpine/releases/download/2.11/phantomjs-alpine-x86_64.tar.bz2 | tar xj  && ln -s /usr/share/phantomjs/phantomjs /usr/bin/phantomjs  && phantomjs --version" shape="box"];
  "sha256:bcd007b4fdff642d7f3cdf1da5d85e62a275a231aba12798d9154deac699a656" [label="local://context" shape="ellipse"];
  "sha256:63817504fe273232aea657ed00b4b247aef9c8b68ed55ac63b09d94367ec3dc9" [label="copy{src=/privacy_bot, dest=/tmp/privacy_bot}" shape="note"];
  "sha256:d11ad8966bb30b4802dafff2ed5f22159567662be83a0fbd1edc6655925d18ef" [label="copy{src=/setup.py, dest=/tmp/}" shape="note"];
  "sha256:6b1cea399faae4d45ba6110867980d50b60bf52a90f0d2151fc1601390a56aac" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:77d5f6da402abafe5c120c72b5454a771e38235ae2db17b6b865f3c997e53f13" [label="/bin/sh -c python3 -m ensurepip                             && pip3 install --upgrade pip setuptools            && pip3 install cython                              && pip3 install requests[security]                  && pip3 install -e ." shape="box"];
  "sha256:ea60b5b8854012ed07f727e2d8b14cb09cba34393faddf92b6f8953c9c342d67" [label="/bin/sh -c apk del build-dependencies                       && rm -rv /usr/lib/python*/ensurepip                && rm -rv /root/.cache" shape="box"];
  "sha256:3bccbbbdec3adf057fbd452866c348f3bc440b8290f88cb8f7febe61f9a0fde1" [label="sha256:3bccbbbdec3adf057fbd452866c348f3bc440b8290f88cb8f7febe61f9a0fde1" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:13971322208a34f5248c3df1278354ab5a7b11ca61e37b888180762ec6e0069c" [label=""];
  "sha256:13971322208a34f5248c3df1278354ab5a7b11ca61e37b888180762ec6e0069c" -> "sha256:3eee10388521b3e67d52cee0cef9bbee46288712e39de2bac490af4ed929964f" [label=""];
  "sha256:3eee10388521b3e67d52cee0cef9bbee46288712e39de2bac490af4ed929964f" -> "sha256:161e405a95ee43d5f1e7614bc9305330817bcb73085ed568b7f8b6e6e65659f7" [label=""];
  "sha256:161e405a95ee43d5f1e7614bc9305330817bcb73085ed568b7f8b6e6e65659f7" -> "sha256:4570803544e162c9ffbde67df4d66b95a1233402eb14ec0c0e731004ed3c4818" [label=""];
  "sha256:4570803544e162c9ffbde67df4d66b95a1233402eb14ec0c0e731004ed3c4818" -> "sha256:4d2edf9017ff2b102b9f93fea92526bc90878accfa35d86aca514f397cfe0004" [label=""];
  "sha256:4d2edf9017ff2b102b9f93fea92526bc90878accfa35d86aca514f397cfe0004" -> "sha256:63817504fe273232aea657ed00b4b247aef9c8b68ed55ac63b09d94367ec3dc9" [label=""];
  "sha256:bcd007b4fdff642d7f3cdf1da5d85e62a275a231aba12798d9154deac699a656" -> "sha256:63817504fe273232aea657ed00b4b247aef9c8b68ed55ac63b09d94367ec3dc9" [label=""];
  "sha256:63817504fe273232aea657ed00b4b247aef9c8b68ed55ac63b09d94367ec3dc9" -> "sha256:d11ad8966bb30b4802dafff2ed5f22159567662be83a0fbd1edc6655925d18ef" [label=""];
  "sha256:bcd007b4fdff642d7f3cdf1da5d85e62a275a231aba12798d9154deac699a656" -> "sha256:d11ad8966bb30b4802dafff2ed5f22159567662be83a0fbd1edc6655925d18ef" [label=""];
  "sha256:d11ad8966bb30b4802dafff2ed5f22159567662be83a0fbd1edc6655925d18ef" -> "sha256:6b1cea399faae4d45ba6110867980d50b60bf52a90f0d2151fc1601390a56aac" [label=""];
  "sha256:6b1cea399faae4d45ba6110867980d50b60bf52a90f0d2151fc1601390a56aac" -> "sha256:77d5f6da402abafe5c120c72b5454a771e38235ae2db17b6b865f3c997e53f13" [label=""];
  "sha256:77d5f6da402abafe5c120c72b5454a771e38235ae2db17b6b865f3c997e53f13" -> "sha256:ea60b5b8854012ed07f727e2d8b14cb09cba34393faddf92b6f8953c9c342d67" [label=""];
  "sha256:ea60b5b8854012ed07f727e2d8b14cb09cba34393faddf92b6f8953c9c342d67" -> "sha256:3bccbbbdec3adf057fbd452866c348f3bc440b8290f88cb8f7febe61f9a0fde1" [label=""];
}

