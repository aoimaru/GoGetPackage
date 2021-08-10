[app/sources/205011176.Dockerfile]
digraph {
  "sha256:67ebcfe9d45f26999af38830f6a699e9c1fba4cee37d54671d73fd6b0c32334f" [label="local://context" shape="ellipse"];
  "sha256:e87fdbf0a94428dcc0f17d04e16a2434bf3ac54517e5a5f6301dcb86f3a453e0" [label="copy{src=/ca-certificates.crt, dest=/etc/ssl/certs/}" shape="note"];
  "sha256:a43b5bed0672c2adaba43c6a84d9590da5cc4f411a64f49d3159974de820c092" [label="copy{src=/h2demo, dest=/}" shape="note"];
  "sha256:80fb7fb23fc4143e13db3d25d4b344efb12841f8776b6412da4a25d6ec7d56e4" [label="sha256:80fb7fb23fc4143e13db3d25d4b344efb12841f8776b6412da4a25d6ec7d56e4" shape="plaintext"];
  "sha256:67ebcfe9d45f26999af38830f6a699e9c1fba4cee37d54671d73fd6b0c32334f" -> "sha256:e87fdbf0a94428dcc0f17d04e16a2434bf3ac54517e5a5f6301dcb86f3a453e0" [label=""];
  "sha256:e87fdbf0a94428dcc0f17d04e16a2434bf3ac54517e5a5f6301dcb86f3a453e0" -> "sha256:a43b5bed0672c2adaba43c6a84d9590da5cc4f411a64f49d3159974de820c092" [label=""];
  "sha256:67ebcfe9d45f26999af38830f6a699e9c1fba4cee37d54671d73fd6b0c32334f" -> "sha256:a43b5bed0672c2adaba43c6a84d9590da5cc4f411a64f49d3159974de820c092" [label=""];
  "sha256:a43b5bed0672c2adaba43c6a84d9590da5cc4f411a64f49d3159974de820c092" -> "sha256:80fb7fb23fc4143e13db3d25d4b344efb12841f8776b6412da4a25d6ec7d56e4" [label=""];
}

