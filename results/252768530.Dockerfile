[app/sources/252768530.Dockerfile]
digraph {
  "sha256:dd52f9b38570902948b76c0e700c078b537ea611b5f8d4ee6181917930a2e204" [label="docker-image://docker.io/hashicorp/terraform:0.11.3" shape="ellipse"];
  "sha256:e3f961db9bb2519f6db627c4150de4379bb6a42ae8ad1931d12c420359f0f803" [label="/bin/sh -c apk add --update bash jq" shape="box"];
  "sha256:0731cbe4a9392caff472e9fb9178a4338d86ffa6a582c6b6dcc233a9f85f7b3d" [label="sha256:0731cbe4a9392caff472e9fb9178a4338d86ffa6a582c6b6dcc233a9f85f7b3d" shape="plaintext"];
  "sha256:dd52f9b38570902948b76c0e700c078b537ea611b5f8d4ee6181917930a2e204" -> "sha256:e3f961db9bb2519f6db627c4150de4379bb6a42ae8ad1931d12c420359f0f803" [label=""];
  "sha256:e3f961db9bb2519f6db627c4150de4379bb6a42ae8ad1931d12c420359f0f803" -> "sha256:0731cbe4a9392caff472e9fb9178a4338d86ffa6a582c6b6dcc233a9f85f7b3d" [label=""];
}

