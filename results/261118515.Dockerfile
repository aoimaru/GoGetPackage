[app/sources/261118515.Dockerfile]
digraph {
  "sha256:deece4f961a00054b4a1e68918ec9356c5666cba6bf187a26ee634b2991f93d3" [label="docker-image://docker.io/library/openjdk:8u212-jdk-alpine3.9" shape="ellipse"];
  "sha256:3c51083ecde977fbb560c6933182702c001d63117ecd05227cb7835b232861bf" [label="/bin/sh -c echo \"http_proxy: $http_proxy\" &&     echo \"https_proxy: $https_proxy\" &&     apk add --no-cache         curl         su-exec         tini" shape="box"];
  "sha256:7359f6f3d7144c9aecbb3b8719dc9f36d128abcdae3d28db17f8d4dfa5e2aad3" [label="mkdir{path=/stroom-proxy}" shape="note"];
  "sha256:4e2483131fc00be7efa111717df85a8df723777555de6da53f9541612d00ed14" [label="/bin/sh -c addgroup -g 1000 -S proxy &&     adduser -u 1000 -S -s /bin/false -D -G proxy proxy &&     mkdir -p /stroom-proxy &&     mkdir -p /stroom-proxy/certs &&     mkdir -p /stroom-proxy/config &&     mkdir -p /stroom-proxy/content &&     mkdir -p /stroom-proxy/logs/access &&     mkdir -p /stroom-proxy/logs/receive &&     mkdir -p /stroom-proxy/logs/send &&     mkdir -p /stroom-proxy/logs/app &&     mkdir -p /stroom-proxy/repo &&     chown -R proxy:proxy /stroom-proxy" shape="box"];
  "sha256:4150b14fd8fe32579b9251f87c98437313c3d8acc2ddb3e20a5c8e8c9b899b35" [label="local://context" shape="ellipse"];
  "sha256:49e82d691864ba16496560e48536a8107151b1c53de5d2dae729d4df7d593566" [label="copy{src=/*.sh, dest=/stroom-proxy/}" shape="note"];
  "sha256:8b064679d3cb838aab48e47653d37fbb6074ddfc61ad27c2eb2c48af8ed8fd60" [label="copy{src=/build/proxy-prod.yml, dest=/stroom-proxy/config/config.yml}" shape="note"];
  "sha256:e26db2f011a91032847be7b3662429027c7fede381a0ab5b941224307fd99cdb" [label="copy{src=/build/stroom-app-all.jar, dest=/stroom-app-all.jar}" shape="note"];
  "sha256:0105dc8447ae73ae5dfd4fd68a64d75c2f37b431843e8c7fb65e6e7ec9524985" [label="copy{src=/stroom-app-all.jar, dest=/stroom-proxy/}" shape="note"];
  "sha256:b4555e8383075acefc824b08257c3a33d67ca380f40a150735de9c7dc052fc35" [label="sha256:b4555e8383075acefc824b08257c3a33d67ca380f40a150735de9c7dc052fc35" shape="plaintext"];
  "sha256:deece4f961a00054b4a1e68918ec9356c5666cba6bf187a26ee634b2991f93d3" -> "sha256:3c51083ecde977fbb560c6933182702c001d63117ecd05227cb7835b232861bf" [label=""];
  "sha256:3c51083ecde977fbb560c6933182702c001d63117ecd05227cb7835b232861bf" -> "sha256:7359f6f3d7144c9aecbb3b8719dc9f36d128abcdae3d28db17f8d4dfa5e2aad3" [label=""];
  "sha256:7359f6f3d7144c9aecbb3b8719dc9f36d128abcdae3d28db17f8d4dfa5e2aad3" -> "sha256:4e2483131fc00be7efa111717df85a8df723777555de6da53f9541612d00ed14" [label=""];
  "sha256:4e2483131fc00be7efa111717df85a8df723777555de6da53f9541612d00ed14" -> "sha256:49e82d691864ba16496560e48536a8107151b1c53de5d2dae729d4df7d593566" [label=""];
  "sha256:4150b14fd8fe32579b9251f87c98437313c3d8acc2ddb3e20a5c8e8c9b899b35" -> "sha256:49e82d691864ba16496560e48536a8107151b1c53de5d2dae729d4df7d593566" [label=""];
  "sha256:49e82d691864ba16496560e48536a8107151b1c53de5d2dae729d4df7d593566" -> "sha256:8b064679d3cb838aab48e47653d37fbb6074ddfc61ad27c2eb2c48af8ed8fd60" [label=""];
  "sha256:4150b14fd8fe32579b9251f87c98437313c3d8acc2ddb3e20a5c8e8c9b899b35" -> "sha256:8b064679d3cb838aab48e47653d37fbb6074ddfc61ad27c2eb2c48af8ed8fd60" [label=""];
  "sha256:4150b14fd8fe32579b9251f87c98437313c3d8acc2ddb3e20a5c8e8c9b899b35" -> "sha256:e26db2f011a91032847be7b3662429027c7fede381a0ab5b941224307fd99cdb" [label=""];
  "sha256:8b064679d3cb838aab48e47653d37fbb6074ddfc61ad27c2eb2c48af8ed8fd60" -> "sha256:0105dc8447ae73ae5dfd4fd68a64d75c2f37b431843e8c7fb65e6e7ec9524985" [label=""];
  "sha256:e26db2f011a91032847be7b3662429027c7fede381a0ab5b941224307fd99cdb" -> "sha256:0105dc8447ae73ae5dfd4fd68a64d75c2f37b431843e8c7fb65e6e7ec9524985" [label=""];
  "sha256:0105dc8447ae73ae5dfd4fd68a64d75c2f37b431843e8c7fb65e6e7ec9524985" -> "sha256:b4555e8383075acefc824b08257c3a33d67ca380f40a150735de9c7dc052fc35" [label=""];
}

