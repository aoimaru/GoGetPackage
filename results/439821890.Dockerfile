[app/sources/439821890.Dockerfile]
digraph {
  "sha256:449e242adf68db28f224af7668b28cc763e13553acec5bd53809b5ba81f79d89" [label="docker-image://docker.io/library/openjdk:8u212-jdk@sha256:289359f87576b537b049160c9a2f0e5859ecd2765bf3f23290acff4761cef3d5" shape="ellipse"];
  "sha256:f523b8e3e6dba13849e0171077947629b18e27c3fe46482d1bc9a415011bd4be" [label="/bin/sh -c true       && curl -sL https://deb.nodesource.com/setup_8.x | bash       && apt-get update       && apt-get -y install         nodejs         build-essential         xvfb         libxss1         libgconf-2-4         zip       && touch /this-is-overview-dev-on-docker" shape="box"];
  "sha256:dcabbf3c4e6d7f922414b4ac19108a782e3db8dc7f5ec230e2dd692d5bc66f64" [label="/bin/sh -c mkdir -p /opt/overview" shape="box"];
  "sha256:2cd93bbaf3c754f7b4d23fe835529da10fad5f650742341c1bf7c8da85b8f994" [label="mkdir{path=/app}" shape="note"];
  "sha256:29af7cb30e18a53d1400d9121dcfef4c22bd3d4b4213a99f74cbbfe3a32e0922" [label="sha256:29af7cb30e18a53d1400d9121dcfef4c22bd3d4b4213a99f74cbbfe3a32e0922" shape="plaintext"];
  "sha256:449e242adf68db28f224af7668b28cc763e13553acec5bd53809b5ba81f79d89" -> "sha256:f523b8e3e6dba13849e0171077947629b18e27c3fe46482d1bc9a415011bd4be" [label=""];
  "sha256:f523b8e3e6dba13849e0171077947629b18e27c3fe46482d1bc9a415011bd4be" -> "sha256:dcabbf3c4e6d7f922414b4ac19108a782e3db8dc7f5ec230e2dd692d5bc66f64" [label=""];
  "sha256:dcabbf3c4e6d7f922414b4ac19108a782e3db8dc7f5ec230e2dd692d5bc66f64" -> "sha256:2cd93bbaf3c754f7b4d23fe835529da10fad5f650742341c1bf7c8da85b8f994" [label=""];
  "sha256:2cd93bbaf3c754f7b4d23fe835529da10fad5f650742341c1bf7c8da85b8f994" -> "sha256:29af7cb30e18a53d1400d9121dcfef4c22bd3d4b4213a99f74cbbfe3a32e0922" [label=""];
}

