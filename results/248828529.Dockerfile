[app/sources/248828529.Dockerfile]
digraph {
  "sha256:eaebd4d260b3e2211ec019adc1854357901cf5af7f65c6dd1e9d8b36af431edc" [label="docker-image://mcr.microsoft.com/windows/servercore:ltsc2016" shape="ellipse"];
  "sha256:f10ae4dca0854f948682440fa04443bb1b7036699f702da1ee03887b4eefe11c" [label="mkdir{path=/c:/nats-streaming-server}" shape="note"];
  "sha256:87ed30759f994b45ba5f862eb5cfb06b702b9cd32d22c2917cbf1d537ad0af19" [label="local://context" shape="ellipse"];
  "sha256:bf271788fc252f0eb5192fabffe18a652f5e56c0dfc97093a427b0df8c580bbc" [label="copy{src=/nats-streaming-server.exe, dest=/c:/nats-streaming-server/nats-streaming-server.exe}" shape="note"];
  "sha256:5ded4f9f6025096b10323cfe1c9f5c58c5b101690ff29b13586c8867fbdaf9ee" [label="sha256:5ded4f9f6025096b10323cfe1c9f5c58c5b101690ff29b13586c8867fbdaf9ee" shape="plaintext"];
  "sha256:eaebd4d260b3e2211ec019adc1854357901cf5af7f65c6dd1e9d8b36af431edc" -> "sha256:f10ae4dca0854f948682440fa04443bb1b7036699f702da1ee03887b4eefe11c" [label=""];
  "sha256:f10ae4dca0854f948682440fa04443bb1b7036699f702da1ee03887b4eefe11c" -> "sha256:bf271788fc252f0eb5192fabffe18a652f5e56c0dfc97093a427b0df8c580bbc" [label=""];
  "sha256:87ed30759f994b45ba5f862eb5cfb06b702b9cd32d22c2917cbf1d537ad0af19" -> "sha256:bf271788fc252f0eb5192fabffe18a652f5e56c0dfc97093a427b0df8c580bbc" [label=""];
  "sha256:bf271788fc252f0eb5192fabffe18a652f5e56c0dfc97093a427b0df8c580bbc" -> "sha256:5ded4f9f6025096b10323cfe1c9f5c58c5b101690ff29b13586c8867fbdaf9ee" [label=""];
}

