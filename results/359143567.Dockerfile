[app/sources/359143567.Dockerfile]
digraph {
  "sha256:0ca4c3a24c68017c097ab34d3e9f107add791331cdd48c863bd2d7f4adaa651d" [label="docker-image://docker.io/bravissimolabs/baseimage:latest" shape="ellipse"];
  "sha256:089d4a3fbda188a3326685d549209498e5b137fb9d492eb57c44b7316961111d" [label="/bin/sh -c add-apt-repository -y ppa:git-core/ppa;     curl -sL https://deb.nodesource.com/setup | sudo bash -" shape="box"];
  "sha256:861b432f874110e9ac8af270af5c3950d712cec98648db6c4e9e04b0334edb58" [label="/bin/sh -c apt-get install -yq     git     expect-dev     nodejs" shape="box"];
  "sha256:961fb5d40d116b23d5eb993b83346f08a6702b53d1c1404a15c78b743e7b8545" [label="/bin/sh -c npm install -g npm &&     npm install -g n;     n 0.12;" shape="box"];
  "sha256:f258b473d32054f04fb68adfbc9a9baf8273c6eabf15ef6af62afab679592715" [label="local://context" shape="ellipse"];
  "sha256:98a1ac97555caae1b074ac944fe5c3728330aaa5900773f5cef4ee679da685dc" [label="copy{src=/bin, dest=/usr/local/bin}" shape="note"];
  "sha256:b02fa281738245fa81ddc836e761a863cebb97ef1f2ed828d0dd33741a3080e7" [label="sha256:b02fa281738245fa81ddc836e761a863cebb97ef1f2ed828d0dd33741a3080e7" shape="plaintext"];
  "sha256:0ca4c3a24c68017c097ab34d3e9f107add791331cdd48c863bd2d7f4adaa651d" -> "sha256:089d4a3fbda188a3326685d549209498e5b137fb9d492eb57c44b7316961111d" [label=""];
  "sha256:089d4a3fbda188a3326685d549209498e5b137fb9d492eb57c44b7316961111d" -> "sha256:861b432f874110e9ac8af270af5c3950d712cec98648db6c4e9e04b0334edb58" [label=""];
  "sha256:861b432f874110e9ac8af270af5c3950d712cec98648db6c4e9e04b0334edb58" -> "sha256:961fb5d40d116b23d5eb993b83346f08a6702b53d1c1404a15c78b743e7b8545" [label=""];
  "sha256:961fb5d40d116b23d5eb993b83346f08a6702b53d1c1404a15c78b743e7b8545" -> "sha256:98a1ac97555caae1b074ac944fe5c3728330aaa5900773f5cef4ee679da685dc" [label=""];
  "sha256:f258b473d32054f04fb68adfbc9a9baf8273c6eabf15ef6af62afab679592715" -> "sha256:98a1ac97555caae1b074ac944fe5c3728330aaa5900773f5cef4ee679da685dc" [label=""];
  "sha256:98a1ac97555caae1b074ac944fe5c3728330aaa5900773f5cef4ee679da685dc" -> "sha256:b02fa281738245fa81ddc836e761a863cebb97ef1f2ed828d0dd33741a3080e7" [label=""];
}

