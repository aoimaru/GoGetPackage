[app/sources/326422849.Dockerfile]
digraph {
  "sha256:7f04cbb18ad1c6e5592b822764ee2461ab767692b72f9bf6fed271315683266f" [label="local://context" shape="ellipse"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:a99ce0f97acc51eab62f4bc8a6f9de19cd0e1270d41a48f3d865cc1c787cdf6d" [label="copy{src=/dist, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:14b2aef9faf62d39f09dbacd17d04488d5ee72350813e97838c3d71a3184b203" [label="copy{src=/nginx-app.conf, dest=/etc/nginx/conf.d/default.tmpl}" shape="note"];
  "sha256:cd4651fc924d297e04809151324dae4fd1dbbfced7f9c0fc7b3a12f4a4bd975f" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:24b770fb3618a947c0c745745706ddda80a379cd26ea854ea8d5eefbd57c692a" [label="sha256:24b770fb3618a947c0c745745706ddda80a379cd26ea854ea8d5eefbd57c692a" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:a99ce0f97acc51eab62f4bc8a6f9de19cd0e1270d41a48f3d865cc1c787cdf6d" [label=""];
  "sha256:7f04cbb18ad1c6e5592b822764ee2461ab767692b72f9bf6fed271315683266f" -> "sha256:a99ce0f97acc51eab62f4bc8a6f9de19cd0e1270d41a48f3d865cc1c787cdf6d" [label=""];
  "sha256:a99ce0f97acc51eab62f4bc8a6f9de19cd0e1270d41a48f3d865cc1c787cdf6d" -> "sha256:14b2aef9faf62d39f09dbacd17d04488d5ee72350813e97838c3d71a3184b203" [label=""];
  "sha256:7f04cbb18ad1c6e5592b822764ee2461ab767692b72f9bf6fed271315683266f" -> "sha256:14b2aef9faf62d39f09dbacd17d04488d5ee72350813e97838c3d71a3184b203" [label=""];
  "sha256:14b2aef9faf62d39f09dbacd17d04488d5ee72350813e97838c3d71a3184b203" -> "sha256:cd4651fc924d297e04809151324dae4fd1dbbfced7f9c0fc7b3a12f4a4bd975f" [label=""];
  "sha256:7f04cbb18ad1c6e5592b822764ee2461ab767692b72f9bf6fed271315683266f" -> "sha256:cd4651fc924d297e04809151324dae4fd1dbbfced7f9c0fc7b3a12f4a4bd975f" [label=""];
  "sha256:cd4651fc924d297e04809151324dae4fd1dbbfced7f9c0fc7b3a12f4a4bd975f" -> "sha256:24b770fb3618a947c0c745745706ddda80a379cd26ea854ea8d5eefbd57c692a" [label=""];
}

