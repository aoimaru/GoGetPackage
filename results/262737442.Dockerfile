[app/sources/262737442.Dockerfile]
digraph {
  "sha256:95a74f691aea1fdaf936e353ebdf21c78f28e938065f251e2c3357d97ddfc7ad" [label="local://context" shape="ellipse"];
  "sha256:2a79ecb3fc8ef92f18d034708519cd4b672209812f120cb1eb4a098c966638ea" [label="copy{src=/etcd-version-monitor, dest=/etcd-version-monitor}" shape="note"];
  "sha256:2451b014393cd684e9e9d7f226d8dce62de902a31bdd056d47b5ae8d9ab03fb2" [label="sha256:2451b014393cd684e9e9d7f226d8dce62de902a31bdd056d47b5ae8d9ab03fb2" shape="plaintext"];
  "sha256:95a74f691aea1fdaf936e353ebdf21c78f28e938065f251e2c3357d97ddfc7ad" -> "sha256:2a79ecb3fc8ef92f18d034708519cd4b672209812f120cb1eb4a098c966638ea" [label=""];
  "sha256:2a79ecb3fc8ef92f18d034708519cd4b672209812f120cb1eb4a098c966638ea" -> "sha256:2451b014393cd684e9e9d7f226d8dce62de902a31bdd056d47b5ae8d9ab03fb2" [label=""];
}

