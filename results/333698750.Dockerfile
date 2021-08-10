[app/sources/333698750.Dockerfile]
digraph {
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" [label="docker-image://docker.io/library/golang:1.7" shape="ellipse"];
  "sha256:83a97f7d8943f26ec9bbf10b7435bed68be621d605fd52b1457e2cc517b7b71b" [label="/bin/sh -c mkdir -p /go/src/github.com/getsentry/raven-go" shape="box"];
  "sha256:f5796e11c03cb3208f208bd90e93254aa7d523e102d92499778f1079bab2c8e5" [label="mkdir{path=/go/src/github.com/getsentry/raven-go}" shape="note"];
  "sha256:2eb524e1009b4eb9e8e74ddf9b2207e8780129d0a76ef27c1fab1cb600efe580" [label="/bin/sh -c go install -race std && go get golang.org/x/tools/cmd/cover" shape="box"];
  "sha256:080e05303273a6c841d5d0bd63aa45fcc97062082d083222824fa1d9d21da976" [label="local://context" shape="ellipse"];
  "sha256:7b49070c0d0e1ef8ddca4ba3456a8f9dc3c71830c44c6074afa170d66f014452" [label="copy{src=/, dest=/go/src/github.com/getsentry/raven-go}" shape="note"];
  "sha256:ffb1fa02b91e1efcaea46387374deaef08453ca82ec142e56ae6f50b56354713" [label="/bin/sh -c go get -v ./..." shape="box"];
  "sha256:b12fa2b317689d7e9dfcee0d722a907fa51e5b44144f5742e151c9b162366175" [label="sha256:b12fa2b317689d7e9dfcee0d722a907fa51e5b44144f5742e151c9b162366175" shape="plaintext"];
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" -> "sha256:83a97f7d8943f26ec9bbf10b7435bed68be621d605fd52b1457e2cc517b7b71b" [label=""];
  "sha256:83a97f7d8943f26ec9bbf10b7435bed68be621d605fd52b1457e2cc517b7b71b" -> "sha256:f5796e11c03cb3208f208bd90e93254aa7d523e102d92499778f1079bab2c8e5" [label=""];
  "sha256:f5796e11c03cb3208f208bd90e93254aa7d523e102d92499778f1079bab2c8e5" -> "sha256:2eb524e1009b4eb9e8e74ddf9b2207e8780129d0a76ef27c1fab1cb600efe580" [label=""];
  "sha256:2eb524e1009b4eb9e8e74ddf9b2207e8780129d0a76ef27c1fab1cb600efe580" -> "sha256:7b49070c0d0e1ef8ddca4ba3456a8f9dc3c71830c44c6074afa170d66f014452" [label=""];
  "sha256:080e05303273a6c841d5d0bd63aa45fcc97062082d083222824fa1d9d21da976" -> "sha256:7b49070c0d0e1ef8ddca4ba3456a8f9dc3c71830c44c6074afa170d66f014452" [label=""];
  "sha256:7b49070c0d0e1ef8ddca4ba3456a8f9dc3c71830c44c6074afa170d66f014452" -> "sha256:ffb1fa02b91e1efcaea46387374deaef08453ca82ec142e56ae6f50b56354713" [label=""];
  "sha256:ffb1fa02b91e1efcaea46387374deaef08453ca82ec142e56ae6f50b56354713" -> "sha256:b12fa2b317689d7e9dfcee0d722a907fa51e5b44144f5742e151c9b162366175" [label=""];
}

