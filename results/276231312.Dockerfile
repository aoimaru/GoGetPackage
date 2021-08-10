[app/sources/276231312.Dockerfile]
digraph {
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" [label="docker-image://docker.io/library/buildpack-deps:jessie" shape="ellipse"];
  "sha256:c9d80c8eb05fd43cae096d21a9e57cbba524884c94d88b9d354c611cc9fb3232" [label="local://context" shape="ellipse"];
  "sha256:667f0c38cec7c9544c423bd1d6f496086c7ad8a259ceec2e722a4d2ded094e2d" [label="copy{src=/, dest=/usr/src/}" shape="note"];
  "sha256:268ae6527b2b6b2ce850145f757ac1b3823ad01ccd24e49bfb9cc31d0398005b" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:7aeb1fe44377e60effef0ad0137233a584e571dc2f794f9ac076b7b5bf2dad0f" [label="/bin/sh -c gcc -g -Wall -static nnp-test.c -o /usr/bin/nnp-test" shape="box"];
  "sha256:9db85342a5f3768565f7f0245a0edb812511043def2555c1fc9361cc660e248a" [label="/bin/sh -c chmod +s /usr/bin/nnp-test" shape="box"];
  "sha256:3d437dffff9b3783067bc37028e0bfdb10483ee1d09ac047d2a5d2c3c185a288" [label="sha256:3d437dffff9b3783067bc37028e0bfdb10483ee1d09ac047d2a5d2c3c185a288" shape="plaintext"];
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" -> "sha256:667f0c38cec7c9544c423bd1d6f496086c7ad8a259ceec2e722a4d2ded094e2d" [label=""];
  "sha256:c9d80c8eb05fd43cae096d21a9e57cbba524884c94d88b9d354c611cc9fb3232" -> "sha256:667f0c38cec7c9544c423bd1d6f496086c7ad8a259ceec2e722a4d2ded094e2d" [label=""];
  "sha256:667f0c38cec7c9544c423bd1d6f496086c7ad8a259ceec2e722a4d2ded094e2d" -> "sha256:268ae6527b2b6b2ce850145f757ac1b3823ad01ccd24e49bfb9cc31d0398005b" [label=""];
  "sha256:268ae6527b2b6b2ce850145f757ac1b3823ad01ccd24e49bfb9cc31d0398005b" -> "sha256:7aeb1fe44377e60effef0ad0137233a584e571dc2f794f9ac076b7b5bf2dad0f" [label=""];
  "sha256:7aeb1fe44377e60effef0ad0137233a584e571dc2f794f9ac076b7b5bf2dad0f" -> "sha256:9db85342a5f3768565f7f0245a0edb812511043def2555c1fc9361cc660e248a" [label=""];
  "sha256:9db85342a5f3768565f7f0245a0edb812511043def2555c1fc9361cc660e248a" -> "sha256:3d437dffff9b3783067bc37028e0bfdb10483ee1d09ac047d2a5d2c3c185a288" [label=""];
}

