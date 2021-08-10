[app/sources/252767689.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:9eafa98400fa29043963c519c8f4a2359242e77a8faac9d95a437d3d4aabdf90" [label="local://context" shape="ellipse"];
  "sha256:44a69de001b178de78d91b18f7581151f59019d9c3bebb10e026fbf9f3d9eddf" [label="copy{src=/, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:99a2ea0fde88090078c26a3b0413411a96b0bf924ece8e037ec7c7fa69a8f47b" [label="sha256:99a2ea0fde88090078c26a3b0413411a96b0bf924ece8e037ec7c7fa69a8f47b" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:44a69de001b178de78d91b18f7581151f59019d9c3bebb10e026fbf9f3d9eddf" [label=""];
  "sha256:9eafa98400fa29043963c519c8f4a2359242e77a8faac9d95a437d3d4aabdf90" -> "sha256:44a69de001b178de78d91b18f7581151f59019d9c3bebb10e026fbf9f3d9eddf" [label=""];
  "sha256:44a69de001b178de78d91b18f7581151f59019d9c3bebb10e026fbf9f3d9eddf" -> "sha256:99a2ea0fde88090078c26a3b0413411a96b0bf924ece8e037ec7c7fa69a8f47b" [label=""];
}

