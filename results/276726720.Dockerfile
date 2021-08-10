[app/sources/276726720.Dockerfile]
digraph {
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" [label="docker-image://docker.io/library/buildpack-deps:jessie" shape="ellipse"];
  "sha256:0e211cd05686a7e4e0a18aaf7cbf9110d2683e6e568ec7c683310990464b3d77" [label="local://context" shape="ellipse"];
  "sha256:aae5914d564b40f27385721c79502dd47f4adbfe3674178ab77f351644eb2c1e" [label="copy{src=/, dest=/usr/src/}" shape="note"];
  "sha256:c6f2074ce9b4f5bcbb7d3962c360c0265ee76a64c7635ca6ddeaacc1c62e20f8" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:8e42693cd3230467725c69b241a09e89721469fe4fdf7b455b6b1aa5632142e0" [label="/bin/sh -c gcc -g -Wall -static userns.c -o /usr/bin/userns-test \t&& gcc -g -Wall -static ns.c -o /usr/bin/ns-test \t&& gcc -g -Wall -static acct.c -o /usr/bin/acct-test \t&& gcc -g -Wall -static setuid.c -o /usr/bin/setuid-test \t&& gcc -g -Wall -static setgid.c -o /usr/bin/setgid-test \t&& gcc -g -Wall -static socket.c -o /usr/bin/socket-test \t&& gcc -g -Wall -static raw.c -o /usr/bin/raw-test \t&& gcc -g -Wall -static appletalk.c -o /usr/bin/appletalk-test" shape="box"];
  "sha256:f0213784bd277af3126caca23d907a5ca80d4a1a301c38bb5b0f080fe7ab38bd" [label="/bin/sh -c [ \"$(uname -m)\" = \"x86_64\" ] && gcc -s -m32 -nostdlib exit32.s -o /usr/bin/exit32-test || true" shape="box"];
  "sha256:a5ac728a94d8447949904661ad8474c654aa6b0eb3592c682e1458cbc595b0cf" [label="sha256:a5ac728a94d8447949904661ad8474c654aa6b0eb3592c682e1458cbc595b0cf" shape="plaintext"];
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" -> "sha256:aae5914d564b40f27385721c79502dd47f4adbfe3674178ab77f351644eb2c1e" [label=""];
  "sha256:0e211cd05686a7e4e0a18aaf7cbf9110d2683e6e568ec7c683310990464b3d77" -> "sha256:aae5914d564b40f27385721c79502dd47f4adbfe3674178ab77f351644eb2c1e" [label=""];
  "sha256:aae5914d564b40f27385721c79502dd47f4adbfe3674178ab77f351644eb2c1e" -> "sha256:c6f2074ce9b4f5bcbb7d3962c360c0265ee76a64c7635ca6ddeaacc1c62e20f8" [label=""];
  "sha256:c6f2074ce9b4f5bcbb7d3962c360c0265ee76a64c7635ca6ddeaacc1c62e20f8" -> "sha256:8e42693cd3230467725c69b241a09e89721469fe4fdf7b455b6b1aa5632142e0" [label=""];
  "sha256:8e42693cd3230467725c69b241a09e89721469fe4fdf7b455b6b1aa5632142e0" -> "sha256:f0213784bd277af3126caca23d907a5ca80d4a1a301c38bb5b0f080fe7ab38bd" [label=""];
  "sha256:f0213784bd277af3126caca23d907a5ca80d4a1a301c38bb5b0f080fe7ab38bd" -> "sha256:a5ac728a94d8447949904661ad8474c654aa6b0eb3592c682e1458cbc595b0cf" [label=""];
}

