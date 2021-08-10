[app/sources/316525944.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" [label="docker-image://docker.io/library/golang:1.11-alpine" shape="ellipse"];
  "sha256:9ff466db90550e7231afa47b13509e5b076e4a080ac89c6d4804ff60a9e5448c" [label="/bin/sh -c set -eux;     apk add gcc         musl-dev" shape="box"];
  "sha256:4676d4045727d0aebeb5ee4fac60b82b4c2270d7ab612c5650a1538b03f2a1bd" [label="local://context" shape="ellipse"];
  "sha256:c6e50add6482e34132ecf88b2bbb1e9fc52847e9977f91c612f999e6c3c410bd" [label="copy{src=/, dest=/usr/local/go/src/github.com/vitelabs/go-vite}" shape="note"];
  "sha256:4a248f11cb210b0af8e0ab9b411ed236b6b37a4cd2d9c7153bd6ea073f029a25" [label="/bin/sh -c go build -o gvite  github.com/vitelabs/go-vite/cmd/gvite" shape="box"];
  "sha256:7aeda01007c4b2b37059a30e947ea35495f5fd4193e20e706e5ec5549d768b87" [label="copy{src=/go/gvite, dest=/}" shape="note"];
  "sha256:2e8102ce9e7b55a96e021cf608caadf911e5a9dbef76c4b446a24fa708aef3b9" [label="copy{src=/node_config.json, dest=/}" shape="note"];
  "sha256:414859740575ff3f669ed23e4e35e5922385f2e4158d154ee3b94aa7d5e01c79" [label="sha256:414859740575ff3f669ed23e4e35e5922385f2e4158d154ee3b94aa7d5e01c79" shape="plaintext"];
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" -> "sha256:9ff466db90550e7231afa47b13509e5b076e4a080ac89c6d4804ff60a9e5448c" [label=""];
  "sha256:9ff466db90550e7231afa47b13509e5b076e4a080ac89c6d4804ff60a9e5448c" -> "sha256:c6e50add6482e34132ecf88b2bbb1e9fc52847e9977f91c612f999e6c3c410bd" [label=""];
  "sha256:4676d4045727d0aebeb5ee4fac60b82b4c2270d7ab612c5650a1538b03f2a1bd" -> "sha256:c6e50add6482e34132ecf88b2bbb1e9fc52847e9977f91c612f999e6c3c410bd" [label=""];
  "sha256:c6e50add6482e34132ecf88b2bbb1e9fc52847e9977f91c612f999e6c3c410bd" -> "sha256:4a248f11cb210b0af8e0ab9b411ed236b6b37a4cd2d9c7153bd6ea073f029a25" [label=""];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:7aeda01007c4b2b37059a30e947ea35495f5fd4193e20e706e5ec5549d768b87" [label=""];
  "sha256:4a248f11cb210b0af8e0ab9b411ed236b6b37a4cd2d9c7153bd6ea073f029a25" -> "sha256:7aeda01007c4b2b37059a30e947ea35495f5fd4193e20e706e5ec5549d768b87" [label=""];
  "sha256:7aeda01007c4b2b37059a30e947ea35495f5fd4193e20e706e5ec5549d768b87" -> "sha256:2e8102ce9e7b55a96e021cf608caadf911e5a9dbef76c4b446a24fa708aef3b9" [label=""];
  "sha256:4676d4045727d0aebeb5ee4fac60b82b4c2270d7ab612c5650a1538b03f2a1bd" -> "sha256:2e8102ce9e7b55a96e021cf608caadf911e5a9dbef76c4b446a24fa708aef3b9" [label=""];
  "sha256:2e8102ce9e7b55a96e021cf608caadf911e5a9dbef76c4b446a24fa708aef3b9" -> "sha256:414859740575ff3f669ed23e4e35e5922385f2e4158d154ee3b94aa7d5e01c79" [label=""];
}

