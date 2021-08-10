[app/sources/236847776.Dockerfile]
digraph {
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" [label="docker-image://docker.io/library/node:10" shape="ellipse"];
  "sha256:aae9757eceab3aab1f2519ca34d0768fd8c2376eea21318c7e4e37de3bb9460e" [label="/bin/sh -c mkdir /usr/src/app" shape="box"];
  "sha256:81fe4002e7060e2988bff4c3e4be5cc765f30c55fcffa8e0613d08f33e3cf4fa" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:558392458578cf6ae5d6247809faae841bd69a3e9b2b2445c177dbcd37efa1f4" [label="sha256:558392458578cf6ae5d6247809faae841bd69a3e9b2b2445c177dbcd37efa1f4" shape="plaintext"];
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" -> "sha256:aae9757eceab3aab1f2519ca34d0768fd8c2376eea21318c7e4e37de3bb9460e" [label=""];
  "sha256:aae9757eceab3aab1f2519ca34d0768fd8c2376eea21318c7e4e37de3bb9460e" -> "sha256:81fe4002e7060e2988bff4c3e4be5cc765f30c55fcffa8e0613d08f33e3cf4fa" [label=""];
  "sha256:81fe4002e7060e2988bff4c3e4be5cc765f30c55fcffa8e0613d08f33e3cf4fa" -> "sha256:558392458578cf6ae5d6247809faae841bd69a3e9b2b2445c177dbcd37efa1f4" [label=""];
}

