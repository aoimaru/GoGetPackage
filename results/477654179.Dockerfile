[app/sources/477654179.Dockerfile]
digraph {
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" [label="docker-image://docker.io/library/nginx:alpine" shape="ellipse"];
  "sha256:28b9a64e9fae9ef4f9378346abc0e49fe68a9d03ff871a572a46af13ffd295ec" [label="local://context" shape="ellipse"];
  "sha256:140d1c219ddac13178697938a0c92bd96a7b4864e8069be87ad729a769ecb765" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:a02c0e99993c8afdc5373d742aa76dde79a766ae2464e8044c524429b2c784f8" [label="sha256:a02c0e99993c8afdc5373d742aa76dde79a766ae2464e8044c524429b2c784f8" shape="plaintext"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" -> "sha256:140d1c219ddac13178697938a0c92bd96a7b4864e8069be87ad729a769ecb765" [label=""];
  "sha256:28b9a64e9fae9ef4f9378346abc0e49fe68a9d03ff871a572a46af13ffd295ec" -> "sha256:140d1c219ddac13178697938a0c92bd96a7b4864e8069be87ad729a769ecb765" [label=""];
  "sha256:140d1c219ddac13178697938a0c92bd96a7b4864e8069be87ad729a769ecb765" -> "sha256:a02c0e99993c8afdc5373d742aa76dde79a766ae2464e8044c524429b2c784f8" [label=""];
}

