[app/sources/475338937.Dockerfile]
digraph {
  "sha256:313f345b2418ec33e8c8a340cd9eb6000e6a0fe7eca09bb55e43519b1d23f0e3" [label="docker-image://docker.io/brendanburns/php:latest" shape="ellipse"];
  "sha256:07f720a85200fe48d3f00c20a34e7d7a212197ff8f4c28387a4c6e8841c617b7" [label="local://context" shape="ellipse"];
  "sha256:762dc09285f3f716dc267dfc987ad32a3563b616fddae0c912b140a9f1b7fdb3" [label="copy{src=/index.php, dest=/var/www/index.php}" shape="note"];
  "sha256:47361bd18bf2e2fb88bb0930a0a963202174a192b5d29013cbf0b27a5120ad42" [label="copy{src=/controllers.js, dest=/var/www/controllers.js}" shape="note"];
  "sha256:2b26697db337d01c34e5fb21d90ffdd773f801eada82617c61b7ec1844d58d98" [label="copy{src=/index.html, dest=/var/www/index.html}" shape="note"];
  "sha256:4f8b905cebc688d1776fd4393152ec6c5eae6c4ceb200176cad28bc93a333bf1" [label="sha256:4f8b905cebc688d1776fd4393152ec6c5eae6c4ceb200176cad28bc93a333bf1" shape="plaintext"];
  "sha256:313f345b2418ec33e8c8a340cd9eb6000e6a0fe7eca09bb55e43519b1d23f0e3" -> "sha256:762dc09285f3f716dc267dfc987ad32a3563b616fddae0c912b140a9f1b7fdb3" [label=""];
  "sha256:07f720a85200fe48d3f00c20a34e7d7a212197ff8f4c28387a4c6e8841c617b7" -> "sha256:762dc09285f3f716dc267dfc987ad32a3563b616fddae0c912b140a9f1b7fdb3" [label=""];
  "sha256:762dc09285f3f716dc267dfc987ad32a3563b616fddae0c912b140a9f1b7fdb3" -> "sha256:47361bd18bf2e2fb88bb0930a0a963202174a192b5d29013cbf0b27a5120ad42" [label=""];
  "sha256:07f720a85200fe48d3f00c20a34e7d7a212197ff8f4c28387a4c6e8841c617b7" -> "sha256:47361bd18bf2e2fb88bb0930a0a963202174a192b5d29013cbf0b27a5120ad42" [label=""];
  "sha256:47361bd18bf2e2fb88bb0930a0a963202174a192b5d29013cbf0b27a5120ad42" -> "sha256:2b26697db337d01c34e5fb21d90ffdd773f801eada82617c61b7ec1844d58d98" [label=""];
  "sha256:07f720a85200fe48d3f00c20a34e7d7a212197ff8f4c28387a4c6e8841c617b7" -> "sha256:2b26697db337d01c34e5fb21d90ffdd773f801eada82617c61b7ec1844d58d98" [label=""];
  "sha256:2b26697db337d01c34e5fb21d90ffdd773f801eada82617c61b7ec1844d58d98" -> "sha256:4f8b905cebc688d1776fd4393152ec6c5eae6c4ceb200176cad28bc93a333bf1" [label=""];
}

