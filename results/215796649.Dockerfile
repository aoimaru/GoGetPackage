[app/sources/215796649.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:118f0943990105dc006340134be5525917c1bd0abae13353a6fab72169a735b3" [label="/bin/sh -c apk --no-cache add git go musl-dev" shape="box"];
  "sha256:0e14e65e62e513143613573fd5b98f86c707f59e4e3f3ea243a426cb07631e74" [label="local://context" shape="ellipse"];
  "sha256:a2bbb37574ced85bdb611999a06894c1afe89a1ddad79d700325cdb614588df6" [label="copy{src=/, dest=/go/src/github.com/uw-labs/strongbox}" shape="note"];
  "sha256:3fd5180bb81e85024af553c62a3752f9e8972cff02549df7ba4c52915b4aeec5" [label="mkdir{path=/go/src/github.com/uw-labs/strongbox}" shape="note"];
  "sha256:b1d1aab08133299ceda85d29e65cfd2c201665f4f172105e377eb6aa30709d23" [label="sha256:b1d1aab08133299ceda85d29e65cfd2c201665f4f172105e377eb6aa30709d23" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:118f0943990105dc006340134be5525917c1bd0abae13353a6fab72169a735b3" [label=""];
  "sha256:118f0943990105dc006340134be5525917c1bd0abae13353a6fab72169a735b3" -> "sha256:a2bbb37574ced85bdb611999a06894c1afe89a1ddad79d700325cdb614588df6" [label=""];
  "sha256:0e14e65e62e513143613573fd5b98f86c707f59e4e3f3ea243a426cb07631e74" -> "sha256:a2bbb37574ced85bdb611999a06894c1afe89a1ddad79d700325cdb614588df6" [label=""];
  "sha256:a2bbb37574ced85bdb611999a06894c1afe89a1ddad79d700325cdb614588df6" -> "sha256:3fd5180bb81e85024af553c62a3752f9e8972cff02549df7ba4c52915b4aeec5" [label=""];
  "sha256:3fd5180bb81e85024af553c62a3752f9e8972cff02549df7ba4c52915b4aeec5" -> "sha256:b1d1aab08133299ceda85d29e65cfd2c201665f4f172105e377eb6aa30709d23" [label=""];
}

