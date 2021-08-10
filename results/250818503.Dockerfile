[app/sources/250818503.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:d6e0816dc696c930e27146100fa75e3abda84398c6f7becaaa0ea353bbfa245d" [label="/bin/sh -c apk add xz-dev" shape="box"];
  "sha256:1d2ae509fb81de056f69bbebf6f9690fad6f535b6e54c6e6a6954ac710d4eb0d" [label="local://context" shape="ellipse"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:639ea19ea15bdef0eaac1dcf46043f2ae284b52342cf754c1b5058f11609023e" [label="/bin/sh -c apt-get update &&     apt-get install -y         gcc gcc-mingw-w64 gcc-multilib         git make         musl-dev liblzma-dev" shape="box"];
  "sha256:7057a191344570a02a443118e8b823ab184328fe296de47c8b143ca98e248cc0" [label="/bin/sh -c mkdir -p /go/src/github.com/mendersoftware/mender-artifact" shape="box"];
  "sha256:6ec1463cfaa6f05116203e4600b7de6e29c0648f3bcd848025f69f287d642e9e" [label="mkdir{path=/go/src/github.com/mendersoftware/mender-artifact}" shape="note"];
  "sha256:c14c8bfe8da260966d3921b4c0cc34cf0e654095cf70deaf5810f8a68c7ed5f7" [label="/bin/sh -c env GOOS=windows GOARCH=amd64 CC=x86_64-w64-mingw32-gcc CXX=x86_64-w64-mingw32-g++ go get 'golang.org/x/sys/windows'" shape="box"];
  "sha256:8fda0173a78e7a5f5d004ce7a35cd744d872e22a813ac0d2b5cce1913008b78b" [label="copy{src=/, dest=/go/src/github.com/mendersoftware/mender-artifact/}" shape="note"];
  "sha256:4798a19bcc456a87ba320b80247280c04168f341f72e404df213c1f2a15c2420" [label="/bin/sh -c make build-natives" shape="box"];
  "sha256:4846ce43e8877d4b8f9fc2293288149cc628c867cb75e14092b513a41d31be98" [label="copy{src=/go/src/github.com/mendersoftware/mender-artifact/mender-artifact*, dest=/go/bin/}" shape="note"];
  "sha256:b16430cb1a4e9121dfe3d3d1407e104b9126e0a69aea12e7b4c3cd96837b185e" [label="sha256:b16430cb1a4e9121dfe3d3d1407e104b9126e0a69aea12e7b4c3cd96837b185e" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:d6e0816dc696c930e27146100fa75e3abda84398c6f7becaaa0ea353bbfa245d" [label=""];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:639ea19ea15bdef0eaac1dcf46043f2ae284b52342cf754c1b5058f11609023e" [label=""];
  "sha256:639ea19ea15bdef0eaac1dcf46043f2ae284b52342cf754c1b5058f11609023e" -> "sha256:7057a191344570a02a443118e8b823ab184328fe296de47c8b143ca98e248cc0" [label=""];
  "sha256:7057a191344570a02a443118e8b823ab184328fe296de47c8b143ca98e248cc0" -> "sha256:6ec1463cfaa6f05116203e4600b7de6e29c0648f3bcd848025f69f287d642e9e" [label=""];
  "sha256:6ec1463cfaa6f05116203e4600b7de6e29c0648f3bcd848025f69f287d642e9e" -> "sha256:c14c8bfe8da260966d3921b4c0cc34cf0e654095cf70deaf5810f8a68c7ed5f7" [label=""];
  "sha256:c14c8bfe8da260966d3921b4c0cc34cf0e654095cf70deaf5810f8a68c7ed5f7" -> "sha256:8fda0173a78e7a5f5d004ce7a35cd744d872e22a813ac0d2b5cce1913008b78b" [label=""];
  "sha256:1d2ae509fb81de056f69bbebf6f9690fad6f535b6e54c6e6a6954ac710d4eb0d" -> "sha256:8fda0173a78e7a5f5d004ce7a35cd744d872e22a813ac0d2b5cce1913008b78b" [label=""];
  "sha256:8fda0173a78e7a5f5d004ce7a35cd744d872e22a813ac0d2b5cce1913008b78b" -> "sha256:4798a19bcc456a87ba320b80247280c04168f341f72e404df213c1f2a15c2420" [label=""];
  "sha256:d6e0816dc696c930e27146100fa75e3abda84398c6f7becaaa0ea353bbfa245d" -> "sha256:4846ce43e8877d4b8f9fc2293288149cc628c867cb75e14092b513a41d31be98" [label=""];
  "sha256:4798a19bcc456a87ba320b80247280c04168f341f72e404df213c1f2a15c2420" -> "sha256:4846ce43e8877d4b8f9fc2293288149cc628c867cb75e14092b513a41d31be98" [label=""];
  "sha256:4846ce43e8877d4b8f9fc2293288149cc628c867cb75e14092b513a41d31be98" -> "sha256:b16430cb1a4e9121dfe3d3d1407e104b9126e0a69aea12e7b4c3cd96837b185e" [label=""];
}

