[app/sources/358959526.Dockerfile]
digraph {
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" [label="docker-image://docker.io/library/golang:1.7" shape="ellipse"];
  "sha256:3987146b8a2cb772daaa9fdd54c39f5b54333ebc36c315a2e4c1d6dbae2056e1" [label="/bin/sh -c echo $GOPATH" shape="box"];
  "sha256:6ef3a340b6d4adce535a77d67748b8763775bafab769a021795bece2832e7a15" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/gobuffalo/pop" shape="box"];
  "sha256:58ec68d79c5af7375a7f1ed8531cd8467d861ab2ebbc302fc8f7988be38341b2" [label="mkdir{path=/src/github.com/gobuffalo/pop}" shape="note"];
  "sha256:e61e8f580b10f64eec3dd29c829757643c1c1be5548b783b2160e47698f16540" [label="local://context" shape="ellipse"];
  "sha256:1d1c0c9eae705a99550cbfe71213732f66850a38e0d4e6842990be8fa378d0e1" [label="copy{src=/, dest=/src/github.com/gobuffalo/pop/}" shape="note"];
  "sha256:518202254f05f06a0e8ab4f42cf2a66447842dd33e1f6b8dedb6d23e98514b51" [label="/bin/sh -c go get -t -v ./..." shape="box"];
  "sha256:b4bf9e31dc59c07253e587c7a95a5bf3d1d78d1fed75c05eaca8b19c7c8f4196" [label="/bin/sh -c SODA_DIALECT=sqlite go test ./..." shape="box"];
  "sha256:b598f3aadd016a8b9532272bed5049a534b94dae22ab5ea8b4030334a983a49a" [label="sha256:b598f3aadd016a8b9532272bed5049a534b94dae22ab5ea8b4030334a983a49a" shape="plaintext"];
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" -> "sha256:3987146b8a2cb772daaa9fdd54c39f5b54333ebc36c315a2e4c1d6dbae2056e1" [label=""];
  "sha256:3987146b8a2cb772daaa9fdd54c39f5b54333ebc36c315a2e4c1d6dbae2056e1" -> "sha256:6ef3a340b6d4adce535a77d67748b8763775bafab769a021795bece2832e7a15" [label=""];
  "sha256:6ef3a340b6d4adce535a77d67748b8763775bafab769a021795bece2832e7a15" -> "sha256:58ec68d79c5af7375a7f1ed8531cd8467d861ab2ebbc302fc8f7988be38341b2" [label=""];
  "sha256:58ec68d79c5af7375a7f1ed8531cd8467d861ab2ebbc302fc8f7988be38341b2" -> "sha256:1d1c0c9eae705a99550cbfe71213732f66850a38e0d4e6842990be8fa378d0e1" [label=""];
  "sha256:e61e8f580b10f64eec3dd29c829757643c1c1be5548b783b2160e47698f16540" -> "sha256:1d1c0c9eae705a99550cbfe71213732f66850a38e0d4e6842990be8fa378d0e1" [label=""];
  "sha256:1d1c0c9eae705a99550cbfe71213732f66850a38e0d4e6842990be8fa378d0e1" -> "sha256:518202254f05f06a0e8ab4f42cf2a66447842dd33e1f6b8dedb6d23e98514b51" [label=""];
  "sha256:518202254f05f06a0e8ab4f42cf2a66447842dd33e1f6b8dedb6d23e98514b51" -> "sha256:b4bf9e31dc59c07253e587c7a95a5bf3d1d78d1fed75c05eaca8b19c7c8f4196" [label=""];
  "sha256:b4bf9e31dc59c07253e587c7a95a5bf3d1d78d1fed75c05eaca8b19c7c8f4196" -> "sha256:b598f3aadd016a8b9532272bed5049a534b94dae22ab5ea8b4030334a983a49a" [label=""];
}

