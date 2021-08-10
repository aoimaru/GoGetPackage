[app/sources/252787681.Dockerfile]
digraph {
  "sha256:30ce057aca7a42126358c6987cc2239f1c038e6d668a9f50bdb32aafe130420b" [label="docker-image://docker.io/library/php:5.6-cli" shape="ellipse"];
  "sha256:a39a48436be80a7f626a7ee159d938b953daebb1333e4957955113aa9f3d7878" [label="/bin/sh -c apt-get update -y && apt-get install -y libicu-dev && docker-php-ext-install intl" shape="box"];
  "sha256:4f132a9acf5175744d3693c8e5a230f8f665560e3bc2e480917c659ea399efeb" [label="local://context" shape="ellipse"];
  "sha256:3bd1e8bd22d466a053a7597c1f8f848b52dd4ff52e8e64df3372254add371393" [label="copy{src=/, dest=/usr/src/cakephp}" shape="note"];
  "sha256:84ec095d60abf1e82dbdd20cd90698755ed7ff0baed7992502c975b71f3bf154" [label="mkdir{path=/usr/src/cakephp}" shape="note"];
  "sha256:22003f3c94be1a65779afa2805339b22d868d729e5083ac7df2b8e90b1f56af9" [label="sha256:22003f3c94be1a65779afa2805339b22d868d729e5083ac7df2b8e90b1f56af9" shape="plaintext"];
  "sha256:30ce057aca7a42126358c6987cc2239f1c038e6d668a9f50bdb32aafe130420b" -> "sha256:a39a48436be80a7f626a7ee159d938b953daebb1333e4957955113aa9f3d7878" [label=""];
  "sha256:a39a48436be80a7f626a7ee159d938b953daebb1333e4957955113aa9f3d7878" -> "sha256:3bd1e8bd22d466a053a7597c1f8f848b52dd4ff52e8e64df3372254add371393" [label=""];
  "sha256:4f132a9acf5175744d3693c8e5a230f8f665560e3bc2e480917c659ea399efeb" -> "sha256:3bd1e8bd22d466a053a7597c1f8f848b52dd4ff52e8e64df3372254add371393" [label=""];
  "sha256:3bd1e8bd22d466a053a7597c1f8f848b52dd4ff52e8e64df3372254add371393" -> "sha256:84ec095d60abf1e82dbdd20cd90698755ed7ff0baed7992502c975b71f3bf154" [label=""];
  "sha256:84ec095d60abf1e82dbdd20cd90698755ed7ff0baed7992502c975b71f3bf154" -> "sha256:22003f3c94be1a65779afa2805339b22d868d729e5083ac7df2b8e90b1f56af9" [label=""];
}

