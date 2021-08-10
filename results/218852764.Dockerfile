[app/sources/218852764.Dockerfile]
digraph {
  "sha256:294e803cbebbaccd14b17de7c8c64925339c876e6e6c9686c7333dbce4d14fb6" [label="docker-image://docker.io/andrewd/musl-cross-arm:latest" shape="ellipse"];
  "sha256:22005a4da49c6294ad325532e534a4c64ab2f42657357f5f7c6d230b2f1db859" [label="local://context" shape="ellipse"];
  "sha256:afc33614bcc4e4df0abc97d269df824ba43df40dfeccbd174004cd8f970d6816" [label="copy{src=/, dest=/build/}" shape="note"];
  "sha256:aafb4d2921572fb15508b2a1578e8ceb1e8c8e3a2b559dc29fc29c9d70e4ee3e" [label="sha256:aafb4d2921572fb15508b2a1578e8ceb1e8c8e3a2b559dc29fc29c9d70e4ee3e" shape="plaintext"];
  "sha256:294e803cbebbaccd14b17de7c8c64925339c876e6e6c9686c7333dbce4d14fb6" -> "sha256:afc33614bcc4e4df0abc97d269df824ba43df40dfeccbd174004cd8f970d6816" [label=""];
  "sha256:22005a4da49c6294ad325532e534a4c64ab2f42657357f5f7c6d230b2f1db859" -> "sha256:afc33614bcc4e4df0abc97d269df824ba43df40dfeccbd174004cd8f970d6816" [label=""];
  "sha256:afc33614bcc4e4df0abc97d269df824ba43df40dfeccbd174004cd8f970d6816" -> "sha256:aafb4d2921572fb15508b2a1578e8ceb1e8c8e3a2b559dc29fc29c9d70e4ee3e" [label=""];
}

