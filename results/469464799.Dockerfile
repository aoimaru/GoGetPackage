[app/sources/469464799.Dockerfile]
digraph {
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" [label="docker-image://docker.io/library/buildpack-deps:jessie" shape="ellipse"];
  "sha256:0021671b3d4b3fe6ea5eeaf43610c68b0e0df621cdbb0e5f905f57923b4e9e36" [label="local://context" shape="ellipse"];
  "sha256:a749b1d251c1df112ac5e641c4c80cb727822d2b7727fa4accdef1bf3067d959" [label="copy{src=/, dest=/usr/src/}" shape="note"];
  "sha256:db3af801762e0f351af77762e0d4615e78ffab9a8427c35292b60b7a39a54d7a" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:db27d5544b6fb811a7072eccb29b0a8507bb5e0d2d1ccb3f9d5d5dea1b187f96" [label="/bin/sh -c gcc -g -Wall -static userns.c -o /usr/bin/userns-test \t&& gcc -g -Wall -static ns.c -o /usr/bin/ns-test \t&& gcc -g -Wall -static acct.c -o /usr/bin/acct-test \t&& gcc -g -Wall -static setuid.c -o /usr/bin/setuid-test \t&& gcc -g -Wall -static setgid.c -o /usr/bin/setgid-test \t&& gcc -g -Wall -static socket.c -o /usr/bin/socket-test \t&& gcc -g -Wall -static raw.c -o /usr/bin/raw-test" shape="box"];
  "sha256:955a867a5787718a2c5ef67fea7b6624fcc981ad7e8915892a70597826a7228c" [label="/bin/sh -c [ \"$(uname -m)\" = \"x86_64\" ] && gcc -s -m32 -nostdlib exit32.s -o /usr/bin/exit32-test || true" shape="box"];
  "sha256:ed3ab731fd397df871fb2bc6e6394465182ccab584c240844cf697cf67eee7c8" [label="sha256:ed3ab731fd397df871fb2bc6e6394465182ccab584c240844cf697cf67eee7c8" shape="plaintext"];
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" -> "sha256:a749b1d251c1df112ac5e641c4c80cb727822d2b7727fa4accdef1bf3067d959" [label=""];
  "sha256:0021671b3d4b3fe6ea5eeaf43610c68b0e0df621cdbb0e5f905f57923b4e9e36" -> "sha256:a749b1d251c1df112ac5e641c4c80cb727822d2b7727fa4accdef1bf3067d959" [label=""];
  "sha256:a749b1d251c1df112ac5e641c4c80cb727822d2b7727fa4accdef1bf3067d959" -> "sha256:db3af801762e0f351af77762e0d4615e78ffab9a8427c35292b60b7a39a54d7a" [label=""];
  "sha256:db3af801762e0f351af77762e0d4615e78ffab9a8427c35292b60b7a39a54d7a" -> "sha256:db27d5544b6fb811a7072eccb29b0a8507bb5e0d2d1ccb3f9d5d5dea1b187f96" [label=""];
  "sha256:db27d5544b6fb811a7072eccb29b0a8507bb5e0d2d1ccb3f9d5d5dea1b187f96" -> "sha256:955a867a5787718a2c5ef67fea7b6624fcc981ad7e8915892a70597826a7228c" [label=""];
  "sha256:955a867a5787718a2c5ef67fea7b6624fcc981ad7e8915892a70597826a7228c" -> "sha256:ed3ab731fd397df871fb2bc6e6394465182ccab584c240844cf697cf67eee7c8" [label=""];
}

