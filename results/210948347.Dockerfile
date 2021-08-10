[app/sources/210948347.Dockerfile]
digraph {
  "sha256:09fec01242505f736a25c29cde3dec79adf5279f5eef9c76359ccf7016eac246" [label="docker-image://docker.io/library/redis:3.2.12-alpine" shape="ellipse"];
  "sha256:3a8e051063cd7a006f4064ab4d9e116328d915dc0b7ae009788e554957dc8a93" [label="/bin/sh -c apk add --no-cache         curl         bash" shape="box"];
  "sha256:b80adb9ea0bc8aeb952b65f5c56c8b07349fe9c108c47bd5ff805d4210dcd7aa" [label="local://context" shape="ellipse"];
  "sha256:0aa1f036e137cf4dd6eafce6434eecfb7800161d4986fb00c15d2b3eb23a0412" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:1ff7851994491e81c0a8123bbbf179c22caa0bfb4f509ef663abc615b874e38c" [label="/bin/sh -c chmod +x /docker-entrypoint.sh" shape="box"];
  "sha256:a31da750758d28efb04fee84f3d3689c078425de9cc67bee1a3adb9a5744e452" [label="sha256:a31da750758d28efb04fee84f3d3689c078425de9cc67bee1a3adb9a5744e452" shape="plaintext"];
  "sha256:09fec01242505f736a25c29cde3dec79adf5279f5eef9c76359ccf7016eac246" -> "sha256:3a8e051063cd7a006f4064ab4d9e116328d915dc0b7ae009788e554957dc8a93" [label=""];
  "sha256:3a8e051063cd7a006f4064ab4d9e116328d915dc0b7ae009788e554957dc8a93" -> "sha256:0aa1f036e137cf4dd6eafce6434eecfb7800161d4986fb00c15d2b3eb23a0412" [label=""];
  "sha256:b80adb9ea0bc8aeb952b65f5c56c8b07349fe9c108c47bd5ff805d4210dcd7aa" -> "sha256:0aa1f036e137cf4dd6eafce6434eecfb7800161d4986fb00c15d2b3eb23a0412" [label=""];
  "sha256:0aa1f036e137cf4dd6eafce6434eecfb7800161d4986fb00c15d2b3eb23a0412" -> "sha256:1ff7851994491e81c0a8123bbbf179c22caa0bfb4f509ef663abc615b874e38c" [label=""];
  "sha256:1ff7851994491e81c0a8123bbbf179c22caa0bfb4f509ef663abc615b874e38c" -> "sha256:a31da750758d28efb04fee84f3d3689c078425de9cc67bee1a3adb9a5744e452" [label=""];
}

