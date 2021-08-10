[app/sources/273937698.Dockerfile]
digraph {
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" [label="docker-image://docker.io/library/buildpack-deps:jessie" shape="ellipse"];
  "sha256:a6108498c37a51aca331a5fef516a06b82277d3f8b9e413e953d47621a8a859e" [label="local://context" shape="ellipse"];
  "sha256:056fb74bbb599771a1a5d374065de942d655724ea37301ea36c72f80e54b0fe5" [label="copy{src=/, dest=/usr/src/}" shape="note"];
  "sha256:cf23bb7284e95cbe8cf4fdd6339f69a1badaac46f45f208d67de038ec8fadf4d" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:47c743f4cd782459d39bbb0db7a744b4c4bceaef3d4893e58d83c2d279b43f11" [label="/bin/sh -c gcc -g -Wall -static userns.c -o /usr/bin/userns-test \t&& gcc -g -Wall -static ns.c -o /usr/bin/ns-test \t&& gcc -g -Wall -static acct.c -o /usr/bin/acct-test \t&& gcc -g -Wall -static setuid.c -o /usr/bin/setuid-test \t&& gcc -g -Wall -static setgid.c -o /usr/bin/setgid-test \t&& gcc -g -Wall -static socket.c -o /usr/bin/socket-test \t&& gcc -g -Wall -static raw.c -o /usr/bin/raw-test" shape="box"];
  "sha256:b21c0974aa58771f3b8302526ed3407b9b319ca8aee57448c570ebbbd6542f06" [label="/bin/sh -c [ \"$(uname -m)\" = \"x86_64\" ] && gcc -s -m32 -nostdlib exit32.s -o /usr/bin/exit32-test || true" shape="box"];
  "sha256:c5c02f897a480892341e0aba513d35381e256e31fec473c0af91d4ded1ff5b91" [label="sha256:c5c02f897a480892341e0aba513d35381e256e31fec473c0af91d4ded1ff5b91" shape="plaintext"];
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" -> "sha256:056fb74bbb599771a1a5d374065de942d655724ea37301ea36c72f80e54b0fe5" [label=""];
  "sha256:a6108498c37a51aca331a5fef516a06b82277d3f8b9e413e953d47621a8a859e" -> "sha256:056fb74bbb599771a1a5d374065de942d655724ea37301ea36c72f80e54b0fe5" [label=""];
  "sha256:056fb74bbb599771a1a5d374065de942d655724ea37301ea36c72f80e54b0fe5" -> "sha256:cf23bb7284e95cbe8cf4fdd6339f69a1badaac46f45f208d67de038ec8fadf4d" [label=""];
  "sha256:cf23bb7284e95cbe8cf4fdd6339f69a1badaac46f45f208d67de038ec8fadf4d" -> "sha256:47c743f4cd782459d39bbb0db7a744b4c4bceaef3d4893e58d83c2d279b43f11" [label=""];
  "sha256:47c743f4cd782459d39bbb0db7a744b4c4bceaef3d4893e58d83c2d279b43f11" -> "sha256:b21c0974aa58771f3b8302526ed3407b9b319ca8aee57448c570ebbbd6542f06" [label=""];
  "sha256:b21c0974aa58771f3b8302526ed3407b9b319ca8aee57448c570ebbbd6542f06" -> "sha256:c5c02f897a480892341e0aba513d35381e256e31fec473c0af91d4ded1ff5b91" [label=""];
}

