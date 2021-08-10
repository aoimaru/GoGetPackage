[app/sources/171587263.Dockerfile]
digraph {
  "sha256:3ba99a5837d4bcdc79adebf627eea483ab265b658638c65573be7be710b165c0" [label="docker-image://quay.io/prometheus/busybox:latest@sha256:a56e11cce1c09f50a71290d65733ebe976adc8654395091d5379c7f294cc891e" shape="ellipse"];
  "sha256:7709744d2537b32d16dbe539e21605fd2dc1bf024486c97aa6df599fb427edfd" [label="local://context" shape="ellipse"];
  "sha256:01e286f242ab8bcffd23f59adfbc0c01a46b4918edd3519440a00131067e087e" [label="copy{src=/operator, dest=/bin/operator}" shape="note"];
  "sha256:091e6375ea32a26d137b778677b72e3567908f815a5544669f5e0e7d35484f71" [label="sha256:091e6375ea32a26d137b778677b72e3567908f815a5544669f5e0e7d35484f71" shape="plaintext"];
  "sha256:3ba99a5837d4bcdc79adebf627eea483ab265b658638c65573be7be710b165c0" -> "sha256:01e286f242ab8bcffd23f59adfbc0c01a46b4918edd3519440a00131067e087e" [label=""];
  "sha256:7709744d2537b32d16dbe539e21605fd2dc1bf024486c97aa6df599fb427edfd" -> "sha256:01e286f242ab8bcffd23f59adfbc0c01a46b4918edd3519440a00131067e087e" [label=""];
  "sha256:01e286f242ab8bcffd23f59adfbc0c01a46b4918edd3519440a00131067e087e" -> "sha256:091e6375ea32a26d137b778677b72e3567908f815a5544669f5e0e7d35484f71" [label=""];
}
