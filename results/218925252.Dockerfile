[app/sources/218925252.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:f0e9488c5ad08d30f967068ba8473f8099ca20a576ad04be0c3c6d88ec6d7d13" [label="/bin/sh -c apt-get update \t&& DEBIAN_FRONTEND=noninteractive apt-get -y --quiet --no-install-recommends install \t\tbuild-essential \t\tca-certificates \t\tgit \t\tgosu \t\tlibcurl4-openssl-dev \t\tlibfontconfig \t\tnodejs \t\tnodejs-legacy \t\tnpm \t\truby-dev \t\tzlib1g-dev \t&& apt-get -y autoremove \t&& apt-get clean autoclean \t&& rm -rf /var/lib/apt/lists/{apt,dpkg,cache,log} /tmp/* /var/tmp/*" shape="box"];
  "sha256:fec3abbc251b0731526f38c0442b56bc18091a021cf0f51caa8ea73874f3a4ac" [label="/bin/sh -c npm config set registry http://registry.npmjs.org/ \t&& npm install gitbook-cli -g" shape="box"];
  "sha256:660109d37570f8e0623d585acbf84c57d50cc66db3064c859e09eff2f0c2ffe8" [label="/bin/sh -c gem install html-proofer" shape="box"];
  "sha256:9a3be32d870e96f234dec63cbdaa25ce8f4fbf0b7f4ce47183b257be33da825a" [label="/bin/sh -c useradd --shell /bin/bash -u 1001 -c \"\" -m user && usermod -a -G dialout user" shape="box"];
  "sha256:c5502fc3f2d63380184c186f9689de429647b72fa4e8ce26d3fa30c05269cb69" [label="local://context" shape="ellipse"];
  "sha256:fab9da20fcd33e9082438f95f8593dbd7e31d09060c238946698bde0c0e72f1d" [label="copy{src=/scripts/entrypoint.sh, dest=/usr/local/bin/entrypoint.sh}" shape="note"];
  "sha256:a648b2e90de6f027cd679ebbc094b4b5b23eae96bfb2da1d61cee63a8fe6af9d" [label="sha256:a648b2e90de6f027cd679ebbc094b4b5b23eae96bfb2da1d61cee63a8fe6af9d" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:f0e9488c5ad08d30f967068ba8473f8099ca20a576ad04be0c3c6d88ec6d7d13" [label=""];
  "sha256:f0e9488c5ad08d30f967068ba8473f8099ca20a576ad04be0c3c6d88ec6d7d13" -> "sha256:fec3abbc251b0731526f38c0442b56bc18091a021cf0f51caa8ea73874f3a4ac" [label=""];
  "sha256:fec3abbc251b0731526f38c0442b56bc18091a021cf0f51caa8ea73874f3a4ac" -> "sha256:660109d37570f8e0623d585acbf84c57d50cc66db3064c859e09eff2f0c2ffe8" [label=""];
  "sha256:660109d37570f8e0623d585acbf84c57d50cc66db3064c859e09eff2f0c2ffe8" -> "sha256:9a3be32d870e96f234dec63cbdaa25ce8f4fbf0b7f4ce47183b257be33da825a" [label=""];
  "sha256:9a3be32d870e96f234dec63cbdaa25ce8f4fbf0b7f4ce47183b257be33da825a" -> "sha256:fab9da20fcd33e9082438f95f8593dbd7e31d09060c238946698bde0c0e72f1d" [label=""];
  "sha256:c5502fc3f2d63380184c186f9689de429647b72fa4e8ce26d3fa30c05269cb69" -> "sha256:fab9da20fcd33e9082438f95f8593dbd7e31d09060c238946698bde0c0e72f1d" [label=""];
  "sha256:fab9da20fcd33e9082438f95f8593dbd7e31d09060c238946698bde0c0e72f1d" -> "sha256:a648b2e90de6f027cd679ebbc094b4b5b23eae96bfb2da1d61cee63a8fe6af9d" [label=""];
}

