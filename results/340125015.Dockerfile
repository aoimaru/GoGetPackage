[app/sources/340125015.Dockerfile]
digraph {
  "sha256:547078c45b95acacd8409feedabd2902f7a63812c8c59530b850123717d55e9a" [label="docker-image://docker.io/library/buildpack-deps:wheezy" shape="ellipse"];
  "sha256:8485fd650371ce2000932ea88d9255613d0bf1b92a233e29ed8760ea3951060a" [label="local://context" shape="ellipse"];
  "sha256:60b2eac6453b8ca82adc398ad285994c6557e6a4b5de387c745648999779f04e" [label="copy{src=/ldb, dest=/rocksdb/tools/ldb}" shape="note"];
  "sha256:eea5188251b16ae3c53814b3f719746d61cefd79bdbc2e19def6469410eb1f54" [label="sha256:eea5188251b16ae3c53814b3f719746d61cefd79bdbc2e19def6469410eb1f54" shape="plaintext"];
  "sha256:547078c45b95acacd8409feedabd2902f7a63812c8c59530b850123717d55e9a" -> "sha256:60b2eac6453b8ca82adc398ad285994c6557e6a4b5de387c745648999779f04e" [label=""];
  "sha256:8485fd650371ce2000932ea88d9255613d0bf1b92a233e29ed8760ea3951060a" -> "sha256:60b2eac6453b8ca82adc398ad285994c6557e6a4b5de387c745648999779f04e" [label=""];
  "sha256:60b2eac6453b8ca82adc398ad285994c6557e6a4b5de387c745648999779f04e" -> "sha256:eea5188251b16ae3c53814b3f719746d61cefd79bdbc2e19def6469410eb1f54" [label=""];
}

