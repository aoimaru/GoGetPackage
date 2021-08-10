[app/sources/324201184.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:19466f2a965c735c5f6610e9cce01502b20e8345836718df1470961b0568ac1a" [label="mkdir{path=/src}" shape="note"];
  "sha256:74f35854619b77397328a776ad08bbb1f747f8535b6232489051a3f34b6b1354" [label="local://context" shape="ellipse"];
  "sha256:e19a44f932a397c9e9d18298545e5076b36ba3c20b1fdfb171a5bad2adc42654" [label="copy{src=/requirements.txt, dest=/src/requirements.txt}" shape="note"];
  "sha256:b4eacb4e512b467bc02a61d62a7d91abf36c31a5a16b5e265f740c00531b1667" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:ec3dfaf43fa101667d34fb7b5ca1cdfccba070ee4161a11a930760f2dc79e157" [label="/bin/sh -c python -m nltk.downloader -d /usr/local/share/nltk_data punkt" shape="box"];
  "sha256:3daece168792830e4a684126508f6d43a706a26d90d98856ecf941e81d369726" [label="sha256:3daece168792830e4a684126508f6d43a706a26d90d98856ecf941e81d369726" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:19466f2a965c735c5f6610e9cce01502b20e8345836718df1470961b0568ac1a" [label=""];
  "sha256:19466f2a965c735c5f6610e9cce01502b20e8345836718df1470961b0568ac1a" -> "sha256:e19a44f932a397c9e9d18298545e5076b36ba3c20b1fdfb171a5bad2adc42654" [label=""];
  "sha256:74f35854619b77397328a776ad08bbb1f747f8535b6232489051a3f34b6b1354" -> "sha256:e19a44f932a397c9e9d18298545e5076b36ba3c20b1fdfb171a5bad2adc42654" [label=""];
  "sha256:e19a44f932a397c9e9d18298545e5076b36ba3c20b1fdfb171a5bad2adc42654" -> "sha256:b4eacb4e512b467bc02a61d62a7d91abf36c31a5a16b5e265f740c00531b1667" [label=""];
  "sha256:b4eacb4e512b467bc02a61d62a7d91abf36c31a5a16b5e265f740c00531b1667" -> "sha256:ec3dfaf43fa101667d34fb7b5ca1cdfccba070ee4161a11a930760f2dc79e157" [label=""];
  "sha256:ec3dfaf43fa101667d34fb7b5ca1cdfccba070ee4161a11a930760f2dc79e157" -> "sha256:3daece168792830e4a684126508f6d43a706a26d90d98856ecf941e81d369726" [label=""];
}

