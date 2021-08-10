[app/sources/302813511.Dockerfile]
digraph {
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" [label="docker-image://docker.io/library/fedora:28" shape="ellipse"];
  "sha256:4200dcfaab93fc36829b264c2fe6ce7e5897e1fe083e9908821264554b3bbf12" [label="/bin/sh -c dnf install -y qemu-img && dnf clean all" shape="box"];
  "sha256:291caca1c6bae8b94f34463d2d07fc5bff060b2711a04d7c83bede14a9a5ce4c" [label="/bin/sh -c mkdir /data" shape="box"];
  "sha256:df814898263efc5afcea06b0c176e78f33e659bbdfdbd48dbffbc7b18765716c" [label="local://context" shape="ellipse"];
  "sha256:f5b5186262f146fd714d97b47e18121891fd08b424eb02a5794a4e8964aca81e" [label="copy{src=/cdi-uploadserver, dest=/cdi-uploadserver}" shape="note"];
  "sha256:345096079dd21bee3162fddf12310ee6ee6931ec60c3ae47c530c83eed861529" [label="sha256:345096079dd21bee3162fddf12310ee6ee6931ec60c3ae47c530c83eed861529" shape="plaintext"];
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" -> "sha256:4200dcfaab93fc36829b264c2fe6ce7e5897e1fe083e9908821264554b3bbf12" [label=""];
  "sha256:4200dcfaab93fc36829b264c2fe6ce7e5897e1fe083e9908821264554b3bbf12" -> "sha256:291caca1c6bae8b94f34463d2d07fc5bff060b2711a04d7c83bede14a9a5ce4c" [label=""];
  "sha256:291caca1c6bae8b94f34463d2d07fc5bff060b2711a04d7c83bede14a9a5ce4c" -> "sha256:f5b5186262f146fd714d97b47e18121891fd08b424eb02a5794a4e8964aca81e" [label=""];
  "sha256:df814898263efc5afcea06b0c176e78f33e659bbdfdbd48dbffbc7b18765716c" -> "sha256:f5b5186262f146fd714d97b47e18121891fd08b424eb02a5794a4e8964aca81e" [label=""];
  "sha256:f5b5186262f146fd714d97b47e18121891fd08b424eb02a5794a4e8964aca81e" -> "sha256:345096079dd21bee3162fddf12310ee6ee6931ec60c3ae47c530c83eed861529" [label=""];
}

