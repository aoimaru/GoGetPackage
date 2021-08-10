[app/sources/252773767.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:a60dc648fa683e26c071e7174d61f06681f06ad455649500775c575d0b8b31f2" [label="/bin/sh -c export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get install \\--no-install-recommends --no-install-suggests -y curl ca-certificates unzip && export BASE_URL=https://www.browserstack.com/browserstack-local && cd /tmp && curl -sLO \"$BASE_URL\"/BrowserStackLocal-linux-x64.zip && unzip BrowserStackLocal-*.zip && rm BrowserStackLocal-*.zip && chmod +x BrowserStackLocal && mv BrowserStackLocal /usr/local/bin/ && apt-get purge -y curl ca-certificates unzip && apt-get autoremove -y && apt-get clean && rm -rf /tmp/* /usr/share/doc/* /var/cache/* /var/lib/apt/lists/* /var/tmp/*" shape="box"];
  "sha256:171522f597493a174373aa8c24d7274cfd4c181acb6567337abdfc9c07520fd8" [label="/bin/sh -c useradd -u 1000 -m -U browserstack" shape="box"];
  "sha256:f6d737d50ecb25c65b25c42581a04ecbeddfeef2229c8c62458fc40968305190" [label="mkdir{path=/home/browserstack}" shape="note"];
  "sha256:5ae9ba579950afd69c6d0bee194f2e4a80153d71fc0909d850a7c95d20561887" [label="sha256:5ae9ba579950afd69c6d0bee194f2e4a80153d71fc0909d850a7c95d20561887" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:a60dc648fa683e26c071e7174d61f06681f06ad455649500775c575d0b8b31f2" [label=""];
  "sha256:a60dc648fa683e26c071e7174d61f06681f06ad455649500775c575d0b8b31f2" -> "sha256:171522f597493a174373aa8c24d7274cfd4c181acb6567337abdfc9c07520fd8" [label=""];
  "sha256:171522f597493a174373aa8c24d7274cfd4c181acb6567337abdfc9c07520fd8" -> "sha256:f6d737d50ecb25c65b25c42581a04ecbeddfeef2229c8c62458fc40968305190" [label=""];
  "sha256:f6d737d50ecb25c65b25c42581a04ecbeddfeef2229c8c62458fc40968305190" -> "sha256:5ae9ba579950afd69c6d0bee194f2e4a80153d71fc0909d850a7c95d20561887" [label=""];
}

