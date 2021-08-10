[app/sources/326552756.Dockerfile]
digraph {
  "sha256:65fbd9b3b81e3c32afe17fd0bbb7e0f4007c68d79c6e01497da5be189d7d4a08" [label="docker-image://docker.io/istionightly/base_debug:latest" shape="ellipse"];
  "sha256:3c09437f6fb80b682e3576e8417905c8ac08e443fe24e09ebc870f6f4d52b98f" [label="local://context" shape="ellipse"];
  "sha256:dc195dd76709bd7f6517203c7418f974560e664e3935c59f99323bc60d33888d" [label="copy{src=/galley, dest=/usr/local/bin/}" shape="note"];
  "sha256:3c033ec1b6b1bbc73ea4b4faad3f2d4bcc09fd285326b4ebc63ce3a7dfac5552" [label="sha256:3c033ec1b6b1bbc73ea4b4faad3f2d4bcc09fd285326b4ebc63ce3a7dfac5552" shape="plaintext"];
  "sha256:65fbd9b3b81e3c32afe17fd0bbb7e0f4007c68d79c6e01497da5be189d7d4a08" -> "sha256:dc195dd76709bd7f6517203c7418f974560e664e3935c59f99323bc60d33888d" [label=""];
  "sha256:3c09437f6fb80b682e3576e8417905c8ac08e443fe24e09ebc870f6f4d52b98f" -> "sha256:dc195dd76709bd7f6517203c7418f974560e664e3935c59f99323bc60d33888d" [label=""];
  "sha256:dc195dd76709bd7f6517203c7418f974560e664e3935c59f99323bc60d33888d" -> "sha256:3c033ec1b6b1bbc73ea4b4faad3f2d4bcc09fd285326b4ebc63ce3a7dfac5552" [label=""];
}

