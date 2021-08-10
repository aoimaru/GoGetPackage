[app/sources/352708527.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:a4fea8d2b72ed8bf4c885eb1b9268389ecb10faf9211970484e7c2b7286cf89b" [label="/bin/sh -c apt-get update && apt-get upgrade && apt-get install -y curl git" shape="box"];
  "sha256:13572ae5a8ae735a764217dd66b4a91a9840d0a7afff3b23620317d9d660533d" [label="/bin/sh -c /bin/bash -c \"source <(curl https://raw.githubusercontent.com/mpicbg-scicomp/tissue_miner/master/installation/ubuntu/install_dependencies.sh | sed 's/sudo//g')\"  ## bump2" shape="box"];
  "sha256:9c690509a07b382ec6dfa7e228d21c66adc03aaac43790d501873abff34bebfb" [label="/bin/sh -c mkdir /tissue_miner && git clone https://github.com/mpicbg-scicomp/tissue_miner /tissue_miner ## bump" shape="box"];
  "sha256:f33f83ceb95eea8c55b5a3c608f761f4ca48c22a67c1a66209fa67c987ec939c" [label="/bin/sh -c /bin/bash -c \"export TM_HOME='/tissue_miner'; /tissue_miner/Setup.R | tee ${TM_HOME}/.tm_install_rsetup.log\"" shape="box"];
  "sha256:49a862f045a8be2111aa5f5f4b5d4c3c1b9dc514d64bc27f9fbc6be0a1aec99c" [label="/bin/sh -c cd /tissue_miner/parser &&  make" shape="box"];
  "sha256:b75b18cca5f08758da58175545b264ac5ef2269d313a48d05ae486c9a992e4b7" [label="local://context" shape="ellipse"];
  "sha256:1f25edf130e00205626c107fafd822a475367a82a876cb24973a9072b6d463f8" [label="copy{src=/docker_bash_profile.sh, dest=/.bash_profile}" shape="note"];
  "sha256:23f137078f5e19380f18cb6e1962272d84dcb813a948d5c0f953d8fd75cd40cc" [label="copy{src=/docker_entrypoint.sh, dest=/}" shape="note"];
  "sha256:06793dd62883d68c52b125e668f8a35beeba6bb6856575269f2218bcd87e3364" [label="sha256:06793dd62883d68c52b125e668f8a35beeba6bb6856575269f2218bcd87e3364" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:a4fea8d2b72ed8bf4c885eb1b9268389ecb10faf9211970484e7c2b7286cf89b" [label=""];
  "sha256:a4fea8d2b72ed8bf4c885eb1b9268389ecb10faf9211970484e7c2b7286cf89b" -> "sha256:13572ae5a8ae735a764217dd66b4a91a9840d0a7afff3b23620317d9d660533d" [label=""];
  "sha256:13572ae5a8ae735a764217dd66b4a91a9840d0a7afff3b23620317d9d660533d" -> "sha256:9c690509a07b382ec6dfa7e228d21c66adc03aaac43790d501873abff34bebfb" [label=""];
  "sha256:9c690509a07b382ec6dfa7e228d21c66adc03aaac43790d501873abff34bebfb" -> "sha256:f33f83ceb95eea8c55b5a3c608f761f4ca48c22a67c1a66209fa67c987ec939c" [label=""];
  "sha256:f33f83ceb95eea8c55b5a3c608f761f4ca48c22a67c1a66209fa67c987ec939c" -> "sha256:49a862f045a8be2111aa5f5f4b5d4c3c1b9dc514d64bc27f9fbc6be0a1aec99c" [label=""];
  "sha256:49a862f045a8be2111aa5f5f4b5d4c3c1b9dc514d64bc27f9fbc6be0a1aec99c" -> "sha256:1f25edf130e00205626c107fafd822a475367a82a876cb24973a9072b6d463f8" [label=""];
  "sha256:b75b18cca5f08758da58175545b264ac5ef2269d313a48d05ae486c9a992e4b7" -> "sha256:1f25edf130e00205626c107fafd822a475367a82a876cb24973a9072b6d463f8" [label=""];
  "sha256:1f25edf130e00205626c107fafd822a475367a82a876cb24973a9072b6d463f8" -> "sha256:23f137078f5e19380f18cb6e1962272d84dcb813a948d5c0f953d8fd75cd40cc" [label=""];
  "sha256:b75b18cca5f08758da58175545b264ac5ef2269d313a48d05ae486c9a992e4b7" -> "sha256:23f137078f5e19380f18cb6e1962272d84dcb813a948d5c0f953d8fd75cd40cc" [label=""];
  "sha256:23f137078f5e19380f18cb6e1962272d84dcb813a948d5c0f953d8fd75cd40cc" -> "sha256:06793dd62883d68c52b125e668f8a35beeba6bb6856575269f2218bcd87e3364" [label=""];
}

