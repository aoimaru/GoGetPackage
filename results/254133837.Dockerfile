[app/sources/254133837.Dockerfile]
digraph {
  "sha256:e5042710d794c9a85b8da270eec4c1cd6c044cc00653401e2f7e83fd82b79efa" [label="docker-image://docker.io/library/debian:9" shape="ellipse"];
  "sha256:b5b9cb8ceaabb6e6c50d75b443cda606b77aed9993bc29eafa493d8e4b9ebbe7" [label="/bin/sh -c apt-get update && apt-get install -y autoconf build-essential wget git liblz4-dev libmbedtls-dev" shape="box"];
  "sha256:a1e51795c9062b111c7d92eb1a39671e52d3bb7ba85c6591c416106565c863c7" [label="local://context" shape="ellipse"];
  "sha256:9237d5f646c6bfc41ddb3dc0040d1d305d5361017feb4a98fcd7c958731aebcf" [label="copy{src=/, dest=/ovpn3/core}" shape="note"];
  "sha256:f132abb8a267088adae7cf1201d5a5c6a8a9ab7a2ed5094069f784023af8ae9e" [label="sha256:f132abb8a267088adae7cf1201d5a5c6a8a9ab7a2ed5094069f784023af8ae9e" shape="plaintext"];
  "sha256:e5042710d794c9a85b8da270eec4c1cd6c044cc00653401e2f7e83fd82b79efa" -> "sha256:b5b9cb8ceaabb6e6c50d75b443cda606b77aed9993bc29eafa493d8e4b9ebbe7" [label=""];
  "sha256:b5b9cb8ceaabb6e6c50d75b443cda606b77aed9993bc29eafa493d8e4b9ebbe7" -> "sha256:9237d5f646c6bfc41ddb3dc0040d1d305d5361017feb4a98fcd7c958731aebcf" [label=""];
  "sha256:a1e51795c9062b111c7d92eb1a39671e52d3bb7ba85c6591c416106565c863c7" -> "sha256:9237d5f646c6bfc41ddb3dc0040d1d305d5361017feb4a98fcd7c958731aebcf" [label=""];
  "sha256:9237d5f646c6bfc41ddb3dc0040d1d305d5361017feb4a98fcd7c958731aebcf" -> "sha256:f132abb8a267088adae7cf1201d5a5c6a8a9ab7a2ed5094069f784023af8ae9e" [label=""];
}

