[app/sources/264116964.Dockerfile]
digraph {
  "sha256:08a23aa129b71cdae1b5d8c1aab45a44045a49f8b35ba819cc6ea46fa6f67c87" [label="local://context" shape="ellipse"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:c09115bdfa5d44febac1aa99ddd7c244833fbef601c2480cc7d69bc3d15950b1" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:5be60a1c7048418049804d2d5452ebe5452c30cc37ab60c2ff5c24aa870b8e3e" [label="copy{src=/ch12-cloud-person-1.0.0-SNAPSHOT.jar, dest=/app/app.jar}" shape="note"];
  "sha256:b8e13304d54ef68d1c9c3eac62d4e4419bb9be7ae381b83cf6134df552279bf2" [label="copy{src=/runboot.sh, dest=/app/}" shape="note"];
  "sha256:6b24372c8e04ed1a71d103408685658e0361af9c44e466fbf3b67fba161d6218" [label="/bin/sh -c bash -c 'touch /app/app.jar'" shape="box"];
  "sha256:79aad122db8c7db9f5e99f5a0853508d0a4bfd90637857c5fe532b002d295f50" [label="mkdir{path=/app}" shape="note"];
  "sha256:96eb722361bdbaa13d08ae7a58fff0374b008c7fe8cc07afb88b994f20339b0b" [label="/bin/sh -c chmod a+x runboot.sh" shape="box"];
  "sha256:7e5b8cd2fe17035553f2eea47c4d8fbf0439ee1868610e1dd3e87b16f1729bca" [label="sha256:7e5b8cd2fe17035553f2eea47c4d8fbf0439ee1868610e1dd3e87b16f1729bca" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:c09115bdfa5d44febac1aa99ddd7c244833fbef601c2480cc7d69bc3d15950b1" [label=""];
  "sha256:c09115bdfa5d44febac1aa99ddd7c244833fbef601c2480cc7d69bc3d15950b1" -> "sha256:5be60a1c7048418049804d2d5452ebe5452c30cc37ab60c2ff5c24aa870b8e3e" [label=""];
  "sha256:08a23aa129b71cdae1b5d8c1aab45a44045a49f8b35ba819cc6ea46fa6f67c87" -> "sha256:5be60a1c7048418049804d2d5452ebe5452c30cc37ab60c2ff5c24aa870b8e3e" [label=""];
  "sha256:5be60a1c7048418049804d2d5452ebe5452c30cc37ab60c2ff5c24aa870b8e3e" -> "sha256:b8e13304d54ef68d1c9c3eac62d4e4419bb9be7ae381b83cf6134df552279bf2" [label=""];
  "sha256:08a23aa129b71cdae1b5d8c1aab45a44045a49f8b35ba819cc6ea46fa6f67c87" -> "sha256:b8e13304d54ef68d1c9c3eac62d4e4419bb9be7ae381b83cf6134df552279bf2" [label=""];
  "sha256:b8e13304d54ef68d1c9c3eac62d4e4419bb9be7ae381b83cf6134df552279bf2" -> "sha256:6b24372c8e04ed1a71d103408685658e0361af9c44e466fbf3b67fba161d6218" [label=""];
  "sha256:6b24372c8e04ed1a71d103408685658e0361af9c44e466fbf3b67fba161d6218" -> "sha256:79aad122db8c7db9f5e99f5a0853508d0a4bfd90637857c5fe532b002d295f50" [label=""];
  "sha256:79aad122db8c7db9f5e99f5a0853508d0a4bfd90637857c5fe532b002d295f50" -> "sha256:96eb722361bdbaa13d08ae7a58fff0374b008c7fe8cc07afb88b994f20339b0b" [label=""];
  "sha256:96eb722361bdbaa13d08ae7a58fff0374b008c7fe8cc07afb88b994f20339b0b" -> "sha256:7e5b8cd2fe17035553f2eea47c4d8fbf0439ee1868610e1dd3e87b16f1729bca" [label=""];
}

