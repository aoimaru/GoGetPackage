[app/sources/158118571.Dockerfile]
digraph {
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" [label="docker-image://docker.io/library/buildpack-deps:jessie" shape="ellipse"];
  "sha256:c361423fbc3763266a08c981b483deb824eae02b3c247ccff4879a373379e27b" [label="local://context" shape="ellipse"];
  "sha256:95850499f2d10b54ce55d4051e881293ee1eef7310a25fde4a4554d88cb0f9a6" [label="copy{src=/, dest=/usr/src/}" shape="note"];
  "sha256:8a87d5364d5b07a6ac366017a5da96923da482f3816ea60a603b179738f57d75" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:a572aa863c7faef9658d63659b4e2dc60ca94283af886ad6a08cb0cb250b7cac" [label="/bin/sh -c gcc -g -Wall -static userns.c -o /usr/bin/userns-test \t&& gcc -g -Wall -static ns.c -o /usr/bin/ns-test \t&& gcc -g -Wall -static acct.c -o /usr/bin/acct-test \t&& gcc -g -Wall -static setuid.c -o /usr/bin/setuid-test \t&& gcc -g -Wall -static setgid.c -o /usr/bin/setgid-test \t&& gcc -g -Wall -static socket.c -o /usr/bin/socket-test \t&& gcc -g -Wall -static raw.c -o /usr/bin/raw-test" shape="box"];
  "sha256:a557e50ce846e5bf2eda7d9a6f1d0dd24288fd205151e10d3525a110a8d1a276" [label="/bin/sh -c [ \"$(uname -m)\" = \"x86_64\" ] && gcc -s -m32 -nostdlib exit32.s -o /usr/bin/exit32-test || true" shape="box"];
  "sha256:2ef94d6357c73a7ceefb7be0fc16be15f500824b549c37caea990984c0de8a6e" [label="sha256:2ef94d6357c73a7ceefb7be0fc16be15f500824b549c37caea990984c0de8a6e" shape="plaintext"];
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" -> "sha256:95850499f2d10b54ce55d4051e881293ee1eef7310a25fde4a4554d88cb0f9a6" [label=""];
  "sha256:c361423fbc3763266a08c981b483deb824eae02b3c247ccff4879a373379e27b" -> "sha256:95850499f2d10b54ce55d4051e881293ee1eef7310a25fde4a4554d88cb0f9a6" [label=""];
  "sha256:95850499f2d10b54ce55d4051e881293ee1eef7310a25fde4a4554d88cb0f9a6" -> "sha256:8a87d5364d5b07a6ac366017a5da96923da482f3816ea60a603b179738f57d75" [label=""];
  "sha256:8a87d5364d5b07a6ac366017a5da96923da482f3816ea60a603b179738f57d75" -> "sha256:a572aa863c7faef9658d63659b4e2dc60ca94283af886ad6a08cb0cb250b7cac" [label=""];
  "sha256:a572aa863c7faef9658d63659b4e2dc60ca94283af886ad6a08cb0cb250b7cac" -> "sha256:a557e50ce846e5bf2eda7d9a6f1d0dd24288fd205151e10d3525a110a8d1a276" [label=""];
  "sha256:a557e50ce846e5bf2eda7d9a6f1d0dd24288fd205151e10d3525a110a8d1a276" -> "sha256:2ef94d6357c73a7ceefb7be0fc16be15f500824b549c37caea990984c0de8a6e" [label=""];
}

