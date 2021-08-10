[app/sources/252769146.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:a180753a900f36b42510c24fe6a7833619c1e855c9393e08ff329e787dc1b4dd" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:af91d74b589477ba2dc600190bf3f1054edbe592da9ad1cd89ce5d3897a4f3f0" [label="sha256:af91d74b589477ba2dc600190bf3f1054edbe592da9ad1cd89ce5d3897a4f3f0" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:a180753a900f36b42510c24fe6a7833619c1e855c9393e08ff329e787dc1b4dd" [label=""];
  "sha256:a180753a900f36b42510c24fe6a7833619c1e855c9393e08ff329e787dc1b4dd" -> "sha256:af91d74b589477ba2dc600190bf3f1054edbe592da9ad1cd89ce5d3897a4f3f0" [label=""];
}

