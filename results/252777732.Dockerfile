[app/sources/252777732.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:9c069f6fc249db0a1d261845aed20bc20c1a5fdae3d2cbc7f8f5ef59eb080214" [label="mkdir{path=/app}" shape="note"];
  "sha256:1791736f6525abc878fc38dc972b51c4d955a7ae337cf1a881a625b941717ea3" [label="local://context" shape="ellipse"];
  "sha256:525bd69c8fd1dc10bf8a4d2a8379202e2d22e1cd6d82ec2351d79a9d9cae0f19" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:c0ef3e724fda4d743dd79005a16b07300e055b8ff0a2113fb084bfe97865ea6b" [label="/bin/sh -c npm install" shape="box"];
  "sha256:05bc1632a00fcaddd69f8dfc684547e5fe2953d4ddc0d870a488bc6e9d75095a" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:b6ed4dca68819be484c6231c4a07139cc2d9a7a9e5a8918fc42f803af7ca3ca4" [label="/bin/sh -c apt-get install -y vim" shape="box"];
  "sha256:80f5843fb07b18141b801ee0581acad7d107b03467ed3e59a70c16eada73769d" [label="sha256:80f5843fb07b18141b801ee0581acad7d107b03467ed3e59a70c16eada73769d" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:9c069f6fc249db0a1d261845aed20bc20c1a5fdae3d2cbc7f8f5ef59eb080214" [label=""];
  "sha256:9c069f6fc249db0a1d261845aed20bc20c1a5fdae3d2cbc7f8f5ef59eb080214" -> "sha256:525bd69c8fd1dc10bf8a4d2a8379202e2d22e1cd6d82ec2351d79a9d9cae0f19" [label=""];
  "sha256:1791736f6525abc878fc38dc972b51c4d955a7ae337cf1a881a625b941717ea3" -> "sha256:525bd69c8fd1dc10bf8a4d2a8379202e2d22e1cd6d82ec2351d79a9d9cae0f19" [label=""];
  "sha256:525bd69c8fd1dc10bf8a4d2a8379202e2d22e1cd6d82ec2351d79a9d9cae0f19" -> "sha256:c0ef3e724fda4d743dd79005a16b07300e055b8ff0a2113fb084bfe97865ea6b" [label=""];
  "sha256:c0ef3e724fda4d743dd79005a16b07300e055b8ff0a2113fb084bfe97865ea6b" -> "sha256:05bc1632a00fcaddd69f8dfc684547e5fe2953d4ddc0d870a488bc6e9d75095a" [label=""];
  "sha256:05bc1632a00fcaddd69f8dfc684547e5fe2953d4ddc0d870a488bc6e9d75095a" -> "sha256:b6ed4dca68819be484c6231c4a07139cc2d9a7a9e5a8918fc42f803af7ca3ca4" [label=""];
  "sha256:b6ed4dca68819be484c6231c4a07139cc2d9a7a9e5a8918fc42f803af7ca3ca4" -> "sha256:80f5843fb07b18141b801ee0581acad7d107b03467ed3e59a70c16eada73769d" [label=""];
}

