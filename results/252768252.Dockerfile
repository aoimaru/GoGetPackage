[app/sources/252768252.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:aa82503ddd95b0d815f3d4cdfff34f19f1fc5990c99529c89875f37465026d83" [label="/bin/sh -c apk add --no-cache git" shape="box"];
  "sha256:eba2b7780d29ed4672c2674970171265e50a14b129ebe48af4eec6d1b9371d7a" [label="local://context" shape="ellipse"];
  "sha256:90cde007f7eb81425ac87360d1b302f502781aaa7dfb5d1431ccc12b7f7f95ba" [label="copy{src=/, dest=/go/src/github.com/admiralobvious/brevis}" shape="note"];
  "sha256:2de5911776ab9d97219fff34f892749e80c16ac46690e62abe0f9cc6b139ebb4" [label="mkdir{path=/go/src/github.com/admiralobvious/brevis}" shape="note"];
  "sha256:2bba963e0c9ded4763f6f6f6e806f691fb578ca7666954bde54f343b33364927" [label="/bin/sh -c go-wrapper download" shape="box"];
  "sha256:7db7966235c3bf18674e829c0b82dec306d357b2db0fb95641930cb456ca5a3d" [label="/bin/sh -c go-wrapper install" shape="box"];
  "sha256:a1494da64f38584cc1e78a1d0a7f56b3f0a405239324608d6b64cfa839b53264" [label="sha256:a1494da64f38584cc1e78a1d0a7f56b3f0a405239324608d6b64cfa839b53264" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:aa82503ddd95b0d815f3d4cdfff34f19f1fc5990c99529c89875f37465026d83" [label=""];
  "sha256:aa82503ddd95b0d815f3d4cdfff34f19f1fc5990c99529c89875f37465026d83" -> "sha256:90cde007f7eb81425ac87360d1b302f502781aaa7dfb5d1431ccc12b7f7f95ba" [label=""];
  "sha256:eba2b7780d29ed4672c2674970171265e50a14b129ebe48af4eec6d1b9371d7a" -> "sha256:90cde007f7eb81425ac87360d1b302f502781aaa7dfb5d1431ccc12b7f7f95ba" [label=""];
  "sha256:90cde007f7eb81425ac87360d1b302f502781aaa7dfb5d1431ccc12b7f7f95ba" -> "sha256:2de5911776ab9d97219fff34f892749e80c16ac46690e62abe0f9cc6b139ebb4" [label=""];
  "sha256:2de5911776ab9d97219fff34f892749e80c16ac46690e62abe0f9cc6b139ebb4" -> "sha256:2bba963e0c9ded4763f6f6f6e806f691fb578ca7666954bde54f343b33364927" [label=""];
  "sha256:2bba963e0c9ded4763f6f6f6e806f691fb578ca7666954bde54f343b33364927" -> "sha256:7db7966235c3bf18674e829c0b82dec306d357b2db0fb95641930cb456ca5a3d" [label=""];
  "sha256:7db7966235c3bf18674e829c0b82dec306d357b2db0fb95641930cb456ca5a3d" -> "sha256:a1494da64f38584cc1e78a1d0a7f56b3f0a405239324608d6b64cfa839b53264" [label=""];
}

