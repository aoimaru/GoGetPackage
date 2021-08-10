[app/sources/354450645.Dockerfile]
digraph {
  "sha256:1da08bb44a8f05b0929c2b192c193efecdf99d2e286b171b8835c55d6afcece7" [label="docker-image://docker.io/microsoft/aspnet:1.0.0-beta7" shape="ellipse"];
  "sha256:cd9fa6427721b4310344a6278a9c3850d1775f32820203f2a48a37b703c29d00" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_0.12 | bash -" shape="box"];
  "sha256:463db0616905ee23c9c6962fee16a7479e7821b1c49287b6dd911da128aa8c41" [label="/bin/sh -c apt-get install -qq nodejs" shape="box"];
  "sha256:a9218faaa07aeed10c3f909ebcfd17747facab9a3c282dcd764ac6f72026a0db" [label="/bin/sh -c npm install -g nodemon" shape="box"];
  "sha256:58bde510e25bf506622e6469b533d2958f1a49a5727936f72319211966910e36" [label="local://context" shape="ellipse"];
  "sha256:61df4c0e65414aa8185601223611181928e33f51c08041c29dd2b627eafb8a85" [label="copy{src=/nuget, dest=/root/.config/NuGet/}" shape="note"];
  "sha256:350db44d2accc3b812fbeea08244bfd8e5ab422d95b499fa39028a484b33e7ac" [label="sha256:350db44d2accc3b812fbeea08244bfd8e5ab422d95b499fa39028a484b33e7ac" shape="plaintext"];
  "sha256:1da08bb44a8f05b0929c2b192c193efecdf99d2e286b171b8835c55d6afcece7" -> "sha256:cd9fa6427721b4310344a6278a9c3850d1775f32820203f2a48a37b703c29d00" [label=""];
  "sha256:cd9fa6427721b4310344a6278a9c3850d1775f32820203f2a48a37b703c29d00" -> "sha256:463db0616905ee23c9c6962fee16a7479e7821b1c49287b6dd911da128aa8c41" [label=""];
  "sha256:463db0616905ee23c9c6962fee16a7479e7821b1c49287b6dd911da128aa8c41" -> "sha256:a9218faaa07aeed10c3f909ebcfd17747facab9a3c282dcd764ac6f72026a0db" [label=""];
  "sha256:a9218faaa07aeed10c3f909ebcfd17747facab9a3c282dcd764ac6f72026a0db" -> "sha256:61df4c0e65414aa8185601223611181928e33f51c08041c29dd2b627eafb8a85" [label=""];
  "sha256:58bde510e25bf506622e6469b533d2958f1a49a5727936f72319211966910e36" -> "sha256:61df4c0e65414aa8185601223611181928e33f51c08041c29dd2b627eafb8a85" [label=""];
  "sha256:61df4c0e65414aa8185601223611181928e33f51c08041c29dd2b627eafb8a85" -> "sha256:350db44d2accc3b812fbeea08244bfd8e5ab422d95b499fa39028a484b33e7ac" [label=""];
}

