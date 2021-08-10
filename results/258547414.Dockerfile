[app/sources/258547414.Dockerfile]
digraph {
  "sha256:c0c9aec2212d3966127c8c0dc86a7df72e3d7be0d49c99fab0e6cd1b968da4fb" [label="local://context" shape="ellipse"];
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" [label="docker-image://docker.io/library/buildpack-deps:jessie" shape="ellipse"];
  "sha256:825eac588a8813e296cd23ae81ff55f93fe1449b75011b300343619831bb5157" [label="copy{src=/, dest=/usr/src/}" shape="note"];
  "sha256:806295c31fc5b2792ca143d4c2fb8962ec73c03aebc69860af79f8aa42a5c6a6" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:2f15e7af76f6c45ff709b9da2be06e097b3aa4b5f6fa778bbf8fd97d8ee77554" [label="/bin/sh -c gcc -g -Wall -static userns.c -o /usr/bin/userns-test \t&& gcc -g -Wall -static ns.c -o /usr/bin/ns-test \t&& gcc -g -Wall -static acct.c -o /usr/bin/acct-test" shape="box"];
  "sha256:1a559bd3a3220fdb248df9f43ac56415649a9de66ee085d168aa39b84507f54e" [label="/bin/sh -c [ \"$(uname -m)\" = \"x86_64\" ] && gcc -s -m32 -nostdlib exit32.s -o /usr/bin/exit32-test || true" shape="box"];
  "sha256:988337f26f9d885832e2c22690742b1629296247bf91ccb07a83f64f5fd56814" [label="sha256:988337f26f9d885832e2c22690742b1629296247bf91ccb07a83f64f5fd56814" shape="plaintext"];
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" -> "sha256:825eac588a8813e296cd23ae81ff55f93fe1449b75011b300343619831bb5157" [label=""];
  "sha256:c0c9aec2212d3966127c8c0dc86a7df72e3d7be0d49c99fab0e6cd1b968da4fb" -> "sha256:825eac588a8813e296cd23ae81ff55f93fe1449b75011b300343619831bb5157" [label=""];
  "sha256:825eac588a8813e296cd23ae81ff55f93fe1449b75011b300343619831bb5157" -> "sha256:806295c31fc5b2792ca143d4c2fb8962ec73c03aebc69860af79f8aa42a5c6a6" [label=""];
  "sha256:806295c31fc5b2792ca143d4c2fb8962ec73c03aebc69860af79f8aa42a5c6a6" -> "sha256:2f15e7af76f6c45ff709b9da2be06e097b3aa4b5f6fa778bbf8fd97d8ee77554" [label=""];
  "sha256:2f15e7af76f6c45ff709b9da2be06e097b3aa4b5f6fa778bbf8fd97d8ee77554" -> "sha256:1a559bd3a3220fdb248df9f43ac56415649a9de66ee085d168aa39b84507f54e" [label=""];
  "sha256:1a559bd3a3220fdb248df9f43ac56415649a9de66ee085d168aa39b84507f54e" -> "sha256:988337f26f9d885832e2c22690742b1629296247bf91ccb07a83f64f5fd56814" [label=""];
}

