[app/sources/317174211.Dockerfile]
digraph {
  "sha256:60ce0cda44449ecb5e10a240ec3090488cf7c1f7f05d39e1028643e7a3c8518f" [label="docker-image://docker.io/fnproject/node:latest" shape="ellipse"];
  "sha256:3f71d98f232d2e208e3a5e0d47c2b9484fe6bccf1b2fd480e92e095bb388031e" [label="/bin/sh -c apk add --no-cache imagemagick" shape="box"];
  "sha256:ea73dfc2af350b5016396e4235a465cfc132b0df847fdd0691d8bc149f115333" [label="mkdir{path=/function}" shape="note"];
  "sha256:181ec43fefcaa683a166c0f820f7cb0e501e06b55ae9e47c3226c5da0d75687a" [label="local://context" shape="ellipse"];
  "sha256:837b026d3c201c0b41259256a3f9c60ea6609367a725e5bd35eb0716cc6699d8" [label="copy{src=/, dest=/function/}" shape="note"];
  "sha256:88652bbafacfd3a11977a278e1a81b2489093c4fbc5cb365c32a17eda7ea2043" [label="docker-image://docker.io/fnproject/node:dev" shape="ellipse"];
  "sha256:04ff519349724f5cf3d69e6192f943ae2d51abe5d63d45fc443c3768719b6fdd" [label="mkdir{path=/function}" shape="note"];
  "sha256:d52b1e1e1cc5615a7cc14e869eeb453a50b7b1e507d89bee6ea7e2b75f60c0fa" [label="copy{src=/package.json, dest=/function/}" shape="note"];
  "sha256:f341eb85d8e5e1eff916bc05a9cbba45f2c5492708f674de42130b7b2bf32ceb" [label="/bin/sh -c npm install" shape="box"];
  "sha256:b86115d14b6f3f821431c5c0d5d3b1a1a9557e0e8eb5ef150ef6493c4f5acddd" [label="copy{src=/function/node_modules, dest=/function/node_modules/}" shape="note"];
  "sha256:d1086db44439d068499f56dfb0fbd78ab008784d4d2a79c1093f06793b7dcdea" [label="sha256:d1086db44439d068499f56dfb0fbd78ab008784d4d2a79c1093f06793b7dcdea" shape="plaintext"];
  "sha256:60ce0cda44449ecb5e10a240ec3090488cf7c1f7f05d39e1028643e7a3c8518f" -> "sha256:3f71d98f232d2e208e3a5e0d47c2b9484fe6bccf1b2fd480e92e095bb388031e" [label=""];
  "sha256:3f71d98f232d2e208e3a5e0d47c2b9484fe6bccf1b2fd480e92e095bb388031e" -> "sha256:ea73dfc2af350b5016396e4235a465cfc132b0df847fdd0691d8bc149f115333" [label=""];
  "sha256:ea73dfc2af350b5016396e4235a465cfc132b0df847fdd0691d8bc149f115333" -> "sha256:837b026d3c201c0b41259256a3f9c60ea6609367a725e5bd35eb0716cc6699d8" [label=""];
  "sha256:181ec43fefcaa683a166c0f820f7cb0e501e06b55ae9e47c3226c5da0d75687a" -> "sha256:837b026d3c201c0b41259256a3f9c60ea6609367a725e5bd35eb0716cc6699d8" [label=""];
  "sha256:88652bbafacfd3a11977a278e1a81b2489093c4fbc5cb365c32a17eda7ea2043" -> "sha256:04ff519349724f5cf3d69e6192f943ae2d51abe5d63d45fc443c3768719b6fdd" [label=""];
  "sha256:04ff519349724f5cf3d69e6192f943ae2d51abe5d63d45fc443c3768719b6fdd" -> "sha256:d52b1e1e1cc5615a7cc14e869eeb453a50b7b1e507d89bee6ea7e2b75f60c0fa" [label=""];
  "sha256:181ec43fefcaa683a166c0f820f7cb0e501e06b55ae9e47c3226c5da0d75687a" -> "sha256:d52b1e1e1cc5615a7cc14e869eeb453a50b7b1e507d89bee6ea7e2b75f60c0fa" [label=""];
  "sha256:d52b1e1e1cc5615a7cc14e869eeb453a50b7b1e507d89bee6ea7e2b75f60c0fa" -> "sha256:f341eb85d8e5e1eff916bc05a9cbba45f2c5492708f674de42130b7b2bf32ceb" [label=""];
  "sha256:837b026d3c201c0b41259256a3f9c60ea6609367a725e5bd35eb0716cc6699d8" -> "sha256:b86115d14b6f3f821431c5c0d5d3b1a1a9557e0e8eb5ef150ef6493c4f5acddd" [label=""];
  "sha256:f341eb85d8e5e1eff916bc05a9cbba45f2c5492708f674de42130b7b2bf32ceb" -> "sha256:b86115d14b6f3f821431c5c0d5d3b1a1a9557e0e8eb5ef150ef6493c4f5acddd" [label=""];
  "sha256:b86115d14b6f3f821431c5c0d5d3b1a1a9557e0e8eb5ef150ef6493c4f5acddd" -> "sha256:d1086db44439d068499f56dfb0fbd78ab008784d4d2a79c1093f06793b7dcdea" [label=""];
}

