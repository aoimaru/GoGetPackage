[app/sources/252772968.Dockerfile]
digraph {
  "sha256:b45923aa943fb5a777b46c58454df28f1a7790c2f0ae86e86a9625e1f5067051" [label="docker-image://docker.io/microsoft/dotnet:2-sdk" shape="ellipse"];
  "sha256:3bc0bbf5714613c2af1aa1adbb3b3c85e9cfb54bcbd928230c37e5025854bacb" [label="/bin/sh -c useradd -m app" shape="box"];
  "sha256:c60ab873db3938f55fc5ca115152da621e0bec7f78b0881bc0114b88015d3016" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_6.x | bash - && apt-get install -y libgdiplus && apt-get install -y nodejs && npm install -g bower && npm install -g grunt-cli && apt-get clean" shape="box"];
  "sha256:1d72a181f9bbbe5ed21fbb050252a54f861044262f206f94842cbcd68ab4147b" [label="sha256:1d72a181f9bbbe5ed21fbb050252a54f861044262f206f94842cbcd68ab4147b" shape="plaintext"];
  "sha256:b45923aa943fb5a777b46c58454df28f1a7790c2f0ae86e86a9625e1f5067051" -> "sha256:3bc0bbf5714613c2af1aa1adbb3b3c85e9cfb54bcbd928230c37e5025854bacb" [label=""];
  "sha256:3bc0bbf5714613c2af1aa1adbb3b3c85e9cfb54bcbd928230c37e5025854bacb" -> "sha256:c60ab873db3938f55fc5ca115152da621e0bec7f78b0881bc0114b88015d3016" [label=""];
  "sha256:c60ab873db3938f55fc5ca115152da621e0bec7f78b0881bc0114b88015d3016" -> "sha256:1d72a181f9bbbe5ed21fbb050252a54f861044262f206f94842cbcd68ab4147b" [label=""];
}

