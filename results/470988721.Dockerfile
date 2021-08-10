[app/sources/470988721.Dockerfile]
digraph {
  "sha256:b3e2153bcee64e30f4a3eda382b90af1c47dd62a40e84cd4a8ad5d14bba54feb" [label="local://context" shape="ellipse"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" [label="docker-image://docker.io/library/nginx:alpine" shape="ellipse"];
  "sha256:a32188a760a37ddb9fa0cfa8f0caa9ec0fcc4ad34525a88c179b84b758346f2c" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:ab6a9d618de617b8360ed724b1b5f7c6679b28e49fc700e076f8a03782cf0a96" [label="sha256:ab6a9d618de617b8360ed724b1b5f7c6679b28e49fc700e076f8a03782cf0a96" shape="plaintext"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" -> "sha256:a32188a760a37ddb9fa0cfa8f0caa9ec0fcc4ad34525a88c179b84b758346f2c" [label=""];
  "sha256:b3e2153bcee64e30f4a3eda382b90af1c47dd62a40e84cd4a8ad5d14bba54feb" -> "sha256:a32188a760a37ddb9fa0cfa8f0caa9ec0fcc4ad34525a88c179b84b758346f2c" [label=""];
  "sha256:a32188a760a37ddb9fa0cfa8f0caa9ec0fcc4ad34525a88c179b84b758346f2c" -> "sha256:ab6a9d618de617b8360ed724b1b5f7c6679b28e49fc700e076f8a03782cf0a96" [label=""];
}

