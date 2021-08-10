[app/sources/280733801.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:b913966d00f2301615e3b78338ebf20ccee3a00ebeb8a35e0a3cbac291d874c6" [label="local://context" shape="ellipse"];
  "sha256:b187ecda90be2e4444a2e8df555d2f828f4a82f9775bc68c30e17c819c8d85c7" [label="copy{src=/nginx-app.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:a478564be7de9d3f268610396d77619bcfaa7af21e41cd7d0b56cd0f7166c307" [label="sha256:a478564be7de9d3f268610396d77619bcfaa7af21e41cd7d0b56cd0f7166c307" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:b187ecda90be2e4444a2e8df555d2f828f4a82f9775bc68c30e17c819c8d85c7" [label=""];
  "sha256:b913966d00f2301615e3b78338ebf20ccee3a00ebeb8a35e0a3cbac291d874c6" -> "sha256:b187ecda90be2e4444a2e8df555d2f828f4a82f9775bc68c30e17c819c8d85c7" [label=""];
  "sha256:b187ecda90be2e4444a2e8df555d2f828f4a82f9775bc68c30e17c819c8d85c7" -> "sha256:a478564be7de9d3f268610396d77619bcfaa7af21e41cd7d0b56cd0f7166c307" [label=""];
}

