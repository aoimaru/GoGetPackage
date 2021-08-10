[app/sources/279232149.Dockerfile]
digraph {
  "sha256:3589c489896478f19f1c615eb78569f0622247d3e309b41e27dad09b575a5d38" [label="docker-image://docker.io/formapro/nginx-php-fpm:latest-all-exts" shape="ellipse"];
  "sha256:4a7930233e3fa82c8c8ffdcac36e98166c5ed0a624dbc8b0d18d8075f43595fe" [label="local://context" shape="ellipse"];
  "sha256:8a871d19c087af0f938c8c13825dce79ad83cc8355aab4c0b701f1d3a762bb24" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:419758621c77c69fc034939af92010b5d0e2d7149be5917970a41e7966539c8a" [label="mkdir{path=/app}" shape="note"];
  "sha256:95f564cabf19c155a00ad54fb12c3a7e28efe0de36ebe6c51542648763f3d4f6" [label="sha256:95f564cabf19c155a00ad54fb12c3a7e28efe0de36ebe6c51542648763f3d4f6" shape="plaintext"];
  "sha256:3589c489896478f19f1c615eb78569f0622247d3e309b41e27dad09b575a5d38" -> "sha256:8a871d19c087af0f938c8c13825dce79ad83cc8355aab4c0b701f1d3a762bb24" [label=""];
  "sha256:4a7930233e3fa82c8c8ffdcac36e98166c5ed0a624dbc8b0d18d8075f43595fe" -> "sha256:8a871d19c087af0f938c8c13825dce79ad83cc8355aab4c0b701f1d3a762bb24" [label=""];
  "sha256:8a871d19c087af0f938c8c13825dce79ad83cc8355aab4c0b701f1d3a762bb24" -> "sha256:419758621c77c69fc034939af92010b5d0e2d7149be5917970a41e7966539c8a" [label=""];
  "sha256:419758621c77c69fc034939af92010b5d0e2d7149be5917970a41e7966539c8a" -> "sha256:95f564cabf19c155a00ad54fb12c3a7e28efe0de36ebe6c51542648763f3d4f6" [label=""];
}

