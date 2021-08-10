[app/sources/307252857.Dockerfile]
digraph {
  "sha256:7a6f646bdb1efd43895a2cbad9bdd148a1506d7fd22716d0d8c97455393bf4c9" [label="docker-image://docker.io/docs/base:latest" shape="ellipse"];
  "sha256:64dbf0baaa295aaea5efd20d0bf8b588f59a2d9fbd2f277b326b87a266e06454" [label="/bin/sh -c svn checkout https://github.com/docker/docker/trunk/docs /docs/content/engine" shape="box"];
  "sha256:43e2ba6694bec78c2908f3965529ba3e2e99b4375fdeb192449fb695a14ca585" [label="/bin/sh -c svn checkout https://github.com/docker/compose/trunk/docs /docs/content/compose" shape="box"];
  "sha256:a175c1b98c2c1e3d676fc14ba6055acd3001eb2be1734b0901f0b5b3ae91f347" [label="/bin/sh -c svn checkout https://github.com/docker/swarm/trunk/docs /docs/content/swarm" shape="box"];
  "sha256:70adf5bc1bafa28825534fb09dbd68fd36a126004918537c6b9b699a9e6e00af" [label="/bin/sh -c svn checkout https://github.com/docker/machine/trunk/docs /docs/content/machine" shape="box"];
  "sha256:8ef1ed6a16120fd7917f2ba4612d0bc1d9964a331ab161621d27705fb2763acd" [label="/bin/sh -c svn checkout https://github.com/docker/notary/trunk/docs /docs/content/notary" shape="box"];
  "sha256:388da85cb3dd9b6e6a0f59dc2cf5cfad1848c985e3955d032876457422619cc5" [label="/bin/sh -c svn checkout https://github.com/docker/kitematic/trunk/docs /docs/content/kitematic" shape="box"];
  "sha256:bd715ac9ae15d329418e6b8e637c3f0ea9729fc95d9f294bb4f2de358c41e531" [label="/bin/sh -c svn checkout https://github.com/docker/toolbox/trunk/docs /docs/content/toolbox" shape="box"];
  "sha256:cb1669c4c74d199412d13ec1d052c6be1af2b52fc80edcf4538a9f82f06708ff" [label="/bin/sh -c svn checkout https://github.com/docker/opensource/trunk/docs /docs/content/opensource" shape="box"];
  "sha256:233abf13fe3b0951780be797b9b67bb4950a609d356c02cf6c84ecd67ae450e6" [label="local://context" shape="ellipse"];
  "sha256:822fdce6f1292a166467e343483f1b7aeb140c5a626a42378b0bbe74c0815d0b" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:451807984a030f36762cbf36af9ea9e371248d162b677c9c22fc484f3c20e3f7" [label="copy{src=/, dest=/docs/content/registry/}" shape="note"];
  "sha256:824c0bded712477533d6c111745696b71e7403a056852e87e480d0f8bb12f4c7" [label="sha256:824c0bded712477533d6c111745696b71e7403a056852e87e480d0f8bb12f4c7" shape="plaintext"];
  "sha256:7a6f646bdb1efd43895a2cbad9bdd148a1506d7fd22716d0d8c97455393bf4c9" -> "sha256:64dbf0baaa295aaea5efd20d0bf8b588f59a2d9fbd2f277b326b87a266e06454" [label=""];
  "sha256:64dbf0baaa295aaea5efd20d0bf8b588f59a2d9fbd2f277b326b87a266e06454" -> "sha256:43e2ba6694bec78c2908f3965529ba3e2e99b4375fdeb192449fb695a14ca585" [label=""];
  "sha256:43e2ba6694bec78c2908f3965529ba3e2e99b4375fdeb192449fb695a14ca585" -> "sha256:a175c1b98c2c1e3d676fc14ba6055acd3001eb2be1734b0901f0b5b3ae91f347" [label=""];
  "sha256:a175c1b98c2c1e3d676fc14ba6055acd3001eb2be1734b0901f0b5b3ae91f347" -> "sha256:70adf5bc1bafa28825534fb09dbd68fd36a126004918537c6b9b699a9e6e00af" [label=""];
  "sha256:70adf5bc1bafa28825534fb09dbd68fd36a126004918537c6b9b699a9e6e00af" -> "sha256:8ef1ed6a16120fd7917f2ba4612d0bc1d9964a331ab161621d27705fb2763acd" [label=""];
  "sha256:8ef1ed6a16120fd7917f2ba4612d0bc1d9964a331ab161621d27705fb2763acd" -> "sha256:388da85cb3dd9b6e6a0f59dc2cf5cfad1848c985e3955d032876457422619cc5" [label=""];
  "sha256:388da85cb3dd9b6e6a0f59dc2cf5cfad1848c985e3955d032876457422619cc5" -> "sha256:bd715ac9ae15d329418e6b8e637c3f0ea9729fc95d9f294bb4f2de358c41e531" [label=""];
  "sha256:bd715ac9ae15d329418e6b8e637c3f0ea9729fc95d9f294bb4f2de358c41e531" -> "sha256:cb1669c4c74d199412d13ec1d052c6be1af2b52fc80edcf4538a9f82f06708ff" [label=""];
  "sha256:cb1669c4c74d199412d13ec1d052c6be1af2b52fc80edcf4538a9f82f06708ff" -> "sha256:822fdce6f1292a166467e343483f1b7aeb140c5a626a42378b0bbe74c0815d0b" [label=""];
  "sha256:233abf13fe3b0951780be797b9b67bb4950a609d356c02cf6c84ecd67ae450e6" -> "sha256:822fdce6f1292a166467e343483f1b7aeb140c5a626a42378b0bbe74c0815d0b" [label=""];
  "sha256:822fdce6f1292a166467e343483f1b7aeb140c5a626a42378b0bbe74c0815d0b" -> "sha256:451807984a030f36762cbf36af9ea9e371248d162b677c9c22fc484f3c20e3f7" [label=""];
  "sha256:233abf13fe3b0951780be797b9b67bb4950a609d356c02cf6c84ecd67ae450e6" -> "sha256:451807984a030f36762cbf36af9ea9e371248d162b677c9c22fc484f3c20e3f7" [label=""];
  "sha256:451807984a030f36762cbf36af9ea9e371248d162b677c9c22fc484f3c20e3f7" -> "sha256:824c0bded712477533d6c111745696b71e7403a056852e87e480d0f8bb12f4c7" [label=""];
}

