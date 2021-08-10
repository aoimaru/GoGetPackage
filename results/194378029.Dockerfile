[app/sources/194378029.Dockerfile]
digraph {
  "sha256:efa87c4eee88d6297581662141bc3d5a9ccac7c92fe125b01e48bc871c51947b" [label="docker-image://quay.io/lsqio/iojs@sha256:7c81f602d611e85f9c05748d0b2e09bfc01f0570d9e7f9273e645a061bc46670" shape="ellipse"];
  "sha256:abbbc8c7136450c6a9e26adf67b37943b52151fd2591750bf5cf1fe5deaffe2e" [label="mkdir{path=/app}" shape="note"];
  "sha256:e84a54f352ffb82e15f354d83f868d08d9a13b22507837b6218914345e6f9e82" [label="local://context" shape="ellipse"];
  "sha256:25ad46418ac449f9b6f10e0570b89e37afd00bbd85e77af7bdf63bf6b770ce38" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:3e611d8c9a2d5c239204e1ffb457c004d057812b1dd916990e69df1dae71dfa7" [label="/usr/bin/env npm install --production --loglevel=http" shape="box"];
  "sha256:a56777eaa11d4f3f48d571e6ccfc7c6e930a7926fb12d84ac02d008b3cce1bd1" [label="sha256:a56777eaa11d4f3f48d571e6ccfc7c6e930a7926fb12d84ac02d008b3cce1bd1" shape="plaintext"];
  "sha256:efa87c4eee88d6297581662141bc3d5a9ccac7c92fe125b01e48bc871c51947b" -> "sha256:abbbc8c7136450c6a9e26adf67b37943b52151fd2591750bf5cf1fe5deaffe2e" [label=""];
  "sha256:abbbc8c7136450c6a9e26adf67b37943b52151fd2591750bf5cf1fe5deaffe2e" -> "sha256:25ad46418ac449f9b6f10e0570b89e37afd00bbd85e77af7bdf63bf6b770ce38" [label=""];
  "sha256:e84a54f352ffb82e15f354d83f868d08d9a13b22507837b6218914345e6f9e82" -> "sha256:25ad46418ac449f9b6f10e0570b89e37afd00bbd85e77af7bdf63bf6b770ce38" [label=""];
  "sha256:25ad46418ac449f9b6f10e0570b89e37afd00bbd85e77af7bdf63bf6b770ce38" -> "sha256:3e611d8c9a2d5c239204e1ffb457c004d057812b1dd916990e69df1dae71dfa7" [label=""];
  "sha256:3e611d8c9a2d5c239204e1ffb457c004d057812b1dd916990e69df1dae71dfa7" -> "sha256:a56777eaa11d4f3f48d571e6ccfc7c6e930a7926fb12d84ac02d008b3cce1bd1" [label=""];
}

