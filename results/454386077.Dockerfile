[app/sources/454386077.Dockerfile]
digraph {
  "sha256:aeca43a0890612281c56e18ec6d59f8936d1e7119d40ea8dd759daa1001af134" [label="docker-image://docker.io/karalabe/xgo-base:latest" shape="ellipse"];
  "sha256:859b614df58ad07cd27d3d50c425687c85c36d7cbe19a29e63c680c75998b111" [label="/bin/sh -c export ROOT_DIST=https://storage.googleapis.com/golang/go1.7.3.linux-amd64.tar.gz     &&   export ROOT_DIST_SHA=508028aac0654e993564b6e2014bf2d4a9751e3b286661b0b0040046cf18028e &&     $BOOTSTRAP_PURE" shape="box"];
  "sha256:6ae31b9d9db121099774e266d5f43f170be0d1f69c181474136aec84dfde18d8" [label="sha256:6ae31b9d9db121099774e266d5f43f170be0d1f69c181474136aec84dfde18d8" shape="plaintext"];
  "sha256:aeca43a0890612281c56e18ec6d59f8936d1e7119d40ea8dd759daa1001af134" -> "sha256:859b614df58ad07cd27d3d50c425687c85c36d7cbe19a29e63c680c75998b111" [label=""];
  "sha256:859b614df58ad07cd27d3d50c425687c85c36d7cbe19a29e63c680c75998b111" -> "sha256:6ae31b9d9db121099774e266d5f43f170be0d1f69c181474136aec84dfde18d8" [label=""];
}

