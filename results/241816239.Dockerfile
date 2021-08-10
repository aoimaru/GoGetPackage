[app/sources/241816239.Dockerfile]
digraph {
  "sha256:03cd2999f1ea89739bc1715b5e4bfec23f0c38db52128fc68b412e52cf354b97" [label="docker-image://docker.io/library/python:alpine3.6" shape="ellipse"];
  "sha256:176e88713e58cc230578a26c8f03a2643231ac481b3f352c01eba0c588a65a2c" [label="mkdir{path=/usr/src/redditwatcher}" shape="note"];
  "sha256:38342ffbc989fa5b33a36415cc2e280176a6cafadac80fb5d390d4cad4209850" [label="local://context" shape="ellipse"];
  "sha256:cecad01757fb0696c4ae0407d6159a828263f675adfa2131d0cabd6d3c39c05d" [label="copy{src=/, dest=/usr/src/redditwatcher/}" shape="note"];
  "sha256:839545e8eba226bd9ac6590adee79521f3c409fd976c3eb7aea5f6d1b8cf1ebc" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:caa986c8c02b89853aa378f3f9af5b1eca59c4e08a4cc6f2804c6db9ff0f2dab" [label="sha256:caa986c8c02b89853aa378f3f9af5b1eca59c4e08a4cc6f2804c6db9ff0f2dab" shape="plaintext"];
  "sha256:03cd2999f1ea89739bc1715b5e4bfec23f0c38db52128fc68b412e52cf354b97" -> "sha256:176e88713e58cc230578a26c8f03a2643231ac481b3f352c01eba0c588a65a2c" [label=""];
  "sha256:176e88713e58cc230578a26c8f03a2643231ac481b3f352c01eba0c588a65a2c" -> "sha256:cecad01757fb0696c4ae0407d6159a828263f675adfa2131d0cabd6d3c39c05d" [label=""];
  "sha256:38342ffbc989fa5b33a36415cc2e280176a6cafadac80fb5d390d4cad4209850" -> "sha256:cecad01757fb0696c4ae0407d6159a828263f675adfa2131d0cabd6d3c39c05d" [label=""];
  "sha256:cecad01757fb0696c4ae0407d6159a828263f675adfa2131d0cabd6d3c39c05d" -> "sha256:839545e8eba226bd9ac6590adee79521f3c409fd976c3eb7aea5f6d1b8cf1ebc" [label=""];
  "sha256:839545e8eba226bd9ac6590adee79521f3c409fd976c3eb7aea5f6d1b8cf1ebc" -> "sha256:caa986c8c02b89853aa378f3f9af5b1eca59c4e08a4cc6f2804c6db9ff0f2dab" [label=""];
}

