[app/sources/199387079.Dockerfile]
digraph {
  "sha256:2c8bfaad414be600c0b47718cdeaad09e10555a8a37952b392cb08f0c12d9bf1" [label="local://context" shape="ellipse"];
  "sha256:2a6985865df8f242a8981a20d92c51b9603112469098a037abff3dc7e99b81c8" [label="copy{src=/explorer, dest=/explorer}" shape="note"];
  "sha256:552925a5171e0982d8b7191c13cfbe63948afa97c03bb4bcc3406204ef9f0db3" [label="copy{src=/README.md, dest=/README.md}" shape="note"];
  "sha256:75f4feab5d06b3a37fe720267f02afcd3c434c7f2784ee02e6c44ddc012b0433" [label="sha256:75f4feab5d06b3a37fe720267f02afcd3c434c7f2784ee02e6c44ddc012b0433" shape="plaintext"];
  "sha256:2c8bfaad414be600c0b47718cdeaad09e10555a8a37952b392cb08f0c12d9bf1" -> "sha256:2a6985865df8f242a8981a20d92c51b9603112469098a037abff3dc7e99b81c8" [label=""];
  "sha256:2a6985865df8f242a8981a20d92c51b9603112469098a037abff3dc7e99b81c8" -> "sha256:552925a5171e0982d8b7191c13cfbe63948afa97c03bb4bcc3406204ef9f0db3" [label=""];
  "sha256:2c8bfaad414be600c0b47718cdeaad09e10555a8a37952b392cb08f0c12d9bf1" -> "sha256:552925a5171e0982d8b7191c13cfbe63948afa97c03bb4bcc3406204ef9f0db3" [label=""];
  "sha256:552925a5171e0982d8b7191c13cfbe63948afa97c03bb4bcc3406204ef9f0db3" -> "sha256:75f4feab5d06b3a37fe720267f02afcd3c434c7f2784ee02e6c44ddc012b0433" [label=""];
}

