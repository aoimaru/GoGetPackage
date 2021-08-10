[app/sources/271165512.Dockerfile]
digraph {
  "sha256:b94b656bf7a2126656ecc057c0048b7904905297bbf184e7f0fe58ed21731e79" [label="local://context" shape="ellipse"];
  "sha256:85b709cdfaadecd4e22a195cfe08257ae541788a78e98a6ac636abc22b42eedc" [label="docker-image://docker.io/library/node:9" shape="ellipse"];
  "sha256:9a9cb5c99c316552fbd1a0a7ddf6d3b7c9913db7b0a1b3da1d634734a98dfefd" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:7a3ad2004ade17a2db4a5a74dcf146b6551efb5474dd015c4493cdcde20c6a04" [label="mkdir{path=/app}" shape="note"];
  "sha256:f9fc94ff93ba3caacb69d085ff414881eca5a9e101a998642bce913b35a31e72" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:a469f12d5a5786989fd40e9a6277aa08c9ec743bb8b198d54e0660180a519e80" [label="sha256:a469f12d5a5786989fd40e9a6277aa08c9ec743bb8b198d54e0660180a519e80" shape="plaintext"];
  "sha256:85b709cdfaadecd4e22a195cfe08257ae541788a78e98a6ac636abc22b42eedc" -> "sha256:9a9cb5c99c316552fbd1a0a7ddf6d3b7c9913db7b0a1b3da1d634734a98dfefd" [label=""];
  "sha256:9a9cb5c99c316552fbd1a0a7ddf6d3b7c9913db7b0a1b3da1d634734a98dfefd" -> "sha256:7a3ad2004ade17a2db4a5a74dcf146b6551efb5474dd015c4493cdcde20c6a04" [label=""];
  "sha256:7a3ad2004ade17a2db4a5a74dcf146b6551efb5474dd015c4493cdcde20c6a04" -> "sha256:f9fc94ff93ba3caacb69d085ff414881eca5a9e101a998642bce913b35a31e72" [label=""];
  "sha256:b94b656bf7a2126656ecc057c0048b7904905297bbf184e7f0fe58ed21731e79" -> "sha256:f9fc94ff93ba3caacb69d085ff414881eca5a9e101a998642bce913b35a31e72" [label=""];
  "sha256:f9fc94ff93ba3caacb69d085ff414881eca5a9e101a998642bce913b35a31e72" -> "sha256:a469f12d5a5786989fd40e9a6277aa08c9ec743bb8b198d54e0660180a519e80" [label=""];
}

