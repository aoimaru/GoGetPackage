[app/sources/252775082.Dockerfile]
digraph {
  "sha256:87e1d97a63888d57eee50710e1b741fedc48fef222ac757105b9ec770458a318" [label="docker-image://docker.io/jwilder/nginx-proxy:0.6.0" shape="ellipse"];
  "sha256:68fa6c3d04b1c580a321a0eafc99eeeebf3da29fb78ecf65487b070d213b71ad" [label="local://context" shape="ellipse"];
  "sha256:6271d7fb16ab95d67c666c6e90c5c79d5e2d7ecda556ad0ae090efd265a952c2" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:d63b8af5244dd2521939dae35844abafa2cef52aa3e2c90709becdf2ebdbb2d2" [label="sha256:d63b8af5244dd2521939dae35844abafa2cef52aa3e2c90709becdf2ebdbb2d2" shape="plaintext"];
  "sha256:87e1d97a63888d57eee50710e1b741fedc48fef222ac757105b9ec770458a318" -> "sha256:6271d7fb16ab95d67c666c6e90c5c79d5e2d7ecda556ad0ae090efd265a952c2" [label=""];
  "sha256:68fa6c3d04b1c580a321a0eafc99eeeebf3da29fb78ecf65487b070d213b71ad" -> "sha256:6271d7fb16ab95d67c666c6e90c5c79d5e2d7ecda556ad0ae090efd265a952c2" [label=""];
  "sha256:6271d7fb16ab95d67c666c6e90c5c79d5e2d7ecda556ad0ae090efd265a952c2" -> "sha256:d63b8af5244dd2521939dae35844abafa2cef52aa3e2c90709becdf2ebdbb2d2" [label=""];
}

