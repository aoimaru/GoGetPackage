[app/sources/429363443.Dockerfile]
digraph {
  "sha256:82008ce8313ee82eca7dec564933180d7f6fd993f48f5c83f99c7b0f83135551" [label="local://context" shape="ellipse"];
  "sha256:a587d3e16407b0bd81afc3fefd944d7d94761d5d7ef21a1c77c55fb35a7fc198" [label="docker-image://docker.io/library/debian:stable-slim" shape="ellipse"];
  "sha256:cd121857aabced811ee6379326094d5c8eb136821415a076bdb5404e3f3e23c8" [label="copy{src=/fluxd, dest=/usr/bin/fluxd}" shape="note"];
  "sha256:76f8c928cc2c41cf0593361deeb5467490d4d5b6f2b0e51a5e8576a979243351" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:3d47afb1bcedd739d326002fb33051227d709b11ba9713693f5fa465f91b2f49" [label="sha256:3d47afb1bcedd739d326002fb33051227d709b11ba9713693f5fa465f91b2f49" shape="plaintext"];
  "sha256:a587d3e16407b0bd81afc3fefd944d7d94761d5d7ef21a1c77c55fb35a7fc198" -> "sha256:cd121857aabced811ee6379326094d5c8eb136821415a076bdb5404e3f3e23c8" [label=""];
  "sha256:82008ce8313ee82eca7dec564933180d7f6fd993f48f5c83f99c7b0f83135551" -> "sha256:cd121857aabced811ee6379326094d5c8eb136821415a076bdb5404e3f3e23c8" [label=""];
  "sha256:cd121857aabced811ee6379326094d5c8eb136821415a076bdb5404e3f3e23c8" -> "sha256:76f8c928cc2c41cf0593361deeb5467490d4d5b6f2b0e51a5e8576a979243351" [label=""];
  "sha256:82008ce8313ee82eca7dec564933180d7f6fd993f48f5c83f99c7b0f83135551" -> "sha256:76f8c928cc2c41cf0593361deeb5467490d4d5b6f2b0e51a5e8576a979243351" [label=""];
  "sha256:76f8c928cc2c41cf0593361deeb5467490d4d5b6f2b0e51a5e8576a979243351" -> "sha256:3d47afb1bcedd739d326002fb33051227d709b11ba9713693f5fa465f91b2f49" [label=""];
}

