[app/sources/333698005.Dockerfile]
digraph {
  "sha256:f708a96a3990eee8568b8cc2af82f1f3404235567f96fff865f4add79d96cecb" [label="local://context" shape="ellipse"];
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" [label="docker-image://docker.io/library/golang:1.7" shape="ellipse"];
  "sha256:83a97f7d8943f26ec9bbf10b7435bed68be621d605fd52b1457e2cc517b7b71b" [label="/bin/sh -c mkdir -p /go/src/github.com/getsentry/raven-go" shape="box"];
  "sha256:f5796e11c03cb3208f208bd90e93254aa7d523e102d92499778f1079bab2c8e5" [label="mkdir{path=/go/src/github.com/getsentry/raven-go}" shape="note"];
  "sha256:2eb524e1009b4eb9e8e74ddf9b2207e8780129d0a76ef27c1fab1cb600efe580" [label="/bin/sh -c go install -race std && go get golang.org/x/tools/cmd/cover" shape="box"];
  "sha256:5ca464f9b904828421ba284fdf053a914b873374f03957586f4fcba8875baadf" [label="copy{src=/, dest=/go/src/github.com/getsentry/raven-go}" shape="note"];
  "sha256:90fac1abad646a16e45a7b56772623f2aa9f0fefd6063a2021f692794954ac5c" [label="/bin/sh -c go get -v ./..." shape="box"];
  "sha256:ebb2c7592ccbdacf961835800a45732f56af43707d70e46328e4a320a5d29526" [label="sha256:ebb2c7592ccbdacf961835800a45732f56af43707d70e46328e4a320a5d29526" shape="plaintext"];
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" -> "sha256:83a97f7d8943f26ec9bbf10b7435bed68be621d605fd52b1457e2cc517b7b71b" [label=""];
  "sha256:83a97f7d8943f26ec9bbf10b7435bed68be621d605fd52b1457e2cc517b7b71b" -> "sha256:f5796e11c03cb3208f208bd90e93254aa7d523e102d92499778f1079bab2c8e5" [label=""];
  "sha256:f5796e11c03cb3208f208bd90e93254aa7d523e102d92499778f1079bab2c8e5" -> "sha256:2eb524e1009b4eb9e8e74ddf9b2207e8780129d0a76ef27c1fab1cb600efe580" [label=""];
  "sha256:2eb524e1009b4eb9e8e74ddf9b2207e8780129d0a76ef27c1fab1cb600efe580" -> "sha256:5ca464f9b904828421ba284fdf053a914b873374f03957586f4fcba8875baadf" [label=""];
  "sha256:f708a96a3990eee8568b8cc2af82f1f3404235567f96fff865f4add79d96cecb" -> "sha256:5ca464f9b904828421ba284fdf053a914b873374f03957586f4fcba8875baadf" [label=""];
  "sha256:5ca464f9b904828421ba284fdf053a914b873374f03957586f4fcba8875baadf" -> "sha256:90fac1abad646a16e45a7b56772623f2aa9f0fefd6063a2021f692794954ac5c" [label=""];
  "sha256:90fac1abad646a16e45a7b56772623f2aa9f0fefd6063a2021f692794954ac5c" -> "sha256:ebb2c7592ccbdacf961835800a45732f56af43707d70e46328e4a320a5d29526" [label=""];
}

