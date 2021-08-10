[app/sources/229664901.Dockerfile]
digraph {
  "sha256:782f70bba4c595172cffca27bbee1ee004e158753f9634fdea2acf5d28fdc254" [label="docker-image://docker.io/library/node:argon" shape="ellipse"];
  "sha256:dcc4a023911169aba7ba546ef53de19eb40b388fb763765518ed0eaa6a4bc2d5" [label="mkdir{path=/home/knightsTour}" shape="note"];
  "sha256:7bc250774c85e33f5bef2d17c7e3f62fdadbc56baf0b380968b95c20a82096a1" [label="local://context" shape="ellipse"];
  "sha256:0f5930c72c0e36cef83df5f6c86096c0be882f0455336c3c43b32dc8c3fc7018" [label="copy{src=/, dest=/home/knightsTour/}" shape="note"];
  "sha256:80e7cef5632042e7f983ae5b732ccfab5778bdc9ec1fc6ed4f0640dfdf6475db" [label="/bin/sh -c cd /home/knightsTour && npm install" shape="box"];
  "sha256:6879379e6e757348f3eb8c63964d78cb84feaf1461cf1aed56520248cef76f34" [label="sha256:6879379e6e757348f3eb8c63964d78cb84feaf1461cf1aed56520248cef76f34" shape="plaintext"];
  "sha256:782f70bba4c595172cffca27bbee1ee004e158753f9634fdea2acf5d28fdc254" -> "sha256:dcc4a023911169aba7ba546ef53de19eb40b388fb763765518ed0eaa6a4bc2d5" [label=""];
  "sha256:dcc4a023911169aba7ba546ef53de19eb40b388fb763765518ed0eaa6a4bc2d5" -> "sha256:0f5930c72c0e36cef83df5f6c86096c0be882f0455336c3c43b32dc8c3fc7018" [label=""];
  "sha256:7bc250774c85e33f5bef2d17c7e3f62fdadbc56baf0b380968b95c20a82096a1" -> "sha256:0f5930c72c0e36cef83df5f6c86096c0be882f0455336c3c43b32dc8c3fc7018" [label=""];
  "sha256:0f5930c72c0e36cef83df5f6c86096c0be882f0455336c3c43b32dc8c3fc7018" -> "sha256:80e7cef5632042e7f983ae5b732ccfab5778bdc9ec1fc6ed4f0640dfdf6475db" [label=""];
  "sha256:80e7cef5632042e7f983ae5b732ccfab5778bdc9ec1fc6ed4f0640dfdf6475db" -> "sha256:6879379e6e757348f3eb8c63964d78cb84feaf1461cf1aed56520248cef76f34" [label=""];
}

