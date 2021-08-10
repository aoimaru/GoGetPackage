[app/sources/277161166.Dockerfile]
digraph {
  "sha256:d01bdd75818a86d4234c702b7104ee38e187c3c6b66fee6b0f3cf5b8debbf015" [label="local://context" shape="ellipse"];
  "sha256:e5c6f40f84242c9df85f1ebf46fdda7cf413ba0640796326a8a303e03c8c8f5a" [label="copy{src=/test-webserver, dest=/}" shape="note"];
  "sha256:42510c884754ab9d1951f6d6737cfd5a612921a9ee5dcca23aff3369ea785b20" [label="sha256:42510c884754ab9d1951f6d6737cfd5a612921a9ee5dcca23aff3369ea785b20" shape="plaintext"];
  "sha256:d01bdd75818a86d4234c702b7104ee38e187c3c6b66fee6b0f3cf5b8debbf015" -> "sha256:e5c6f40f84242c9df85f1ebf46fdda7cf413ba0640796326a8a303e03c8c8f5a" [label=""];
  "sha256:e5c6f40f84242c9df85f1ebf46fdda7cf413ba0640796326a8a303e03c8c8f5a" -> "sha256:42510c884754ab9d1951f6d6737cfd5a612921a9ee5dcca23aff3369ea785b20" [label=""];
}

