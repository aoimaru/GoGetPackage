[app/sources/465375654.Dockerfile]
digraph {
  "sha256:b4b0544301f38dff24b74f6c3b480d9a6598cd88789c1e9ee450335279b587f8" [label="docker-image://docker.io/rocker/r-ver:3.5.0" shape="ellipse"];
  "sha256:19b360291d22a311eda27351c033e40e6acea82c634c081aa1bf64be0f8d58d1" [label="/bin/sh -c apt-get update -qq && apt-get install -y   libssl-dev   libcurl4-gnutls-dev" shape="box"];
  "sha256:73ddd3d57b5518601e4f097e56c62e072965d139bc0ed45f6efaff8798e2be15" [label="/bin/sh -c R -e \"install.packages('plumber')\"" shape="box"];
  "sha256:34e7bd09b8fa1956ac7dbec968005912997c6a0ece8587071e795ae992a21b8f" [label="local://context" shape="ellipse"];
  "sha256:2f6b9139bcecb3b110413b5b62e48296db4d7e68c33e8ed35d7c6d7914dc763d" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:be1fcf1f9bad476ace6872cad8d0846cce9dea95ee995aa9c08c529c0ef5062f" [label="sha256:be1fcf1f9bad476ace6872cad8d0846cce9dea95ee995aa9c08c529c0ef5062f" shape="plaintext"];
  "sha256:b4b0544301f38dff24b74f6c3b480d9a6598cd88789c1e9ee450335279b587f8" -> "sha256:19b360291d22a311eda27351c033e40e6acea82c634c081aa1bf64be0f8d58d1" [label=""];
  "sha256:19b360291d22a311eda27351c033e40e6acea82c634c081aa1bf64be0f8d58d1" -> "sha256:73ddd3d57b5518601e4f097e56c62e072965d139bc0ed45f6efaff8798e2be15" [label=""];
  "sha256:73ddd3d57b5518601e4f097e56c62e072965d139bc0ed45f6efaff8798e2be15" -> "sha256:2f6b9139bcecb3b110413b5b62e48296db4d7e68c33e8ed35d7c6d7914dc763d" [label=""];
  "sha256:34e7bd09b8fa1956ac7dbec968005912997c6a0ece8587071e795ae992a21b8f" -> "sha256:2f6b9139bcecb3b110413b5b62e48296db4d7e68c33e8ed35d7c6d7914dc763d" [label=""];
  "sha256:2f6b9139bcecb3b110413b5b62e48296db4d7e68c33e8ed35d7c6d7914dc763d" -> "sha256:be1fcf1f9bad476ace6872cad8d0846cce9dea95ee995aa9c08c529c0ef5062f" [label=""];
}

