[app/sources/269938384.Dockerfile]
digraph {
  "sha256:98d16a6ded9a35e18108244f2380c4c64daf343d7a3c1739bb83d9412a982f30" [label="local://context" shape="ellipse"];
  "sha256:b22ae68ccf35c10e68f989af2b523f5181b1598807fb237ddd9dbe1e0b5bc0fd" [label="docker-image://docker.io/microsoft/dotnet:2.0.0-runtime" shape="ellipse"];
  "sha256:1fb87a7777cfe46b6cc11f88bc64d481f13bf6df2e0327c2b7e5f425f3f3170a" [label="mkdir{path=/dotnetapp}" shape="note"];
  "sha256:3b7f8dc66dd6d4ae8dcd3437faeed9b01bd2dbe49109a1ec59c6ad39b9391656" [label="copy{src=/bin/Docker, dest=/dotnetapp/}" shape="note"];
  "sha256:920637f36ccb241eb326f9c04d9d18b760b943b2ee62486e3bdd15627ea88cc4" [label="sha256:920637f36ccb241eb326f9c04d9d18b760b943b2ee62486e3bdd15627ea88cc4" shape="plaintext"];
  "sha256:b22ae68ccf35c10e68f989af2b523f5181b1598807fb237ddd9dbe1e0b5bc0fd" -> "sha256:1fb87a7777cfe46b6cc11f88bc64d481f13bf6df2e0327c2b7e5f425f3f3170a" [label=""];
  "sha256:1fb87a7777cfe46b6cc11f88bc64d481f13bf6df2e0327c2b7e5f425f3f3170a" -> "sha256:3b7f8dc66dd6d4ae8dcd3437faeed9b01bd2dbe49109a1ec59c6ad39b9391656" [label=""];
  "sha256:98d16a6ded9a35e18108244f2380c4c64daf343d7a3c1739bb83d9412a982f30" -> "sha256:3b7f8dc66dd6d4ae8dcd3437faeed9b01bd2dbe49109a1ec59c6ad39b9391656" [label=""];
  "sha256:3b7f8dc66dd6d4ae8dcd3437faeed9b01bd2dbe49109a1ec59c6ad39b9391656" -> "sha256:920637f36ccb241eb326f9c04d9d18b760b943b2ee62486e3bdd15627ea88cc4" [label=""];
}

