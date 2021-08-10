[app/sources/252791523.Dockerfile]
digraph {
  "sha256:104d5fde58ac954e44d250b492e6fcc2abd6f0a6ef087723bc42a37f78c447e8" [label="docker-image://docker.io/library/python:3.4" shape="ellipse"];
  "sha256:118fa9af95cb4cb106445ca7b07b0127b16ab6fe84a702ab1eadf619ed06b833" [label="/bin/sh -c groupadd -r uwsgi && useradd -r -g uwsgi uwsgi" shape="box"];
  "sha256:241181270a309ab57ab9f8f8d5c83fdcf5af8c7cca287ab9e589668f348e7b5b" [label="/bin/sh -c pip install Flask==0.10.0 uWSGI==2.0.8 requests==2.5.1 redis==2.10.3" shape="box"];
  "sha256:a5669e314b40adf965150a76901531ae4cd173d9442590ea0f9e8f3cf05038b5" [label="mkdir{path=/app}" shape="note"];
  "sha256:0deaca1541db7d07a71b44f6ff1964561d02e76507ede08cb67d3f27a136f493" [label="local://context" shape="ellipse"];
  "sha256:ed95deb761f99fb4dec3e0715a890ce2ef2393f75bbc7fe27ee1695427b5d09a" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:b17dbf2331f3dc23c382306987a3edd81acc5a6f913017494b5d1084ad2e64dd" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:932ab62a7c1a42865541629fdc3cf96700ccc782d0d7c8ab87417cde1ec21181" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:16f2fbb8d0d95b2230ce8970870f3cb9a4768dbee10ae7d4e3c7c28b60262d61" [label="sha256:16f2fbb8d0d95b2230ce8970870f3cb9a4768dbee10ae7d4e3c7c28b60262d61" shape="plaintext"];
  "sha256:104d5fde58ac954e44d250b492e6fcc2abd6f0a6ef087723bc42a37f78c447e8" -> "sha256:118fa9af95cb4cb106445ca7b07b0127b16ab6fe84a702ab1eadf619ed06b833" [label=""];
  "sha256:118fa9af95cb4cb106445ca7b07b0127b16ab6fe84a702ab1eadf619ed06b833" -> "sha256:241181270a309ab57ab9f8f8d5c83fdcf5af8c7cca287ab9e589668f348e7b5b" [label=""];
  "sha256:241181270a309ab57ab9f8f8d5c83fdcf5af8c7cca287ab9e589668f348e7b5b" -> "sha256:a5669e314b40adf965150a76901531ae4cd173d9442590ea0f9e8f3cf05038b5" [label=""];
  "sha256:a5669e314b40adf965150a76901531ae4cd173d9442590ea0f9e8f3cf05038b5" -> "sha256:ed95deb761f99fb4dec3e0715a890ce2ef2393f75bbc7fe27ee1695427b5d09a" [label=""];
  "sha256:0deaca1541db7d07a71b44f6ff1964561d02e76507ede08cb67d3f27a136f493" -> "sha256:ed95deb761f99fb4dec3e0715a890ce2ef2393f75bbc7fe27ee1695427b5d09a" [label=""];
  "sha256:ed95deb761f99fb4dec3e0715a890ce2ef2393f75bbc7fe27ee1695427b5d09a" -> "sha256:b17dbf2331f3dc23c382306987a3edd81acc5a6f913017494b5d1084ad2e64dd" [label=""];
  "sha256:0deaca1541db7d07a71b44f6ff1964561d02e76507ede08cb67d3f27a136f493" -> "sha256:b17dbf2331f3dc23c382306987a3edd81acc5a6f913017494b5d1084ad2e64dd" [label=""];
  "sha256:b17dbf2331f3dc23c382306987a3edd81acc5a6f913017494b5d1084ad2e64dd" -> "sha256:932ab62a7c1a42865541629fdc3cf96700ccc782d0d7c8ab87417cde1ec21181" [label=""];
  "sha256:932ab62a7c1a42865541629fdc3cf96700ccc782d0d7c8ab87417cde1ec21181" -> "sha256:16f2fbb8d0d95b2230ce8970870f3cb9a4768dbee10ae7d4e3c7c28b60262d61" [label=""];
}

