[app/sources/320093833.Dockerfile]
digraph {
  "sha256:db0f953694b086a94250e2bfa81759760453ac59f005ea69372f314d93893d6f" [label="docker-image://docker.io/webdevops/php:debian-8@sha256:eec0703791b9c1a0639d60e637fe3c62fb76fbdf0a21c42902cb1efc34ffcc18" shape="ellipse"];
  "sha256:73ce32d9e57b36bf4884c54791073b9c96049f53986d7c1f5e6e2865f2a1f58e" [label="local://context" shape="ellipse"];
  "sha256:7b1fc7ddb3c0b068a1225fb7ae24eff26412a5e9b8f65e43da9994ad0b4c202e" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:c0e88f9d8f84e63c4b0e4a1bc540fda68b3cc3cf11dd7b6fcb26c4b02371c2ea" [label="/bin/sh -c set -x     && apt-install         gnupg     && wget -O - https://packagecloud.io/gpg.key | apt-key add -     && echo \"deb https://packages.blackfire.io/debian any main\" | tee /etc/apt/sources.list.d/blackfire.list     && apt-install         graphviz         php5-xdebug         blackfire-php         blackfire-agent         nano         vim     && docker-service enable syslog     && docker-service enable postfix     && docker-service enable ssh     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:9aa09c15ef093efde25e367440fa4e4cf320e8aeb2deca5096c3800a7c3311b2" [label="sha256:9aa09c15ef093efde25e367440fa4e4cf320e8aeb2deca5096c3800a7c3311b2" shape="plaintext"];
  "sha256:db0f953694b086a94250e2bfa81759760453ac59f005ea69372f314d93893d6f" -> "sha256:7b1fc7ddb3c0b068a1225fb7ae24eff26412a5e9b8f65e43da9994ad0b4c202e" [label=""];
  "sha256:73ce32d9e57b36bf4884c54791073b9c96049f53986d7c1f5e6e2865f2a1f58e" -> "sha256:7b1fc7ddb3c0b068a1225fb7ae24eff26412a5e9b8f65e43da9994ad0b4c202e" [label=""];
  "sha256:7b1fc7ddb3c0b068a1225fb7ae24eff26412a5e9b8f65e43da9994ad0b4c202e" -> "sha256:c0e88f9d8f84e63c4b0e4a1bc540fda68b3cc3cf11dd7b6fcb26c4b02371c2ea" [label=""];
  "sha256:c0e88f9d8f84e63c4b0e4a1bc540fda68b3cc3cf11dd7b6fcb26c4b02371c2ea" -> "sha256:9aa09c15ef093efde25e367440fa4e4cf320e8aeb2deca5096c3800a7c3311b2" [label=""];
}

