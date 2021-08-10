[app/sources/210872743.Dockerfile]
digraph {
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" [label="docker-image://docker.io/library/buildpack-deps:jessie" shape="ellipse"];
  "sha256:c4fb52723b20e28d40262bcc0986de0ea3b5ef264c3a72ddc280159e355e43fb" [label="/bin/sh -c apt-get update && apt-get install -y     python3-pip     python-dev     pkg-config     libpng-dev     libfreetype6-dev     libblas-dev     liblapack-dev     lib32ncurses5-dev     gfortran     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:cd7b827a5d9f7dfee9beafc850077877881b1023e1038caef06e96fe441e9ad8" [label="/bin/sh -c pip3 install --upgrade pip" shape="box"];
  "sha256:ecf7b3caf1df1dc9ae03aa9e181ecf4069d726ded12cb41b9f7ec2ceb49e1add" [label="local://context" shape="ellipse"];
  "sha256:95d2dd4db3cdc3dfdfeb3de29ff0c3fce0ff6cde8b3e45314dacd639dba99c0f" [label="copy{src=/requirements.txt, dest=/tmp/}" shape="note"];
  "sha256:31d7eb880509c2f17a39886f91be89adca560fce14891f79ba3637ff94585e21" [label="/bin/sh -c pip3 install -r /tmp/requirements.txt --no-cache-dir --ignore-installed" shape="box"];
  "sha256:60b754cb2fec6b0427569295eb4066ce27cc0ae4ebb5b15a5da2925a806124a7" [label="/bin/sh -c python3 -c \"import matplotlib; import matplotlib.pyplot\"" shape="box"];
  "sha256:fc06fe55c91af5af57cd30f5c7f35145541c8ed7a93b7a030f61a759ef6535f5" [label="copy{src=/, dest=/aurum}" shape="note"];
  "sha256:87c66c2d0c34628bf0db8e8907b375b64fce4adc3eda5045ee55cce419878c62" [label="mkdir{path=/aurum}" shape="note"];
  "sha256:97ba29530b5d0508f62a06ac84c5b6e1f39aca512636ca22665b0547a442c051" [label="sha256:97ba29530b5d0508f62a06ac84c5b6e1f39aca512636ca22665b0547a442c051" shape="plaintext"];
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" -> "sha256:c4fb52723b20e28d40262bcc0986de0ea3b5ef264c3a72ddc280159e355e43fb" [label=""];
  "sha256:c4fb52723b20e28d40262bcc0986de0ea3b5ef264c3a72ddc280159e355e43fb" -> "sha256:cd7b827a5d9f7dfee9beafc850077877881b1023e1038caef06e96fe441e9ad8" [label=""];
  "sha256:cd7b827a5d9f7dfee9beafc850077877881b1023e1038caef06e96fe441e9ad8" -> "sha256:95d2dd4db3cdc3dfdfeb3de29ff0c3fce0ff6cde8b3e45314dacd639dba99c0f" [label=""];
  "sha256:ecf7b3caf1df1dc9ae03aa9e181ecf4069d726ded12cb41b9f7ec2ceb49e1add" -> "sha256:95d2dd4db3cdc3dfdfeb3de29ff0c3fce0ff6cde8b3e45314dacd639dba99c0f" [label=""];
  "sha256:95d2dd4db3cdc3dfdfeb3de29ff0c3fce0ff6cde8b3e45314dacd639dba99c0f" -> "sha256:31d7eb880509c2f17a39886f91be89adca560fce14891f79ba3637ff94585e21" [label=""];
  "sha256:31d7eb880509c2f17a39886f91be89adca560fce14891f79ba3637ff94585e21" -> "sha256:60b754cb2fec6b0427569295eb4066ce27cc0ae4ebb5b15a5da2925a806124a7" [label=""];
  "sha256:60b754cb2fec6b0427569295eb4066ce27cc0ae4ebb5b15a5da2925a806124a7" -> "sha256:fc06fe55c91af5af57cd30f5c7f35145541c8ed7a93b7a030f61a759ef6535f5" [label=""];
  "sha256:ecf7b3caf1df1dc9ae03aa9e181ecf4069d726ded12cb41b9f7ec2ceb49e1add" -> "sha256:fc06fe55c91af5af57cd30f5c7f35145541c8ed7a93b7a030f61a759ef6535f5" [label=""];
  "sha256:fc06fe55c91af5af57cd30f5c7f35145541c8ed7a93b7a030f61a759ef6535f5" -> "sha256:87c66c2d0c34628bf0db8e8907b375b64fce4adc3eda5045ee55cce419878c62" [label=""];
  "sha256:87c66c2d0c34628bf0db8e8907b375b64fce4adc3eda5045ee55cce419878c62" -> "sha256:97ba29530b5d0508f62a06ac84c5b6e1f39aca512636ca22665b0547a442c051" [label=""];
}

