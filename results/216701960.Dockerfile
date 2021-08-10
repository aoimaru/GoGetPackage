[app/sources/216701960.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:be6811cbe00d5949efb1c70db723e486db8dbd2a24e941f3ea9eb44f9ba4b86c" [label="local://context" shape="ellipse"];
  "sha256:220ef08571f1e02bc7ead0ab45a958e4352abeef675e3a38f2fd267ce7395551" [label="copy{src=/util/texlive.profile, dest=/}" shape="note"];
  "sha256:977a140c0f88f31ffa70fc3ae08fd1f58c5a41eb10d56e1e1433779525f82ff2" [label="/bin/sh -c PACKAGES=\"wget libswitch-perl\"     && apt-get update     && apt-get install -y -qq $PACKAGES --no-install-recommends     && apt-get install -y ca-certificates --no-install-recommends     && wget -qO- http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz |tar xz     && cd install-tl-*     && ./install-tl -profile /texlive.profile     && rm -rf install-tl-*     && apt-get remove --purge -qq $PACKAGES     && apt-get autoremove --purge -qq     && rm -rf /var/lib/apt/lists/*     && mkdir /var/tex" shape="box"];
  "sha256:201bd0e3fa0b2c96b93f80288f3734164ac3e02098091bb3c259f3da2f42b199" [label="docker-image://docker.io/library/golang:1.8-stretch" shape="ellipse"];
  "sha256:313340444e588309a5918aee1a8914435aea61bd027477686eb66c6ed77662b6" [label="mkdir{path=/go/src/github.com/IzakMarais/reporter}" shape="note"];
  "sha256:4df93c0849a01d3714af6e9a256d7d510fdde2554c604401512bc8a1e743e553" [label="/bin/sh -c apt-get update && apt-get -y install make git" shape="box"];
  "sha256:68f663c18f921ca4b2879090b108bf0b65f4e95ef4652ae93c922a86de7bb95f" [label="copy{src=/, dest=/go/src/github.com/IzakMarais/reporter/}" shape="note"];
  "sha256:9abb2f3bdf7559bf45953fecea346ff7932a7a35dbdd41753ad20a115fdfd3c2" [label="/bin/sh -c make build" shape="box"];
  "sha256:b37662ac9546d9664eb5f5406b1033d116e007c8db2fc215cf9dea22fda3f7cd" [label="copy{src=/go/bin/grafana-reporter, dest=/usr/local/bin}" shape="note"];
  "sha256:92ecf5e94b0bc83585c7af5d3d122aea638c52c354ed43e5d5c4094615c62234" [label="sha256:92ecf5e94b0bc83585c7af5d3d122aea638c52c354ed43e5d5c4094615c62234" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:220ef08571f1e02bc7ead0ab45a958e4352abeef675e3a38f2fd267ce7395551" [label=""];
  "sha256:be6811cbe00d5949efb1c70db723e486db8dbd2a24e941f3ea9eb44f9ba4b86c" -> "sha256:220ef08571f1e02bc7ead0ab45a958e4352abeef675e3a38f2fd267ce7395551" [label=""];
  "sha256:220ef08571f1e02bc7ead0ab45a958e4352abeef675e3a38f2fd267ce7395551" -> "sha256:977a140c0f88f31ffa70fc3ae08fd1f58c5a41eb10d56e1e1433779525f82ff2" [label=""];
  "sha256:201bd0e3fa0b2c96b93f80288f3734164ac3e02098091bb3c259f3da2f42b199" -> "sha256:313340444e588309a5918aee1a8914435aea61bd027477686eb66c6ed77662b6" [label=""];
  "sha256:313340444e588309a5918aee1a8914435aea61bd027477686eb66c6ed77662b6" -> "sha256:4df93c0849a01d3714af6e9a256d7d510fdde2554c604401512bc8a1e743e553" [label=""];
  "sha256:4df93c0849a01d3714af6e9a256d7d510fdde2554c604401512bc8a1e743e553" -> "sha256:68f663c18f921ca4b2879090b108bf0b65f4e95ef4652ae93c922a86de7bb95f" [label=""];
  "sha256:be6811cbe00d5949efb1c70db723e486db8dbd2a24e941f3ea9eb44f9ba4b86c" -> "sha256:68f663c18f921ca4b2879090b108bf0b65f4e95ef4652ae93c922a86de7bb95f" [label=""];
  "sha256:68f663c18f921ca4b2879090b108bf0b65f4e95ef4652ae93c922a86de7bb95f" -> "sha256:9abb2f3bdf7559bf45953fecea346ff7932a7a35dbdd41753ad20a115fdfd3c2" [label=""];
  "sha256:977a140c0f88f31ffa70fc3ae08fd1f58c5a41eb10d56e1e1433779525f82ff2" -> "sha256:b37662ac9546d9664eb5f5406b1033d116e007c8db2fc215cf9dea22fda3f7cd" [label=""];
  "sha256:9abb2f3bdf7559bf45953fecea346ff7932a7a35dbdd41753ad20a115fdfd3c2" -> "sha256:b37662ac9546d9664eb5f5406b1033d116e007c8db2fc215cf9dea22fda3f7cd" [label=""];
  "sha256:b37662ac9546d9664eb5f5406b1033d116e007c8db2fc215cf9dea22fda3f7cd" -> "sha256:92ecf5e94b0bc83585c7af5d3d122aea638c52c354ed43e5d5c4094615c62234" [label=""];
}

