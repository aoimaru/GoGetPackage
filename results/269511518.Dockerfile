[app/sources/269511518.Dockerfile]
digraph {
  "sha256:1b2425bf11c49db78cbf67f289912793bd2d6d4bf7ba732c10fac1c7006a6e62" [label="docker-image://docker.io/library/bot:latest" shape="ellipse"];
  "sha256:823c047fb61a32b38f77d9d71f2bb17a1f662fccc2b108ff5c895511934bbf57" [label="/bin/sh -c pip3 install flask" shape="box"];
  "sha256:63db5ccd5ab9799ce6242ec59ffa0e1956a8e50e28c9b9bb8d915ce71414ba12" [label="sha256:63db5ccd5ab9799ce6242ec59ffa0e1956a8e50e28c9b9bb8d915ce71414ba12" shape="plaintext"];
  "sha256:1b2425bf11c49db78cbf67f289912793bd2d6d4bf7ba732c10fac1c7006a6e62" -> "sha256:823c047fb61a32b38f77d9d71f2bb17a1f662fccc2b108ff5c895511934bbf57" [label=""];
  "sha256:823c047fb61a32b38f77d9d71f2bb17a1f662fccc2b108ff5c895511934bbf57" -> "sha256:63db5ccd5ab9799ce6242ec59ffa0e1956a8e50e28c9b9bb8d915ce71414ba12" [label=""];
}

