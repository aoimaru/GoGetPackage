[app/sources/215851896.Dockerfile]
digraph {
  "sha256:c046f43412370e63902d88708aee03f4ca1f622d3e4c3153cedca0d352b2e497" [label="docker-image://docker.io/concourse/buildroot:git@sha256:0e7ab3ac83fa26adf8dcc5b87a4ca3faf2b42aaaa328d73cbd65f2b1ab15e3fd" shape="ellipse"];
  "sha256:6e6a7c49637f2a0d5a5c937441e33965714f82cb8f9d00c6fef5ba5b49dfb5df" [label="mkdir{path=/opt/resource}" shape="note"];
  "sha256:1786b91db56645a9ba78e1fadc4263a7301ea23b21f569c6c888572745d3cce8" [label="local://context" shape="ellipse"];
  "sha256:8472083032ac0277903dcf7a7f2de110e097280617a0fbc38f124d30b3a6d94f" [label="copy{src=/gerrit-resource, dest=/opt/resource/}" shape="note"];
  "sha256:83b31824dafec4b05ac467c359c11ca300ac0c77e744fdb857cec9f713d91ed6" [label="/bin/sh -c chmod +x gerrit-resource" shape="box"];
  "sha256:ed23244113002e5f28d8f78f25a380ff4fe9353465fe7ce5a4dbe1610cc1561b" [label="/bin/sh -c ln -s gerrit-resource check" shape="box"];
  "sha256:223b5c2ac1ced585776d64e30af1931ca140b28df581f3dccc2e75c7decee242" [label="/bin/sh -c ln -s gerrit-resource in" shape="box"];
  "sha256:48201f8ece09a8bf0fd24ce4713fc3d7db5592f6e0688cbdf4b43526b71a3382" [label="/bin/sh -c ln -s gerrit-resource out" shape="box"];
  "sha256:b3d77c480d45ef98e41373ed7326418b5c90e38c8efb21cc70d281d04e09b5fb" [label="sha256:b3d77c480d45ef98e41373ed7326418b5c90e38c8efb21cc70d281d04e09b5fb" shape="plaintext"];
  "sha256:c046f43412370e63902d88708aee03f4ca1f622d3e4c3153cedca0d352b2e497" -> "sha256:6e6a7c49637f2a0d5a5c937441e33965714f82cb8f9d00c6fef5ba5b49dfb5df" [label=""];
  "sha256:6e6a7c49637f2a0d5a5c937441e33965714f82cb8f9d00c6fef5ba5b49dfb5df" -> "sha256:8472083032ac0277903dcf7a7f2de110e097280617a0fbc38f124d30b3a6d94f" [label=""];
  "sha256:1786b91db56645a9ba78e1fadc4263a7301ea23b21f569c6c888572745d3cce8" -> "sha256:8472083032ac0277903dcf7a7f2de110e097280617a0fbc38f124d30b3a6d94f" [label=""];
  "sha256:8472083032ac0277903dcf7a7f2de110e097280617a0fbc38f124d30b3a6d94f" -> "sha256:83b31824dafec4b05ac467c359c11ca300ac0c77e744fdb857cec9f713d91ed6" [label=""];
  "sha256:83b31824dafec4b05ac467c359c11ca300ac0c77e744fdb857cec9f713d91ed6" -> "sha256:ed23244113002e5f28d8f78f25a380ff4fe9353465fe7ce5a4dbe1610cc1561b" [label=""];
  "sha256:ed23244113002e5f28d8f78f25a380ff4fe9353465fe7ce5a4dbe1610cc1561b" -> "sha256:223b5c2ac1ced585776d64e30af1931ca140b28df581f3dccc2e75c7decee242" [label=""];
  "sha256:223b5c2ac1ced585776d64e30af1931ca140b28df581f3dccc2e75c7decee242" -> "sha256:48201f8ece09a8bf0fd24ce4713fc3d7db5592f6e0688cbdf4b43526b71a3382" [label=""];
  "sha256:48201f8ece09a8bf0fd24ce4713fc3d7db5592f6e0688cbdf4b43526b71a3382" -> "sha256:b3d77c480d45ef98e41373ed7326418b5c90e38c8efb21cc70d281d04e09b5fb" [label=""];
}

