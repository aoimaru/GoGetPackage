[app/sources/217530968.Dockerfile]
digraph {
  "sha256:bc53e0079e89436a804c21643f82280958ade9442de88710c2c441573cb147d8" [label="local://context" shape="ellipse"];
  "sha256:2930a8afa242a981b9d830abde28a0961dfa2b1aa86956901998a26b1b896afc" [label="docker-image://docker.io/ouspg/libfuzzer-base:latest" shape="ellipse"];
  "sha256:3d410a2aa6f2c6463a7a35cf08206ca763a4db889c9b5bf111ee02ea74d3139e" [label="/bin/sh -c apt-get update && apt-get -y build-dep lua5.3" shape="box"];
  "sha256:5e6f388b4839d4664e0cacb0e8c2f3266d6af3d13669b633d90e7499c69a69a3" [label="https://www.lua.org/ftp/lua-5.3.3.tar.gz" shape="ellipse"];
  "sha256:fab702010bfdbf1626d4621e4f90c01c7f04558d9ec3c9ea07b0336c73613f71" [label="copy{src=/lua-5.3.3.tar.gz, dest=/src/}" shape="note"];
  "sha256:9f5b67d3321310aad5e85b6b16a2ebd86ebd1d34e8afc360ac02dd0311ab1943" [label="/bin/sh -c tar -C /src -zxf /src/lua-5.3.3.tar.gz" shape="box"];
  "sha256:2f272786fb9bac699f8bdfcb35abb0ec082129edc3b82837c89da1d3a6ad24d9" [label="copy{src=/lua-fuzzer.c, dest=/src/lua-5.3.3}" shape="note"];
  "sha256:e2fbc44aabf2574a1805206c4cdc72041accd2e161a8e5cf329604f13aa5a42e" [label="copy{src=/samples, dest=/samples/libfuzzer-lua}" shape="note"];
  "sha256:948fd6df1f0cda6e35ee79cfbb6e9c9f1640ecff30f3c35b8d3356efc8da1c71" [label="copy{src=/build.sh, dest=/src/scripts/}" shape="note"];
  "sha256:9f5986d907be14d55671667068f1feb891d905755c115648f0dbf9b6383eb66a" [label="/bin/sh -c bash /src/scripts/build.sh" shape="box"];
  "sha256:65431434920ac8def39f1d20ba7c89555fbf03f743a93933253a7c1ca7691fc5" [label="sha256:65431434920ac8def39f1d20ba7c89555fbf03f743a93933253a7c1ca7691fc5" shape="plaintext"];
  "sha256:2930a8afa242a981b9d830abde28a0961dfa2b1aa86956901998a26b1b896afc" -> "sha256:3d410a2aa6f2c6463a7a35cf08206ca763a4db889c9b5bf111ee02ea74d3139e" [label=""];
  "sha256:3d410a2aa6f2c6463a7a35cf08206ca763a4db889c9b5bf111ee02ea74d3139e" -> "sha256:fab702010bfdbf1626d4621e4f90c01c7f04558d9ec3c9ea07b0336c73613f71" [label=""];
  "sha256:5e6f388b4839d4664e0cacb0e8c2f3266d6af3d13669b633d90e7499c69a69a3" -> "sha256:fab702010bfdbf1626d4621e4f90c01c7f04558d9ec3c9ea07b0336c73613f71" [label=""];
  "sha256:fab702010bfdbf1626d4621e4f90c01c7f04558d9ec3c9ea07b0336c73613f71" -> "sha256:9f5b67d3321310aad5e85b6b16a2ebd86ebd1d34e8afc360ac02dd0311ab1943" [label=""];
  "sha256:9f5b67d3321310aad5e85b6b16a2ebd86ebd1d34e8afc360ac02dd0311ab1943" -> "sha256:2f272786fb9bac699f8bdfcb35abb0ec082129edc3b82837c89da1d3a6ad24d9" [label=""];
  "sha256:bc53e0079e89436a804c21643f82280958ade9442de88710c2c441573cb147d8" -> "sha256:2f272786fb9bac699f8bdfcb35abb0ec082129edc3b82837c89da1d3a6ad24d9" [label=""];
  "sha256:2f272786fb9bac699f8bdfcb35abb0ec082129edc3b82837c89da1d3a6ad24d9" -> "sha256:e2fbc44aabf2574a1805206c4cdc72041accd2e161a8e5cf329604f13aa5a42e" [label=""];
  "sha256:bc53e0079e89436a804c21643f82280958ade9442de88710c2c441573cb147d8" -> "sha256:e2fbc44aabf2574a1805206c4cdc72041accd2e161a8e5cf329604f13aa5a42e" [label=""];
  "sha256:e2fbc44aabf2574a1805206c4cdc72041accd2e161a8e5cf329604f13aa5a42e" -> "sha256:948fd6df1f0cda6e35ee79cfbb6e9c9f1640ecff30f3c35b8d3356efc8da1c71" [label=""];
  "sha256:bc53e0079e89436a804c21643f82280958ade9442de88710c2c441573cb147d8" -> "sha256:948fd6df1f0cda6e35ee79cfbb6e9c9f1640ecff30f3c35b8d3356efc8da1c71" [label=""];
  "sha256:948fd6df1f0cda6e35ee79cfbb6e9c9f1640ecff30f3c35b8d3356efc8da1c71" -> "sha256:9f5986d907be14d55671667068f1feb891d905755c115648f0dbf9b6383eb66a" [label=""];
  "sha256:9f5986d907be14d55671667068f1feb891d905755c115648f0dbf9b6383eb66a" -> "sha256:65431434920ac8def39f1d20ba7c89555fbf03f743a93933253a7c1ca7691fc5" [label=""];
}

