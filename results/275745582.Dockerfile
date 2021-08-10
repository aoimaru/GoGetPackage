[app/sources/275745582.Dockerfile]
digraph {
  "sha256:7cc19c178541b52c13fdbc8ec38eeae092901de969b80b145f87f73cb81580ef" [label="docker-image://gcr.io/google-appengine/python@sha256:7d85a8a694d4139a867cff75af0131a67dd1a924a093c3bf45ed6fbe64efa4c9" shape="ellipse"];
  "sha256:34497f8ed4741e6b2e6b5abbd05b74a97d978d64b34d835b21b41e78ced329cf" [label="/bin/sh -c virtualenv --no-download /env -p python" shape="box"];
  "sha256:9860e00f23e79d3c71d7a207c33d0b84a063824d2c4c9a104a88a9739bad01c6" [label="mkdir{path=/app}" shape="note"];
  "sha256:ee66716bc23c823a91512e966e3c798ab79fdbbb6e941913209a0e02e3bc8093" [label="local://context" shape="ellipse"];
  "sha256:08d74cf1f88a1820fde70a2632b8f0b2f5cf7212001e02078e193a0b21307226" [label="copy{src=/jm_utils, dest=/app/jm_utils}" shape="note"];
  "sha256:6bafb810ea6352c760b1abb23ba83f1fc49e3198b381735ae214d096610e29b6" [label="copy{src=/dsub/jobs, dest=/app/jobs}" shape="note"];
  "sha256:c482a2a2345e6c6c70f58d9e37e81630727ee2a094442c9d8c6c8db9aaaa670f" [label="copy{src=/dsub/requirements.txt, dest=/app/jobs}" shape="note"];
  "sha256:99f771bcb0e021fef95a51f674fa8a2ba469f0d2ad915f43c1695e3df09bfcf5" [label="/bin/sh -c cd jobs && pip install -r requirements.txt" shape="box"];
  "sha256:1cf7f369595f4c5a3f093e2e9dab08e610b26e6b7318c6bdb4cb84af8ecdc55c" [label="/bin/sh -c rm -rf jm_utils" shape="box"];
  "sha256:e85f1927f5ae0cabe937518082921631b4dc4511d7288a21278e355462b21a5e" [label="sha256:e85f1927f5ae0cabe937518082921631b4dc4511d7288a21278e355462b21a5e" shape="plaintext"];
  "sha256:7cc19c178541b52c13fdbc8ec38eeae092901de969b80b145f87f73cb81580ef" -> "sha256:34497f8ed4741e6b2e6b5abbd05b74a97d978d64b34d835b21b41e78ced329cf" [label=""];
  "sha256:34497f8ed4741e6b2e6b5abbd05b74a97d978d64b34d835b21b41e78ced329cf" -> "sha256:9860e00f23e79d3c71d7a207c33d0b84a063824d2c4c9a104a88a9739bad01c6" [label=""];
  "sha256:9860e00f23e79d3c71d7a207c33d0b84a063824d2c4c9a104a88a9739bad01c6" -> "sha256:08d74cf1f88a1820fde70a2632b8f0b2f5cf7212001e02078e193a0b21307226" [label=""];
  "sha256:ee66716bc23c823a91512e966e3c798ab79fdbbb6e941913209a0e02e3bc8093" -> "sha256:08d74cf1f88a1820fde70a2632b8f0b2f5cf7212001e02078e193a0b21307226" [label=""];
  "sha256:08d74cf1f88a1820fde70a2632b8f0b2f5cf7212001e02078e193a0b21307226" -> "sha256:6bafb810ea6352c760b1abb23ba83f1fc49e3198b381735ae214d096610e29b6" [label=""];
  "sha256:ee66716bc23c823a91512e966e3c798ab79fdbbb6e941913209a0e02e3bc8093" -> "sha256:6bafb810ea6352c760b1abb23ba83f1fc49e3198b381735ae214d096610e29b6" [label=""];
  "sha256:6bafb810ea6352c760b1abb23ba83f1fc49e3198b381735ae214d096610e29b6" -> "sha256:c482a2a2345e6c6c70f58d9e37e81630727ee2a094442c9d8c6c8db9aaaa670f" [label=""];
  "sha256:ee66716bc23c823a91512e966e3c798ab79fdbbb6e941913209a0e02e3bc8093" -> "sha256:c482a2a2345e6c6c70f58d9e37e81630727ee2a094442c9d8c6c8db9aaaa670f" [label=""];
  "sha256:c482a2a2345e6c6c70f58d9e37e81630727ee2a094442c9d8c6c8db9aaaa670f" -> "sha256:99f771bcb0e021fef95a51f674fa8a2ba469f0d2ad915f43c1695e3df09bfcf5" [label=""];
  "sha256:99f771bcb0e021fef95a51f674fa8a2ba469f0d2ad915f43c1695e3df09bfcf5" -> "sha256:1cf7f369595f4c5a3f093e2e9dab08e610b26e6b7318c6bdb4cb84af8ecdc55c" [label=""];
  "sha256:1cf7f369595f4c5a3f093e2e9dab08e610b26e6b7318c6bdb4cb84af8ecdc55c" -> "sha256:e85f1927f5ae0cabe937518082921631b4dc4511d7288a21278e355462b21a5e" [label=""];
}

