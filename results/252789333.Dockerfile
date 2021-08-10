[app/sources/252789333.Dockerfile]
digraph {
  "sha256:782f70bba4c595172cffca27bbee1ee004e158753f9634fdea2acf5d28fdc254" [label="docker-image://docker.io/library/node:argon" shape="ellipse"];
  "sha256:f5d2648361e2ac1b2f6a1590d6d9d7ca0625cddcc433f74c811008ea29ed4d78" [label="local://context" shape="ellipse"];
  "sha256:c6badbd3a0f9c2279b9077ef00ef29d9127ea3f3f75a823fce02f934e33ae806" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:52109700e77ddb99f55c2013de8969b1d4fc91d6ccbed6528179d61288dc1bf1" [label="/bin/sh -c npm install" shape="box"];
  "sha256:afa226266867cb01329363f075cfed8ca179a12a166d90fa71faed5899dc37f5" [label="sha256:afa226266867cb01329363f075cfed8ca179a12a166d90fa71faed5899dc37f5" shape="plaintext"];
  "sha256:782f70bba4c595172cffca27bbee1ee004e158753f9634fdea2acf5d28fdc254" -> "sha256:c6badbd3a0f9c2279b9077ef00ef29d9127ea3f3f75a823fce02f934e33ae806" [label=""];
  "sha256:f5d2648361e2ac1b2f6a1590d6d9d7ca0625cddcc433f74c811008ea29ed4d78" -> "sha256:c6badbd3a0f9c2279b9077ef00ef29d9127ea3f3f75a823fce02f934e33ae806" [label=""];
  "sha256:c6badbd3a0f9c2279b9077ef00ef29d9127ea3f3f75a823fce02f934e33ae806" -> "sha256:52109700e77ddb99f55c2013de8969b1d4fc91d6ccbed6528179d61288dc1bf1" [label=""];
  "sha256:52109700e77ddb99f55c2013de8969b1d4fc91d6ccbed6528179d61288dc1bf1" -> "sha256:afa226266867cb01329363f075cfed8ca179a12a166d90fa71faed5899dc37f5" [label=""];
}

