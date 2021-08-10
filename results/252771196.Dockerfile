[app/sources/252771196.Dockerfile]
digraph {
  "sha256:3992e491b51dacfc7af83068993f557c1e3deac0e6664d8496d632768b18b63c" [label="docker-image://docker.io/library/nginx:1.11.7-alpine" shape="ellipse"];
  "sha256:893cec9dfe76aa62904a979231f6b42067ecca2df87a194e7f642c6dc709b7cf" [label="local://context" shape="ellipse"];
  "sha256:58d3190af5773f3616319020e2eb8f6d344767b73c848cd02cec0b6ad4dfd71c" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:9f5f702044a16fb198965844e4fb305e6bcf6a25d341fbba53797784689292a0" [label="sha256:9f5f702044a16fb198965844e4fb305e6bcf6a25d341fbba53797784689292a0" shape="plaintext"];
  "sha256:3992e491b51dacfc7af83068993f557c1e3deac0e6664d8496d632768b18b63c" -> "sha256:58d3190af5773f3616319020e2eb8f6d344767b73c848cd02cec0b6ad4dfd71c" [label=""];
  "sha256:893cec9dfe76aa62904a979231f6b42067ecca2df87a194e7f642c6dc709b7cf" -> "sha256:58d3190af5773f3616319020e2eb8f6d344767b73c848cd02cec0b6ad4dfd71c" [label=""];
  "sha256:58d3190af5773f3616319020e2eb8f6d344767b73c848cd02cec0b6ad4dfd71c" -> "sha256:9f5f702044a16fb198965844e4fb305e6bcf6a25d341fbba53797784689292a0" [label=""];
}

