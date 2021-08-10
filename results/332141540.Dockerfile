[app/sources/332141540.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:58e74f2ce0ed01da9dabd5533638257d997f9e9cf0ecbaf3c02b808bd060a979" [label="local://context" shape="ellipse"];
  "sha256:e4853184ff8782aeaed65cf514b270df8a56165104bdf89115a563d53d4e703d" [label="copy{src=/_book, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:1f3927324e3b141cd2d11124579ffa492062e48be75d67fb33b909b4667d1aff" [label="sha256:1f3927324e3b141cd2d11124579ffa492062e48be75d67fb33b909b4667d1aff" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:e4853184ff8782aeaed65cf514b270df8a56165104bdf89115a563d53d4e703d" [label=""];
  "sha256:58e74f2ce0ed01da9dabd5533638257d997f9e9cf0ecbaf3c02b808bd060a979" -> "sha256:e4853184ff8782aeaed65cf514b270df8a56165104bdf89115a563d53d4e703d" [label=""];
  "sha256:e4853184ff8782aeaed65cf514b270df8a56165104bdf89115a563d53d4e703d" -> "sha256:1f3927324e3b141cd2d11124579ffa492062e48be75d67fb33b909b4667d1aff" [label=""];
}

