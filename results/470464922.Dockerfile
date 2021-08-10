[app/sources/470464922.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:75a663fa7f29a70caa052d7f4709d64cad49f1432d094bfbea46692310fda537" [label="local://context" shape="ellipse"];
  "sha256:b72cd0888330b1adfb290cd04c4b61dc56b7c3668d84f71c9f32a62ecde329ef" [label="copy{src=/dist, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:a38b39d06ac60463a50d7e3c7642a212dd5d0b6a3ce5232a229de5477d121a1e" [label="sha256:a38b39d06ac60463a50d7e3c7642a212dd5d0b6a3ce5232a229de5477d121a1e" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:b72cd0888330b1adfb290cd04c4b61dc56b7c3668d84f71c9f32a62ecde329ef" [label=""];
  "sha256:75a663fa7f29a70caa052d7f4709d64cad49f1432d094bfbea46692310fda537" -> "sha256:b72cd0888330b1adfb290cd04c4b61dc56b7c3668d84f71c9f32a62ecde329ef" [label=""];
  "sha256:b72cd0888330b1adfb290cd04c4b61dc56b7c3668d84f71c9f32a62ecde329ef" -> "sha256:a38b39d06ac60463a50d7e3c7642a212dd5d0b6a3ce5232a229de5477d121a1e" [label=""];
}

