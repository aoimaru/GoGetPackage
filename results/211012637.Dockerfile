[app/sources/211012637.Dockerfile]
digraph {
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" [label="docker-image://docker.io/library/java:8-jre" shape="ellipse"];
  "sha256:73a24d30fc55380061fb4743336fdcc1ccc2e3f6e6cafd087d58ec353b3495c7" [label="local://context" shape="ellipse"];
  "sha256:752da63a1cacb1d970be235b8b8788a91bf01093ba63eacd3bd2420067a6ebf4" [label="copy{src=/target/product-microservice-fat.jar, dest=/opt/verticles/}" shape="note"];
  "sha256:c3533721184b53941f34ff1e8578afd704b89695ee1d7ce17aab053a0dd4a054" [label="copy{src=/src/config/docker.json, dest=/opt/verticles/}" shape="note"];
  "sha256:897264c3f7432225b7ec6a0a973a98a81cf19d6432ebdb01b99b8ba6cd6b83ba" [label="mkdir{path=/opt/verticles}" shape="note"];
  "sha256:2cdbfab85716e0dd2d3b6902bb25f82e78a1e5079c013dfa8ab7a38ea092bf64" [label="sha256:2cdbfab85716e0dd2d3b6902bb25f82e78a1e5079c013dfa8ab7a38ea092bf64" shape="plaintext"];
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" -> "sha256:752da63a1cacb1d970be235b8b8788a91bf01093ba63eacd3bd2420067a6ebf4" [label=""];
  "sha256:73a24d30fc55380061fb4743336fdcc1ccc2e3f6e6cafd087d58ec353b3495c7" -> "sha256:752da63a1cacb1d970be235b8b8788a91bf01093ba63eacd3bd2420067a6ebf4" [label=""];
  "sha256:752da63a1cacb1d970be235b8b8788a91bf01093ba63eacd3bd2420067a6ebf4" -> "sha256:c3533721184b53941f34ff1e8578afd704b89695ee1d7ce17aab053a0dd4a054" [label=""];
  "sha256:73a24d30fc55380061fb4743336fdcc1ccc2e3f6e6cafd087d58ec353b3495c7" -> "sha256:c3533721184b53941f34ff1e8578afd704b89695ee1d7ce17aab053a0dd4a054" [label=""];
  "sha256:c3533721184b53941f34ff1e8578afd704b89695ee1d7ce17aab053a0dd4a054" -> "sha256:897264c3f7432225b7ec6a0a973a98a81cf19d6432ebdb01b99b8ba6cd6b83ba" [label=""];
  "sha256:897264c3f7432225b7ec6a0a973a98a81cf19d6432ebdb01b99b8ba6cd6b83ba" -> "sha256:2cdbfab85716e0dd2d3b6902bb25f82e78a1e5079c013dfa8ab7a38ea092bf64" [label=""];
}

