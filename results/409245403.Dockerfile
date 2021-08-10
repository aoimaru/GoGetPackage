[app/sources/409245403.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:c4180a82742c3852f543cede81e7d90a89410e825f44dfb3fa777a51cb805229" [label="local://context" shape="ellipse"];
  "sha256:2d66cf8cb4a48f416ebf565760ed1f2d30f1ff958334cc8604eaf709d988bfb8" [label="copy{src=/, dest=/go/src/github.com/tftp-go-team/hooktftp}" shape="note"];
  "sha256:1aa83fe82973195ea459f2e539cd7d83ac52bc04b4cbba20a27a96df7669f1dd" [label="mkdir{path=/go/src/github.com/tftp-go-team/hooktftp}" shape="note"];
  "sha256:c751c7cadf0b98e0a5d182238f57517801d177a857bb575cd8fae5b13f1dca78" [label="/bin/sh -c make" shape="box"];
  "sha256:e65bb68b5d426c10ddba75f52e757f186d1a68f5c12d541b66331e41024dedd5" [label="/bin/sh -c echo 'user: nobody\\n\\nhooks:\\n    - type: file\\n      regexp: ^.*$\\n      template: /var/lib/tftpboot/$0' > /etc/hooktftp.yml" shape="box"];
  "sha256:5e11e2361942d0dfba55c331ea51b7a451e1c10dc9f8d029c20ebe110df24280" [label="sha256:5e11e2361942d0dfba55c331ea51b7a451e1c10dc9f8d029c20ebe110df24280" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:2d66cf8cb4a48f416ebf565760ed1f2d30f1ff958334cc8604eaf709d988bfb8" [label=""];
  "sha256:c4180a82742c3852f543cede81e7d90a89410e825f44dfb3fa777a51cb805229" -> "sha256:2d66cf8cb4a48f416ebf565760ed1f2d30f1ff958334cc8604eaf709d988bfb8" [label=""];
  "sha256:2d66cf8cb4a48f416ebf565760ed1f2d30f1ff958334cc8604eaf709d988bfb8" -> "sha256:1aa83fe82973195ea459f2e539cd7d83ac52bc04b4cbba20a27a96df7669f1dd" [label=""];
  "sha256:1aa83fe82973195ea459f2e539cd7d83ac52bc04b4cbba20a27a96df7669f1dd" -> "sha256:c751c7cadf0b98e0a5d182238f57517801d177a857bb575cd8fae5b13f1dca78" [label=""];
  "sha256:c751c7cadf0b98e0a5d182238f57517801d177a857bb575cd8fae5b13f1dca78" -> "sha256:e65bb68b5d426c10ddba75f52e757f186d1a68f5c12d541b66331e41024dedd5" [label=""];
  "sha256:e65bb68b5d426c10ddba75f52e757f186d1a68f5c12d541b66331e41024dedd5" -> "sha256:5e11e2361942d0dfba55c331ea51b7a451e1c10dc9f8d029c20ebe110df24280" [label=""];
}

