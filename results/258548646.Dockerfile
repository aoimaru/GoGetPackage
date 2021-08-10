[app/sources/258548646.Dockerfile]
digraph {
  "sha256:a015dd536dbee9a8e9c6a35ac64b27f48aa97008f592ffe40193ad5c402a5cd8" [label="local://context" shape="ellipse"];
  "sha256:1213c88016540f97c3f72937b5163492e669e182ff56a5f7d79dfdab7f4cca92" [label="docker-image://docker.io/ppc64le/ubuntu:xenial" shape="ellipse"];
  "sha256:5f05cda75b2117cc49968972f6cc3dbbd8905cb3ba53f44d58a826c3adde066c" [label="/bin/sh -c apt-get update && apt-get install -y git golang-go" shape="box"];
  "sha256:5a179aac7e0ea523a529ae44f41746709abee883b6891fc9c122c3269f834540" [label="/bin/sh -c mkdir -p /go/src /go/bin /go/pkg" shape="box"];
  "sha256:b0945f2a88f986c55ce67823c4abe482fd54fbdee0d417025cb348d39eff91fb" [label="/bin/sh -c export GLIDE=v0.11.1;         export TARGET=/go/src/github.com/Masterminds;         mkdir -p ${TARGET} &&         git clone https://github.com/Masterminds/glide.git ${TARGET}/glide &&         cd ${TARGET}/glide &&         git checkout $GLIDE &&         make build &&         cp ./glide /usr/bin/glide &&         cd / && rm -rf /go/src/* /go/bin/* /go/pkg/*" shape="box"];
  "sha256:98cb0c543c2291ba45c52ce44e90a5c36bbf7506cc6f96d24ad68fdb40745a54" [label="copy{src=/glide.yaml, dest=/manvendor/}" shape="note"];
  "sha256:23660485462d73314c737734acf0160938f7d909abff861181b5c79b06de9527" [label="copy{src=/glide.lock, dest=/manvendor/}" shape="note"];
  "sha256:2cb409bee8222e8455c6aeba89941bea7ee3e8c1f6f259c85f2c85bdda8ce649" [label="mkdir{path=/manvendor}" shape="note"];
  "sha256:0faa11a97110614e2e617076b2405e2388468b4ea28bfb06d8321d59ca9b147b" [label="/bin/sh -c glide install && mv vendor src" shape="box"];
  "sha256:99f91f4f39984526f3802b1b27cb7c7a2588743fdd01aea94dbfefc1f3b55753" [label="/bin/sh -c go build -o /usr/bin/go-md2man github.com/cpuguy83/go-md2man" shape="box"];
  "sha256:69c9bac09add651df3584350b09155956f1a09761c98dc8d0145e2992924d343" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:0475a882446e1bd925e03459663828988b93f668b3835968b1d55c55240b713c" [label="sha256:0475a882446e1bd925e03459663828988b93f668b3835968b1d55c55240b713c" shape="plaintext"];
  "sha256:1213c88016540f97c3f72937b5163492e669e182ff56a5f7d79dfdab7f4cca92" -> "sha256:5f05cda75b2117cc49968972f6cc3dbbd8905cb3ba53f44d58a826c3adde066c" [label=""];
  "sha256:5f05cda75b2117cc49968972f6cc3dbbd8905cb3ba53f44d58a826c3adde066c" -> "sha256:5a179aac7e0ea523a529ae44f41746709abee883b6891fc9c122c3269f834540" [label=""];
  "sha256:5a179aac7e0ea523a529ae44f41746709abee883b6891fc9c122c3269f834540" -> "sha256:b0945f2a88f986c55ce67823c4abe482fd54fbdee0d417025cb348d39eff91fb" [label=""];
  "sha256:b0945f2a88f986c55ce67823c4abe482fd54fbdee0d417025cb348d39eff91fb" -> "sha256:98cb0c543c2291ba45c52ce44e90a5c36bbf7506cc6f96d24ad68fdb40745a54" [label=""];
  "sha256:a015dd536dbee9a8e9c6a35ac64b27f48aa97008f592ffe40193ad5c402a5cd8" -> "sha256:98cb0c543c2291ba45c52ce44e90a5c36bbf7506cc6f96d24ad68fdb40745a54" [label=""];
  "sha256:98cb0c543c2291ba45c52ce44e90a5c36bbf7506cc6f96d24ad68fdb40745a54" -> "sha256:23660485462d73314c737734acf0160938f7d909abff861181b5c79b06de9527" [label=""];
  "sha256:a015dd536dbee9a8e9c6a35ac64b27f48aa97008f592ffe40193ad5c402a5cd8" -> "sha256:23660485462d73314c737734acf0160938f7d909abff861181b5c79b06de9527" [label=""];
  "sha256:23660485462d73314c737734acf0160938f7d909abff861181b5c79b06de9527" -> "sha256:2cb409bee8222e8455c6aeba89941bea7ee3e8c1f6f259c85f2c85bdda8ce649" [label=""];
  "sha256:2cb409bee8222e8455c6aeba89941bea7ee3e8c1f6f259c85f2c85bdda8ce649" -> "sha256:0faa11a97110614e2e617076b2405e2388468b4ea28bfb06d8321d59ca9b147b" [label=""];
  "sha256:0faa11a97110614e2e617076b2405e2388468b4ea28bfb06d8321d59ca9b147b" -> "sha256:99f91f4f39984526f3802b1b27cb7c7a2588743fdd01aea94dbfefc1f3b55753" [label=""];
  "sha256:99f91f4f39984526f3802b1b27cb7c7a2588743fdd01aea94dbfefc1f3b55753" -> "sha256:69c9bac09add651df3584350b09155956f1a09761c98dc8d0145e2992924d343" [label=""];
  "sha256:69c9bac09add651df3584350b09155956f1a09761c98dc8d0145e2992924d343" -> "sha256:0475a882446e1bd925e03459663828988b93f668b3835968b1d55c55240b713c" [label=""];
}

