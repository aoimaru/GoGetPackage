[app/sources/143853203.Dockerfile]
digraph {
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" [label="docker-image://docker.io/library/buildpack-deps:jessie" shape="ellipse"];
  "sha256:6adac82a105d10720aec20bec3a6a5cf428bd92adbcfdada8cb9676af2fa37b3" [label="local://context" shape="ellipse"];
  "sha256:420c8f889f45b7e0297bcdbde18b4a76f6b19697a2aae47f21d82395a56adec2" [label="copy{src=/, dest=/usr/src/}" shape="note"];
  "sha256:faa9a425a57417803d34729b930404e42c1de3c17e6e59b4856f5ad28941d620" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:b6fa5feeb148aa050e1276b429e276915fc51a92dac7cef760f4af8bc3e6866a" [label="/bin/sh -c gcc -g -Wall -static userns.c -o /usr/bin/userns-test \t&& gcc -g -Wall -static ns.c -o /usr/bin/ns-test \t&& gcc -g -Wall -static acct.c -o /usr/bin/acct-test \t&& gcc -g -Wall -static setuid.c -o /usr/bin/setuid-test \t&& gcc -g -Wall -static setgid.c -o /usr/bin/setgid-test \t&& gcc -g -Wall -static socket.c -o /usr/bin/socket-test \t&& gcc -g -Wall -static raw.c -o /usr/bin/raw-test" shape="box"];
  "sha256:bd4b1b4cae02ec58529dd457ee2da750924640980a7fbfb376e8731e30f101b4" [label="/bin/sh -c [ \"$(uname -m)\" = \"x86_64\" ] && gcc -s -m32 -nostdlib exit32.s -o /usr/bin/exit32-test || true" shape="box"];
  "sha256:b457c2e365828670674c91da585346631dadb6755952dc14c58501bcd24dda59" [label="sha256:b457c2e365828670674c91da585346631dadb6755952dc14c58501bcd24dda59" shape="plaintext"];
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" -> "sha256:420c8f889f45b7e0297bcdbde18b4a76f6b19697a2aae47f21d82395a56adec2" [label=""];
  "sha256:6adac82a105d10720aec20bec3a6a5cf428bd92adbcfdada8cb9676af2fa37b3" -> "sha256:420c8f889f45b7e0297bcdbde18b4a76f6b19697a2aae47f21d82395a56adec2" [label=""];
  "sha256:420c8f889f45b7e0297bcdbde18b4a76f6b19697a2aae47f21d82395a56adec2" -> "sha256:faa9a425a57417803d34729b930404e42c1de3c17e6e59b4856f5ad28941d620" [label=""];
  "sha256:faa9a425a57417803d34729b930404e42c1de3c17e6e59b4856f5ad28941d620" -> "sha256:b6fa5feeb148aa050e1276b429e276915fc51a92dac7cef760f4af8bc3e6866a" [label=""];
  "sha256:b6fa5feeb148aa050e1276b429e276915fc51a92dac7cef760f4af8bc3e6866a" -> "sha256:bd4b1b4cae02ec58529dd457ee2da750924640980a7fbfb376e8731e30f101b4" [label=""];
  "sha256:bd4b1b4cae02ec58529dd457ee2da750924640980a7fbfb376e8731e30f101b4" -> "sha256:b457c2e365828670674c91da585346631dadb6755952dc14c58501bcd24dda59" [label=""];
}

