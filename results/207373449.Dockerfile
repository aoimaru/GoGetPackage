[app/sources/207373449.Dockerfile]
digraph {
  "sha256:5cb9024a9aa52a8d2851e58ba87f862a257462991ac13b962b8903e50f535e30" [label="docker-image://docker.io/library/redis:3.0" shape="ellipse"];
  "sha256:59686b3d79d576b1a425f93f5a80687ae43ac073c7d8aacf8d3093e69d30c0f9" [label="local://context" shape="ellipse"];
  "sha256:650a56042df348f0b2570e635c1e50cefcdb778d3b02923af1f2503804d23184" [label="copy{src=/redis.conf, dest=/usr/local/etc/redis/redis.conf}" shape="note"];
  "sha256:f4070d76a7cf932cbf45be7e9d486c8fd11a305c3c1f883b9ad43e470fe81972" [label="sha256:f4070d76a7cf932cbf45be7e9d486c8fd11a305c3c1f883b9ad43e470fe81972" shape="plaintext"];
  "sha256:5cb9024a9aa52a8d2851e58ba87f862a257462991ac13b962b8903e50f535e30" -> "sha256:650a56042df348f0b2570e635c1e50cefcdb778d3b02923af1f2503804d23184" [label=""];
  "sha256:59686b3d79d576b1a425f93f5a80687ae43ac073c7d8aacf8d3093e69d30c0f9" -> "sha256:650a56042df348f0b2570e635c1e50cefcdb778d3b02923af1f2503804d23184" [label=""];
  "sha256:650a56042df348f0b2570e635c1e50cefcdb778d3b02923af1f2503804d23184" -> "sha256:f4070d76a7cf932cbf45be7e9d486c8fd11a305c3c1f883b9ad43e470fe81972" [label=""];
}

