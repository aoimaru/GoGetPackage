[app/sources/448022715.Dockerfile]
digraph {
  "sha256:a04b82fc03df840bcb8756a44b5f55274d0f434a73330ee651d560b9c54e20e9" [label="docker-image://docker.io/xales/byond:512-latest" shape="ellipse"];
  "sha256:f6f329b169e3ae41ba559bbe149417486d401e760f1686b77d0f3804a360fe13" [label="local://context" shape="ellipse"];
  "sha256:2477fe6c44f6cb02c24cfc9fe3f0aabfd3f6a8f107ad6e04a0a52f2e4306025a" [label="copy{src=/, dest=/bs12}" shape="note"];
  "sha256:09eda8ac81725cd8e9e52acde995dca841691d04f28590a1e2bc3d94b6542dba" [label="mkdir{path=/bs12}" shape="note"];
  "sha256:582313327731a51ad5e9a924773df65fb561c26feba227ff176aff8f7cf28eaa" [label="/bin/sh -c apt-get update && apt-get install -y gosu" shape="box"];
  "sha256:a6a67254da6b8a92d8388e484bb070c515d80dacdd1e8ba60a248f0c0e162384" [label="/bin/sh -c scripts/dm.sh $BUILD_ARGS baystation12.dme" shape="box"];
  "sha256:94c1d5f0fe18fd102e52205d290549a982ffa07019350ea9cc13177d02f7679a" [label="sha256:94c1d5f0fe18fd102e52205d290549a982ffa07019350ea9cc13177d02f7679a" shape="plaintext"];
  "sha256:a04b82fc03df840bcb8756a44b5f55274d0f434a73330ee651d560b9c54e20e9" -> "sha256:2477fe6c44f6cb02c24cfc9fe3f0aabfd3f6a8f107ad6e04a0a52f2e4306025a" [label=""];
  "sha256:f6f329b169e3ae41ba559bbe149417486d401e760f1686b77d0f3804a360fe13" -> "sha256:2477fe6c44f6cb02c24cfc9fe3f0aabfd3f6a8f107ad6e04a0a52f2e4306025a" [label=""];
  "sha256:2477fe6c44f6cb02c24cfc9fe3f0aabfd3f6a8f107ad6e04a0a52f2e4306025a" -> "sha256:09eda8ac81725cd8e9e52acde995dca841691d04f28590a1e2bc3d94b6542dba" [label=""];
  "sha256:09eda8ac81725cd8e9e52acde995dca841691d04f28590a1e2bc3d94b6542dba" -> "sha256:582313327731a51ad5e9a924773df65fb561c26feba227ff176aff8f7cf28eaa" [label=""];
  "sha256:582313327731a51ad5e9a924773df65fb561c26feba227ff176aff8f7cf28eaa" -> "sha256:a6a67254da6b8a92d8388e484bb070c515d80dacdd1e8ba60a248f0c0e162384" [label=""];
  "sha256:a6a67254da6b8a92d8388e484bb070c515d80dacdd1e8ba60a248f0c0e162384" -> "sha256:94c1d5f0fe18fd102e52205d290549a982ffa07019350ea9cc13177d02f7679a" [label=""];
}

