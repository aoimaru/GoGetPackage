[app/sources/228454693.Dockerfile]
digraph {
  "sha256:ca0b59d807ca29a1d2ec8085c80cf8b6b9774c492b68f04fad8799dacf9c66d4" [label="docker-image://docker.io/rednoah/filebot:latest" shape="ellipse"];
  "sha256:bca29198a52cf74a8f68be80392c139665f5732515b458dfdbfe5afdd5f4fe47" [label="local://context" shape="ellipse"];
  "sha256:2f577c0907ac4b2996d36442bb6cb5803bf8ce1a87783de2177ae68b7b858941" [label="copy{src=/filebot-watcher, dest=/usr/bin/filebot-watcher}" shape="note"];
  "sha256:2e6849aa8b777cc582883fa6aa99ad589a55c02d920d463717a47a4b652c836d" [label="sha256:2e6849aa8b777cc582883fa6aa99ad589a55c02d920d463717a47a4b652c836d" shape="plaintext"];
  "sha256:ca0b59d807ca29a1d2ec8085c80cf8b6b9774c492b68f04fad8799dacf9c66d4" -> "sha256:2f577c0907ac4b2996d36442bb6cb5803bf8ce1a87783de2177ae68b7b858941" [label=""];
  "sha256:bca29198a52cf74a8f68be80392c139665f5732515b458dfdbfe5afdd5f4fe47" -> "sha256:2f577c0907ac4b2996d36442bb6cb5803bf8ce1a87783de2177ae68b7b858941" [label=""];
  "sha256:2f577c0907ac4b2996d36442bb6cb5803bf8ce1a87783de2177ae68b7b858941" -> "sha256:2e6849aa8b777cc582883fa6aa99ad589a55c02d920d463717a47a4b652c836d" [label=""];
}

