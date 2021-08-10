[app/sources/256436901.Dockerfile]
digraph {
  "sha256:8061c5e9bf92fef6707e721f8f6093e120425d0572c7324a826739e6525b9fce" [label="docker-image://docker.io/plugins/base:linux-arm@sha256:ef9a00877d947fa7b663616f551a20b12def03254dc2747114bcc9f8b450e24a" shape="ellipse"];
  "sha256:69123f7009b2ef3ddfbe5e0b57b1a7e5609b11675df75058ac5ee7bccebb9ac0" [label="local://context" shape="ellipse"];
  "sha256:2ec100aad438cc83fe503418517f03527a7edf66ae1e48e76b480a01d9e932ac" [label="copy{src=/release/linux/arm/drone-telegram, dest=/bin/}" shape="note"];
  "sha256:2688877eebf78f74c99187fdb8719763bc6d21cd8c2b6b5682c2f94709891fc0" [label="sha256:2688877eebf78f74c99187fdb8719763bc6d21cd8c2b6b5682c2f94709891fc0" shape="plaintext"];
  "sha256:8061c5e9bf92fef6707e721f8f6093e120425d0572c7324a826739e6525b9fce" -> "sha256:2ec100aad438cc83fe503418517f03527a7edf66ae1e48e76b480a01d9e932ac" [label=""];
  "sha256:69123f7009b2ef3ddfbe5e0b57b1a7e5609b11675df75058ac5ee7bccebb9ac0" -> "sha256:2ec100aad438cc83fe503418517f03527a7edf66ae1e48e76b480a01d9e932ac" [label=""];
  "sha256:2ec100aad438cc83fe503418517f03527a7edf66ae1e48e76b480a01d9e932ac" -> "sha256:2688877eebf78f74c99187fdb8719763bc6d21cd8c2b6b5682c2f94709891fc0" [label=""];
}

