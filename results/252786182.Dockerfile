[app/sources/252786182.Dockerfile]
digraph {
  "sha256:5bbcfdb212dd7bc782a8bbee7e9ea30a28ab97e4de8812fcb351d6335233e57c" [label="docker-image://docker.io/library/ruby:2.3.1-onbuild" shape="ellipse"];
  "sha256:85b38824f555811b24e2e656b6cd3b031f73a917166d5125f618b16c7941bb90" [label="/bin/sh -c apt-get update && apt-get install -y nodejs && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:29de5ffd6a884b1458bd6e3eb93bfb60c8eabc5369bc0267994a89279ffd747f" [label="sha256:29de5ffd6a884b1458bd6e3eb93bfb60c8eabc5369bc0267994a89279ffd747f" shape="plaintext"];
  "sha256:5bbcfdb212dd7bc782a8bbee7e9ea30a28ab97e4de8812fcb351d6335233e57c" -> "sha256:85b38824f555811b24e2e656b6cd3b031f73a917166d5125f618b16c7941bb90" [label=""];
  "sha256:85b38824f555811b24e2e656b6cd3b031f73a917166d5125f618b16c7941bb90" -> "sha256:29de5ffd6a884b1458bd6e3eb93bfb60c8eabc5369bc0267994a89279ffd747f" [label=""];
}

