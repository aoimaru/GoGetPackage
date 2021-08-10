[app/sources/252770641.Dockerfile]
digraph {
  "sha256:f63973b3200d4faa43b9028f596bc89b96ebc231ab8cb8a343f97a0098081f08" [label="docker-image://docker.io/swiftdocker/swift:latest@sha256:0b2ad4a26977a27bedd2cbbae1c8821b3816a7be8b1fb4ad783816be058f8e95" shape="ellipse"];
  "sha256:9b3ac3460bf29d4f70296c2f2a1a30f0cea30b3f79bee83ab300e0b5289209b9" [label="/bin/sh -c apt-get -y update && apt-get install -y curl vim && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:d65d9aa83eaf2f5bd157512a3f7a8f0163b734ba3cd67a963098f2b69583a380" [label="/bin/sh -c cd ~ && git clone https://github.com/qutheory/vapor.git" shape="box"];
  "sha256:c7a8cd4b9655f4449e8bee02707ba9682604bc8f9bce98d032106b804b98e918" [label="sha256:c7a8cd4b9655f4449e8bee02707ba9682604bc8f9bce98d032106b804b98e918" shape="plaintext"];
  "sha256:f63973b3200d4faa43b9028f596bc89b96ebc231ab8cb8a343f97a0098081f08" -> "sha256:9b3ac3460bf29d4f70296c2f2a1a30f0cea30b3f79bee83ab300e0b5289209b9" [label=""];
  "sha256:9b3ac3460bf29d4f70296c2f2a1a30f0cea30b3f79bee83ab300e0b5289209b9" -> "sha256:d65d9aa83eaf2f5bd157512a3f7a8f0163b734ba3cd67a963098f2b69583a380" [label=""];
  "sha256:d65d9aa83eaf2f5bd157512a3f7a8f0163b734ba3cd67a963098f2b69583a380" -> "sha256:c7a8cd4b9655f4449e8bee02707ba9682604bc8f9bce98d032106b804b98e918" [label=""];
}

