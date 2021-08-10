[app/sources/174660163.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:314dfa6a81b450a84c913fc6c459a3f6a6b8519de353d422f9c702aa8e7cc3df" [label="/bin/sh -c set -xe     && echo 'deb http://http.debian.net/debian jessie-backports main' >> /etc/apt/sources.list     && apt-get update     && apt-get install --no-install-recommends -y fcgiwrap                                                   ffmpeg                                                   nginx                                                   php5-fpm                                                   zoneminder     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8f338aad6ce36f1150fe988df78b8eb0077861349389226c2f875d5535bca2da" [label="/bin/sh -c set -xe     && chmod o+r /etc/zm/zm.conf     && sed -i 's@^ZM_DB_HOST=.*$@ZM_DB_HOST=mysql@' /etc/zm/zm.conf     && sed -i 's@^;date.timezone =.*$@date.timezone = Asia/Shanghai@' /etc/php5/*/php.ini     && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime     && echo 'FCGI_CHILDREN=4' > /etc/default/fcgiwrap" shape="box"];
  "sha256:cf2ea43e16fb47be61feb0a424cf563d774c4ca433642c9b330ebc8890319c80" [label="local://context" shape="ellipse"];
  "sha256:fff7a832c7da27bf39912cdcfa0ec8440b00a5e9bbdb658996f5f3733037581c" [label="copy{src=/nginx.conf, dest=/etc/nginx/sites-available/default}" shape="note"];
  "sha256:59bae0887a6c8330cec7f0cfe53a4dfca69fe1e07a3d66a4d1a87409bbcecf53" [label="sha256:59bae0887a6c8330cec7f0cfe53a4dfca69fe1e07a3d66a4d1a87409bbcecf53" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:314dfa6a81b450a84c913fc6c459a3f6a6b8519de353d422f9c702aa8e7cc3df" [label=""];
  "sha256:314dfa6a81b450a84c913fc6c459a3f6a6b8519de353d422f9c702aa8e7cc3df" -> "sha256:8f338aad6ce36f1150fe988df78b8eb0077861349389226c2f875d5535bca2da" [label=""];
  "sha256:8f338aad6ce36f1150fe988df78b8eb0077861349389226c2f875d5535bca2da" -> "sha256:fff7a832c7da27bf39912cdcfa0ec8440b00a5e9bbdb658996f5f3733037581c" [label=""];
  "sha256:cf2ea43e16fb47be61feb0a424cf563d774c4ca433642c9b330ebc8890319c80" -> "sha256:fff7a832c7da27bf39912cdcfa0ec8440b00a5e9bbdb658996f5f3733037581c" [label=""];
  "sha256:fff7a832c7da27bf39912cdcfa0ec8440b00a5e9bbdb658996f5f3733037581c" -> "sha256:59bae0887a6c8330cec7f0cfe53a4dfca69fe1e07a3d66a4d1a87409bbcecf53" [label=""];
}

