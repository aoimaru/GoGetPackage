[app/sources/161872309.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:e2dd23e1f980afbfa6d1d8ccca9b7dcfde0fd9326b7ee634abd2ff94ca804373" [label="/bin/sh -c apk update &&     apk upgrade &&     apk add --no-cache gcc gnupg curl wget ruby ruby-dev bash procps musl-dev make         zlib zlib-dev openssl openssl-dev libssl1.0         mongodb postfix git openssh build-base libffi-dev         libxslt-dev libxml2-dev libxml2 libxml2-dev libxslt-dev &&     gem install rake bundler -N" shape="box"];
  "sha256:9f9724ff51b35e274fb096f0e9a8f12032c483c0b0f5dfedd67467e43fb33076" [label="/bin/sh -c mkdir -p /usr/local/share/Cartero &&     git clone https://github.com/section9labs/Cartero /usr/local/share/Cartero &&     echo \"export EDITOR=vim\" >> ~/.bash_profile &&     cd /usr/local/share/Cartero &&     bundle install &&     echo -e \"#\\0041/bin/bash\\n/usr/local/share/Cartero/bin/cartero \\\"\\$@\\\"\" > /usr/local/bin/cartero &&     chmod +x /usr/local/bin/cartero &&     echo \"[[ -s /usr/local/share/Cartero/data/scripts/CarteroComplete.sh ]] && source /usr/local/share/Cartero/data/scripts/CarteroComplete.sh\" >> ~/.bash_profile" shape="box"];
  "sha256:15c0821c7f58cfd08040ba99ad2b24cb49f55ec025a5b6fdfd22527c6a2f2219" [label="sha256:15c0821c7f58cfd08040ba99ad2b24cb49f55ec025a5b6fdfd22527c6a2f2219" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:e2dd23e1f980afbfa6d1d8ccca9b7dcfde0fd9326b7ee634abd2ff94ca804373" [label=""];
  "sha256:e2dd23e1f980afbfa6d1d8ccca9b7dcfde0fd9326b7ee634abd2ff94ca804373" -> "sha256:9f9724ff51b35e274fb096f0e9a8f12032c483c0b0f5dfedd67467e43fb33076" [label=""];
  "sha256:9f9724ff51b35e274fb096f0e9a8f12032c483c0b0f5dfedd67467e43fb33076" -> "sha256:15c0821c7f58cfd08040ba99ad2b24cb49f55ec025a5b6fdfd22527c6a2f2219" [label=""];
}

