[app/sources/372224658.Dockerfile]
digraph {
  "sha256:e204ead475d569ccafa3b7cb8ca4a35165890846afdc59d3f11c6c2a1461f322" [label="docker-image://docker.io/library/deadbeef-builder:latest" shape="ellipse"];
  "sha256:65d5aa56fbe5bdc25bff2476d5031c8229b2919f926193243f57fd61ee732bee" [label="mkdir{path=/usr/src/deadbeef}" shape="note"];
  "sha256:8505575f5867cfa5cdd355baf74624158c9c4819a4d9d1efee217d4ed3424892" [label="local://context" shape="ellipse"];
  "sha256:e564dd0f4f176a16df4f5ef430f17dc354b44cf7bffde35b9a68b6ef5299435a" [label="copy{src=/, dest=/usr/src/deadbeef}" shape="note"];
  "sha256:741edbe7bfde80cc0eb4ec3649d2d7cf70710f99570aacf7da82ae6c2e252449" [label="sha256:741edbe7bfde80cc0eb4ec3649d2d7cf70710f99570aacf7da82ae6c2e252449" shape="plaintext"];
  "sha256:e204ead475d569ccafa3b7cb8ca4a35165890846afdc59d3f11c6c2a1461f322" -> "sha256:65d5aa56fbe5bdc25bff2476d5031c8229b2919f926193243f57fd61ee732bee" [label=""];
  "sha256:65d5aa56fbe5bdc25bff2476d5031c8229b2919f926193243f57fd61ee732bee" -> "sha256:e564dd0f4f176a16df4f5ef430f17dc354b44cf7bffde35b9a68b6ef5299435a" [label=""];
  "sha256:8505575f5867cfa5cdd355baf74624158c9c4819a4d9d1efee217d4ed3424892" -> "sha256:e564dd0f4f176a16df4f5ef430f17dc354b44cf7bffde35b9a68b6ef5299435a" [label=""];
  "sha256:e564dd0f4f176a16df4f5ef430f17dc354b44cf7bffde35b9a68b6ef5299435a" -> "sha256:741edbe7bfde80cc0eb4ec3649d2d7cf70710f99570aacf7da82ae6c2e252449" [label=""];
}

