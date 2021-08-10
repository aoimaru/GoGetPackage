[app/sources/325784993.Dockerfile]
digraph {
  "sha256:0f64444a9e9ee97abac7c2dd67c699b9c3d1375d30b770047613d3b6dc244b33" [label="docker-image://docker.io/library/node:6.9.2" shape="ellipse"];
  "sha256:d4f402bcaba5822d8a256c8a380e500c07401a57630dad733ea8811eb12a458c" [label="local://context" shape="ellipse"];
  "sha256:c8b3af5934352ed3a511cc242aa408a39513b6b341e87556903a848c6d63d968" [label="copy{src=/server.js, dest=/}" shape="note"];
  "sha256:0d55eab7f38d4d2cf45372bfc2bcdb1b3075ff264998d8f1b68f3a61e4a0bf54" [label="sha256:0d55eab7f38d4d2cf45372bfc2bcdb1b3075ff264998d8f1b68f3a61e4a0bf54" shape="plaintext"];
  "sha256:0f64444a9e9ee97abac7c2dd67c699b9c3d1375d30b770047613d3b6dc244b33" -> "sha256:c8b3af5934352ed3a511cc242aa408a39513b6b341e87556903a848c6d63d968" [label=""];
  "sha256:d4f402bcaba5822d8a256c8a380e500c07401a57630dad733ea8811eb12a458c" -> "sha256:c8b3af5934352ed3a511cc242aa408a39513b6b341e87556903a848c6d63d968" [label=""];
  "sha256:c8b3af5934352ed3a511cc242aa408a39513b6b341e87556903a848c6d63d968" -> "sha256:0d55eab7f38d4d2cf45372bfc2bcdb1b3075ff264998d8f1b68f3a61e4a0bf54" [label=""];
}

