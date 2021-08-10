[app/sources/138987409.Dockerfile]
digraph {
  "sha256:74d32565f6859a579b6f2076e60cb6d9944c5769cbbb27c5bf2eb2a846579f69" [label="docker-image://docker.io/mdnwebdocs/kuma_base:latest" shape="ellipse"];
  "sha256:40d0dd2d1495a68e01c1bab44b9735257f786e052eb8d62038db0442dc519915" [label="local://context" shape="ellipse"];
  "sha256:f3e026b10ffb5e1ee0691a89f4199b18b399bea2b463af4863ad4d0ba16decdd" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:093a3788c12cea31a7c2663ff914e776fb47dd963e49fcc9d97af1ef23c4a1a3" [label="/bin/sh -c ENABLE_CANDIDATE_LANGUAGES=True     make localecompile build-static" shape="box"];
  "sha256:c01bdb79972fa8c4a07c79a0e4ecf50bdee3b3ed097db1853bac1c01a26d2844" [label="sha256:c01bdb79972fa8c4a07c79a0e4ecf50bdee3b3ed097db1853bac1c01a26d2844" shape="plaintext"];
  "sha256:74d32565f6859a579b6f2076e60cb6d9944c5769cbbb27c5bf2eb2a846579f69" -> "sha256:f3e026b10ffb5e1ee0691a89f4199b18b399bea2b463af4863ad4d0ba16decdd" [label=""];
  "sha256:40d0dd2d1495a68e01c1bab44b9735257f786e052eb8d62038db0442dc519915" -> "sha256:f3e026b10ffb5e1ee0691a89f4199b18b399bea2b463af4863ad4d0ba16decdd" [label=""];
  "sha256:f3e026b10ffb5e1ee0691a89f4199b18b399bea2b463af4863ad4d0ba16decdd" -> "sha256:093a3788c12cea31a7c2663ff914e776fb47dd963e49fcc9d97af1ef23c4a1a3" [label=""];
  "sha256:093a3788c12cea31a7c2663ff914e776fb47dd963e49fcc9d97af1ef23c4a1a3" -> "sha256:c01bdb79972fa8c4a07c79a0e4ecf50bdee3b3ed097db1853bac1c01a26d2844" [label=""];
}

