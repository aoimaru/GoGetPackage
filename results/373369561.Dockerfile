[app/sources/373369561.Dockerfile]
digraph {
  "sha256:7b671c6769d3e44af10fa85dbd98ef51ba2e0ecc2badbfa35a580d6d699ab7b3" [label="docker-image://docker.io/library/linotp:latest" shape="ellipse"];
  "sha256:8cc7f153c07a52520f7641bc3d5caebd5105e77f84da43181e4750be539a6e0f" [label="/bin/sh -c apt-get update && apt-get install   \t\tmake   \t\tpython-nose-testconfig   \t\tpython-requests \t\tpython-pip   \t\tlinotp-adminclient-cli" shape="box"];
  "sha256:58493d8a4facc38e3a699d0e2cdefa2f3c4c97a8f88dc16e6803ffb7fd4fdcd5" [label="/bin/sh -c pip install packaging" shape="box"];
  "sha256:aacdc7908d698bbeb2f3e9aa7d84493b5739f0ab2ff12becd8f6cb40065d22e2" [label="/bin/sh -c pip install selenium" shape="box"];
  "sha256:31f48f0fbff965118042ecfe34a7ef7ba6d504b3053d29847b2ac37925ad77ad" [label="/bin/sh -c pip install flaky" shape="box"];
  "sha256:9f09b0fa09c1bfe4bd3f0f37c8f0396b4770e96d8ddb2d35e8bff5349606bb8c" [label="/bin/sh -c pip install pysocks" shape="box"];
  "sha256:11ede59673ad6dc375048663d9e818f74e2e9966852dd021ba1c86a47c2cf163" [label="mkdir{path=/opt/linotp/tests}" shape="note"];
  "sha256:2add866d9d87e83923d9571d6aaf46d81685ecc0da622d6e9cd0724466c56025" [label="sha256:2add866d9d87e83923d9571d6aaf46d81685ecc0da622d6e9cd0724466c56025" shape="plaintext"];
  "sha256:7b671c6769d3e44af10fa85dbd98ef51ba2e0ecc2badbfa35a580d6d699ab7b3" -> "sha256:8cc7f153c07a52520f7641bc3d5caebd5105e77f84da43181e4750be539a6e0f" [label=""];
  "sha256:8cc7f153c07a52520f7641bc3d5caebd5105e77f84da43181e4750be539a6e0f" -> "sha256:58493d8a4facc38e3a699d0e2cdefa2f3c4c97a8f88dc16e6803ffb7fd4fdcd5" [label=""];
  "sha256:58493d8a4facc38e3a699d0e2cdefa2f3c4c97a8f88dc16e6803ffb7fd4fdcd5" -> "sha256:aacdc7908d698bbeb2f3e9aa7d84493b5739f0ab2ff12becd8f6cb40065d22e2" [label=""];
  "sha256:aacdc7908d698bbeb2f3e9aa7d84493b5739f0ab2ff12becd8f6cb40065d22e2" -> "sha256:31f48f0fbff965118042ecfe34a7ef7ba6d504b3053d29847b2ac37925ad77ad" [label=""];
  "sha256:31f48f0fbff965118042ecfe34a7ef7ba6d504b3053d29847b2ac37925ad77ad" -> "sha256:9f09b0fa09c1bfe4bd3f0f37c8f0396b4770e96d8ddb2d35e8bff5349606bb8c" [label=""];
  "sha256:9f09b0fa09c1bfe4bd3f0f37c8f0396b4770e96d8ddb2d35e8bff5349606bb8c" -> "sha256:11ede59673ad6dc375048663d9e818f74e2e9966852dd021ba1c86a47c2cf163" [label=""];
  "sha256:11ede59673ad6dc375048663d9e818f74e2e9966852dd021ba1c86a47c2cf163" -> "sha256:2add866d9d87e83923d9571d6aaf46d81685ecc0da622d6e9cd0724466c56025" [label=""];
}

