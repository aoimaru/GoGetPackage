[app/sources/426946526.Dockerfile]
digraph {
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" [label="docker-image://docker.io/library/nginx:alpine" shape="ellipse"];
  "sha256:d7e9a1cf0dee0781a9d2ead778e5ddd857be2f42400e1b312b2190efc54b652a" [label="local://context" shape="ellipse"];
  "sha256:a57e451ab7b4bcc5d94870603ae3b3a7e6a2c51eca246d885fcdbab7793f0837" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:d4466ef0fb5e428a3fded0d43a46b142da4a3fff2d2baf87b4c0bc5ebcd90591" [label="copy{src=/htpasswd, dest=/etc/nginx/htpasswd}" shape="note"];
  "sha256:0ee7bcde8f21539692b84b092b9d34aa33497cd9c4708569d889123754cf1c74" [label="sha256:0ee7bcde8f21539692b84b092b9d34aa33497cd9c4708569d889123754cf1c74" shape="plaintext"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" -> "sha256:a57e451ab7b4bcc5d94870603ae3b3a7e6a2c51eca246d885fcdbab7793f0837" [label=""];
  "sha256:d7e9a1cf0dee0781a9d2ead778e5ddd857be2f42400e1b312b2190efc54b652a" -> "sha256:a57e451ab7b4bcc5d94870603ae3b3a7e6a2c51eca246d885fcdbab7793f0837" [label=""];
  "sha256:a57e451ab7b4bcc5d94870603ae3b3a7e6a2c51eca246d885fcdbab7793f0837" -> "sha256:d4466ef0fb5e428a3fded0d43a46b142da4a3fff2d2baf87b4c0bc5ebcd90591" [label=""];
  "sha256:d7e9a1cf0dee0781a9d2ead778e5ddd857be2f42400e1b312b2190efc54b652a" -> "sha256:d4466ef0fb5e428a3fded0d43a46b142da4a3fff2d2baf87b4c0bc5ebcd90591" [label=""];
  "sha256:d4466ef0fb5e428a3fded0d43a46b142da4a3fff2d2baf87b4c0bc5ebcd90591" -> "sha256:0ee7bcde8f21539692b84b092b9d34aa33497cd9c4708569d889123754cf1c74" [label=""];
}

