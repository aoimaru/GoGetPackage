[app/sources/252768313.Dockerfile]
digraph {
  "sha256:1a587a112787dfa944bd2071293e8965734f42d8297ff749762b5400512ccbfb" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:beec7f05e19cf138586d4cc86c95c7bc40f69615aac809a73f698cfb170e4a37" [label="/bin/sh -c apt-get update && apt-get -y install curl jq && apt-get clean -q" shape="box"];
  "sha256:df59917aa0b7ca6abed18c26c55f5b02a36b2f272a58ad186533b46e896fd8f8" [label="copy{src=/startup.sh, dest=/scripts/startup.sh}" shape="note"];
  "sha256:6feddb6fc28575962cda64f2edb6acc81bee7f35ffdda2e1e573488b56f3934b" [label="sha256:6feddb6fc28575962cda64f2edb6acc81bee7f35ffdda2e1e573488b56f3934b" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:beec7f05e19cf138586d4cc86c95c7bc40f69615aac809a73f698cfb170e4a37" [label=""];
  "sha256:beec7f05e19cf138586d4cc86c95c7bc40f69615aac809a73f698cfb170e4a37" -> "sha256:df59917aa0b7ca6abed18c26c55f5b02a36b2f272a58ad186533b46e896fd8f8" [label=""];
  "sha256:1a587a112787dfa944bd2071293e8965734f42d8297ff749762b5400512ccbfb" -> "sha256:df59917aa0b7ca6abed18c26c55f5b02a36b2f272a58ad186533b46e896fd8f8" [label=""];
  "sha256:df59917aa0b7ca6abed18c26c55f5b02a36b2f272a58ad186533b46e896fd8f8" -> "sha256:6feddb6fc28575962cda64f2edb6acc81bee7f35ffdda2e1e573488b56f3934b" [label=""];
}

