[app/sources/256060019.Dockerfile]
digraph {
  "sha256:ce5d2cada61de8647f0e13b1bf883161ac6b4b1cedb624344dc6e6f638b2f830" [label="docker-image://mcr.microsoft.com/dotnet/framework/wcf:4.8" shape="ellipse"];
  "sha256:74937cdf3ab1e07a95b2d2fcd4dd39726379841a026693f0677f6041623c80b0" [label="mkdir{path=/inetpub/wwwroot}" shape="note"];
  "sha256:d077b0230bda346d17fbc04b6cbe39455a2fc3b0a532d5fb8e717254a7494455" [label="docker-image://mcr.microsoft.com/dotnet/framework/sdk:4.8" shape="ellipse"];
  "sha256:dd4ce274697be7fa25e48ea6fe2474cbf499b63e0892daaad164255fcd432a6e" [label="mkdir{path=/app}" shape="note"];
  "sha256:14719984e0e3a84014626d64a2e39f6b833ea129cdcac35bcd43478d17094136" [label="local://context" shape="ellipse"];
  "sha256:ede928d11b3e9379fb03a737ec2bf8d914a69874f7644fd9a73b1eb7d85760c4" [label="copy{src=/WcfServiceWebApp, dest=/app/}" shape="note"];
  "sha256:6b44c22ac0af8bb77bccbe3a53e104c85720cd15a87b8ee6088c06f3ce8c9f1a" [label="/bin/sh -c msbuild /p:Configuration=Release" shape="box"];
  "sha256:3d026e77223140165797961985404d684eb90b51996d326f46f472ab4af562fc" [label="copy{src=/app, dest=/inetpub/wwwroot/}" shape="note"];
  "sha256:ccbe0f6b121731491b2a2847a46a5a3bc2962df224ee2d31db7dfa999134baa3" [label="sha256:ccbe0f6b121731491b2a2847a46a5a3bc2962df224ee2d31db7dfa999134baa3" shape="plaintext"];
  "sha256:ce5d2cada61de8647f0e13b1bf883161ac6b4b1cedb624344dc6e6f638b2f830" -> "sha256:74937cdf3ab1e07a95b2d2fcd4dd39726379841a026693f0677f6041623c80b0" [label=""];
  "sha256:d077b0230bda346d17fbc04b6cbe39455a2fc3b0a532d5fb8e717254a7494455" -> "sha256:dd4ce274697be7fa25e48ea6fe2474cbf499b63e0892daaad164255fcd432a6e" [label=""];
  "sha256:dd4ce274697be7fa25e48ea6fe2474cbf499b63e0892daaad164255fcd432a6e" -> "sha256:ede928d11b3e9379fb03a737ec2bf8d914a69874f7644fd9a73b1eb7d85760c4" [label=""];
  "sha256:14719984e0e3a84014626d64a2e39f6b833ea129cdcac35bcd43478d17094136" -> "sha256:ede928d11b3e9379fb03a737ec2bf8d914a69874f7644fd9a73b1eb7d85760c4" [label=""];
  "sha256:ede928d11b3e9379fb03a737ec2bf8d914a69874f7644fd9a73b1eb7d85760c4" -> "sha256:6b44c22ac0af8bb77bccbe3a53e104c85720cd15a87b8ee6088c06f3ce8c9f1a" [label=""];
  "sha256:74937cdf3ab1e07a95b2d2fcd4dd39726379841a026693f0677f6041623c80b0" -> "sha256:3d026e77223140165797961985404d684eb90b51996d326f46f472ab4af562fc" [label=""];
  "sha256:6b44c22ac0af8bb77bccbe3a53e104c85720cd15a87b8ee6088c06f3ce8c9f1a" -> "sha256:3d026e77223140165797961985404d684eb90b51996d326f46f472ab4af562fc" [label=""];
  "sha256:3d026e77223140165797961985404d684eb90b51996d326f46f472ab4af562fc" -> "sha256:ccbe0f6b121731491b2a2847a46a5a3bc2962df224ee2d31db7dfa999134baa3" [label=""];
}

