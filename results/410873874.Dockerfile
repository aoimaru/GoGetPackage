[app/sources/410873874.Dockerfile]
digraph {
  "sha256:2a435387e97fac02fcdf7c47436638cf8c49b7bcb5c1e5ff61c0cdf6882f9a67" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:c2777b6a42790dcd227719ea073e8983d53f80804165ae093814c07e92ffd9fa" [label="copy{src=/license.avastlic, dest=/etc/avast/license.avastlic}" shape="note"];
  "sha256:77b5c6a737427e12784b20a0bcb492404f77d3df8713f90c66ac16b604c89dfb" [label="/bin/sh -c echo \"Install Avast...\"     && echo 'deb http://deb.avast.com/lin/repo debian release' >> /etc/apt/sources.list     && apt-key adv --fetch-keys http://files.avast.com/files/resellers/linux/avast.gpg     && apt-get update -q && apt-get install -y lsb-release avast     && apt-get clean     && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:d3550a4a3189009ee03bc495130e713179272237f56336025f26c243c7d2e53d" [label="/bin/sh -c /var/lib/avast/Setup/avast.vpsupdate" shape="box"];
  "sha256:8ba6ff5e0855d47d37513befc5d0f45a6c260c6fca1f9e8c7a094e340d432ebf" [label="copy{src=/, dest=/go/src/github.com/maliceio/malice-avast}" shape="note"];
  "sha256:8273691a3099a5e7815db2dda39bb6ea136fe9d5c956de4b0e02b2e82668846b" [label="/bin/sh -c buildDeps='build-essential                mercurial                git-core                wget'     && apt-get update -qq     && apt-get install -yq $buildDeps --no-install-recommends     && echo \"Install Go...\"     && ARCH=\"$(dpkg --print-architecture)\"     && wget https://storage.googleapis.com/golang/go$GO_VERSION.linux-$ARCH.tar.gz -O /tmp/go.tar.gz     && tar -C /usr/local -xzf /tmp/go.tar.gz     && export PATH=$PATH:/usr/local/go/bin     && echo \"Building avscan Go binary...\"     && cd /go/src/github.com/maliceio/malice-avast     && export GOPATH=/go     && go version     && go get     && go build -ldflags \"-X main.Version=$(cat VERSION) -X main.BuildTime=$(date -u +%Y%m%d)\" -o /bin/avscan     && echo \"Clean up unnecessary files...\"     && apt-get purge -y --auto-remove $buildDeps     && apt-get clean     && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /go /usr/local/go" shape="box"];
  "sha256:2793fc98c87ac30c901b8e3d2fba84a7e74ee7f7e6d62aac1143a0b9ab38a9b9" [label="copy{src=/eicar.com.txt, dest=/malware/EICAR}" shape="note"];
  "sha256:7268b7ccc169a9968bb7352f9dc9b949f24d473d13ab7c44b26c34d425716ef2" [label="mkdir{path=/malware}" shape="note"];
  "sha256:81a4c90552f00fd2ebf49c08ecf92b7e420232a5c7e1948d81307a32186ceff9" [label="sha256:81a4c90552f00fd2ebf49c08ecf92b7e420232a5c7e1948d81307a32186ceff9" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:c2777b6a42790dcd227719ea073e8983d53f80804165ae093814c07e92ffd9fa" [label=""];
  "sha256:2a435387e97fac02fcdf7c47436638cf8c49b7bcb5c1e5ff61c0cdf6882f9a67" -> "sha256:c2777b6a42790dcd227719ea073e8983d53f80804165ae093814c07e92ffd9fa" [label=""];
  "sha256:c2777b6a42790dcd227719ea073e8983d53f80804165ae093814c07e92ffd9fa" -> "sha256:77b5c6a737427e12784b20a0bcb492404f77d3df8713f90c66ac16b604c89dfb" [label=""];
  "sha256:77b5c6a737427e12784b20a0bcb492404f77d3df8713f90c66ac16b604c89dfb" -> "sha256:d3550a4a3189009ee03bc495130e713179272237f56336025f26c243c7d2e53d" [label=""];
  "sha256:d3550a4a3189009ee03bc495130e713179272237f56336025f26c243c7d2e53d" -> "sha256:8ba6ff5e0855d47d37513befc5d0f45a6c260c6fca1f9e8c7a094e340d432ebf" [label=""];
  "sha256:2a435387e97fac02fcdf7c47436638cf8c49b7bcb5c1e5ff61c0cdf6882f9a67" -> "sha256:8ba6ff5e0855d47d37513befc5d0f45a6c260c6fca1f9e8c7a094e340d432ebf" [label=""];
  "sha256:8ba6ff5e0855d47d37513befc5d0f45a6c260c6fca1f9e8c7a094e340d432ebf" -> "sha256:8273691a3099a5e7815db2dda39bb6ea136fe9d5c956de4b0e02b2e82668846b" [label=""];
  "sha256:8273691a3099a5e7815db2dda39bb6ea136fe9d5c956de4b0e02b2e82668846b" -> "sha256:2793fc98c87ac30c901b8e3d2fba84a7e74ee7f7e6d62aac1143a0b9ab38a9b9" [label=""];
  "sha256:2a435387e97fac02fcdf7c47436638cf8c49b7bcb5c1e5ff61c0cdf6882f9a67" -> "sha256:2793fc98c87ac30c901b8e3d2fba84a7e74ee7f7e6d62aac1143a0b9ab38a9b9" [label=""];
  "sha256:2793fc98c87ac30c901b8e3d2fba84a7e74ee7f7e6d62aac1143a0b9ab38a9b9" -> "sha256:7268b7ccc169a9968bb7352f9dc9b949f24d473d13ab7c44b26c34d425716ef2" [label=""];
  "sha256:7268b7ccc169a9968bb7352f9dc9b949f24d473d13ab7c44b26c34d425716ef2" -> "sha256:81a4c90552f00fd2ebf49c08ecf92b7e420232a5c7e1948d81307a32186ceff9" [label=""];
}

