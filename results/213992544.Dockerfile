[app/sources/213992544.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:6ec46cd00918ae7c2d95bc24cf2343f2e935f590faf90146750a11481a771792" [label="mkdir{path=/app}" shape="note"];
  "sha256:9575ea1cdc37d46aeeb3710902c64b1a1c6c72529f031de744cbb117429fab05" [label="local://context" shape="ellipse"];
  "sha256:3a2bcb27068987e6c604c5c3f56b9b272e03c138160a28812a15f25f8f15c34f" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:769f2d4057bffb67442503e4fbd584fb840e2fba3a019fded6f381b66ba53b06" [label="/bin/sh -c apt-get update     && apt-get install -y netcat     && apt-get install -y binutils libproj-dev gdal-bin     && apt-get install -y vim curl gettext     && rm -rf /var/lib/apt/lists/*     && curl -L https://raw.githubusercontent.com/Frojd/Wagtail-Boilerplate/develop/config/.vimrc > ~/.vimrc" shape="box"];
  "sha256:10d3dfaa10de78c0c0e2973cca69509c3af2bee3669b8bafd13cee5a221ec383" [label="/bin/sh -c apt-get update && apt-get -y install postgresql" shape="box"];
  "sha256:cebc53ae925570568aa37bfc2cf5f8b8e721b4e74424b3255f262b96016bfdf4" [label="/bin/sh -c pip install --upgrade pip     && pip install -r requirements/$REQUIREMENTS --no-cache-dir     && pip install ipython     && pip install pywatchman" shape="box"];
  "sha256:9e8b7d1f62690c318b1a969b50d92b191ff84f00d284828366898fc9f1f6327e" [label="sha256:9e8b7d1f62690c318b1a969b50d92b191ff84f00d284828366898fc9f1f6327e" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:6ec46cd00918ae7c2d95bc24cf2343f2e935f590faf90146750a11481a771792" [label=""];
  "sha256:6ec46cd00918ae7c2d95bc24cf2343f2e935f590faf90146750a11481a771792" -> "sha256:3a2bcb27068987e6c604c5c3f56b9b272e03c138160a28812a15f25f8f15c34f" [label=""];
  "sha256:9575ea1cdc37d46aeeb3710902c64b1a1c6c72529f031de744cbb117429fab05" -> "sha256:3a2bcb27068987e6c604c5c3f56b9b272e03c138160a28812a15f25f8f15c34f" [label=""];
  "sha256:3a2bcb27068987e6c604c5c3f56b9b272e03c138160a28812a15f25f8f15c34f" -> "sha256:769f2d4057bffb67442503e4fbd584fb840e2fba3a019fded6f381b66ba53b06" [label=""];
  "sha256:769f2d4057bffb67442503e4fbd584fb840e2fba3a019fded6f381b66ba53b06" -> "sha256:10d3dfaa10de78c0c0e2973cca69509c3af2bee3669b8bafd13cee5a221ec383" [label=""];
  "sha256:10d3dfaa10de78c0c0e2973cca69509c3af2bee3669b8bafd13cee5a221ec383" -> "sha256:cebc53ae925570568aa37bfc2cf5f8b8e721b4e74424b3255f262b96016bfdf4" [label=""];
  "sha256:cebc53ae925570568aa37bfc2cf5f8b8e721b4e74424b3255f262b96016bfdf4" -> "sha256:9e8b7d1f62690c318b1a969b50d92b191ff84f00d284828366898fc9f1f6327e" [label=""];
}

