[app/sources/341903168.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:d673397431e4dd74636c97dd6cf954d7cd09b148b2833bcf05f2558ef28bf0b8" [label="local://context" shape="ellipse"];
  "sha256:82d8ac0896afa4ad0ea12360d1ada4923169c04aeea0e2871a27aa69c3bd0468" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:a39ba4332d14faa4cc5e6e9f5bd945178894f1bdd4a05cf2e646f3d9d7b4c835" [label="sha256:a39ba4332d14faa4cc5e6e9f5bd945178894f1bdd4a05cf2e646f3d9d7b4c835" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:82d8ac0896afa4ad0ea12360d1ada4923169c04aeea0e2871a27aa69c3bd0468" [label=""];
  "sha256:d673397431e4dd74636c97dd6cf954d7cd09b148b2833bcf05f2558ef28bf0b8" -> "sha256:82d8ac0896afa4ad0ea12360d1ada4923169c04aeea0e2871a27aa69c3bd0468" [label=""];
  "sha256:82d8ac0896afa4ad0ea12360d1ada4923169c04aeea0e2871a27aa69c3bd0468" -> "sha256:a39ba4332d14faa4cc5e6e9f5bd945178894f1bdd4a05cf2e646f3d9d7b4c835" [label=""];
}

