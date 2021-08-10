[app/sources/252798740.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:9a471a44eb38f849b36c3f873418cda17a64d256475b4f9c45a56fb319cd232a" [label="local://context" shape="ellipse"];
  "sha256:0da118b92b8b7bb3019b68fa620b7b85275557d1cc23ce546b89c3b89456978e" [label="copy{src=/start, dest=/usr/local/bin/start}" shape="note"];
  "sha256:61ea9824c0ce33f123452682e050a61a2cd8af4f172d1bcdad14919253871f35" [label="/bin/sh -c mkdir -p /cache && chown -R nginx:nginx /cache" shape="box"];
  "sha256:806d75c63351ffaa068e8c88938f475d3f589632e9c34d0f6a96e269976d74ba" [label="sha256:806d75c63351ffaa068e8c88938f475d3f589632e9c34d0f6a96e269976d74ba" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:0da118b92b8b7bb3019b68fa620b7b85275557d1cc23ce546b89c3b89456978e" [label=""];
  "sha256:9a471a44eb38f849b36c3f873418cda17a64d256475b4f9c45a56fb319cd232a" -> "sha256:0da118b92b8b7bb3019b68fa620b7b85275557d1cc23ce546b89c3b89456978e" [label=""];
  "sha256:0da118b92b8b7bb3019b68fa620b7b85275557d1cc23ce546b89c3b89456978e" -> "sha256:61ea9824c0ce33f123452682e050a61a2cd8af4f172d1bcdad14919253871f35" [label=""];
  "sha256:61ea9824c0ce33f123452682e050a61a2cd8af4f172d1bcdad14919253871f35" -> "sha256:806d75c63351ffaa068e8c88938f475d3f589632e9c34d0f6a96e269976d74ba" [label=""];
}

