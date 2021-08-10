[app/sources/275740061.Dockerfile]
digraph {
  "sha256:bc1614a39dd04fe28dd2320101a0e62966660a72a1f0b318e380754dd6d51619" [label="docker-image://docker.io/redash/redash:latest" shape="ellipse"];
  "sha256:00a3f19fb24c2fc3e226f97088effb54ae8a23b87bbea03f1387fae8fa867a0b" [label="mkdir{path=/app}" shape="note"];
  "sha256:13afc733f3ced93d62d325b05316665572c6d54e1f565ca606f2831d0b53b2f1" [label="sha256:13afc733f3ced93d62d325b05316665572c6d54e1f565ca606f2831d0b53b2f1" shape="plaintext"];
  "sha256:bc1614a39dd04fe28dd2320101a0e62966660a72a1f0b318e380754dd6d51619" -> "sha256:00a3f19fb24c2fc3e226f97088effb54ae8a23b87bbea03f1387fae8fa867a0b" [label=""];
  "sha256:00a3f19fb24c2fc3e226f97088effb54ae8a23b87bbea03f1387fae8fa867a0b" -> "sha256:13afc733f3ced93d62d325b05316665572c6d54e1f565ca606f2831d0b53b2f1" [label=""];
}

