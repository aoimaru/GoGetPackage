[app/sources/214111228.Dockerfile]
digraph {
  "sha256:547078c45b95acacd8409feedabd2902f7a63812c8c59530b850123717d55e9a" [label="docker-image://docker.io/library/buildpack-deps:wheezy" shape="ellipse"];
  "sha256:ecc8b5db04b4befca5f4911007189948d07716875988a78344b54f2980fcfa54" [label="local://context" shape="ellipse"];
  "sha256:c1c54f3052cd7730df83631d5f8a7286d3de5edf14340e072bae534bdd836a0c" [label="copy{src=/ldb, dest=/rocksdb/tools/ldb}" shape="note"];
  "sha256:a054974ae743af8cabf8322eecaede011f1d8df8edb6016d0119287ea52e72cf" [label="sha256:a054974ae743af8cabf8322eecaede011f1d8df8edb6016d0119287ea52e72cf" shape="plaintext"];
  "sha256:547078c45b95acacd8409feedabd2902f7a63812c8c59530b850123717d55e9a" -> "sha256:c1c54f3052cd7730df83631d5f8a7286d3de5edf14340e072bae534bdd836a0c" [label=""];
  "sha256:ecc8b5db04b4befca5f4911007189948d07716875988a78344b54f2980fcfa54" -> "sha256:c1c54f3052cd7730df83631d5f8a7286d3de5edf14340e072bae534bdd836a0c" [label=""];
  "sha256:c1c54f3052cd7730df83631d5f8a7286d3de5edf14340e072bae534bdd836a0c" -> "sha256:a054974ae743af8cabf8322eecaede011f1d8df8edb6016d0119287ea52e72cf" [label=""];
}

