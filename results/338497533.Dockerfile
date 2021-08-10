[app/sources/338497533.Dockerfile]
digraph {
  "sha256:d39bf9e71191843ac566e3f4acb6994c812916634cd2f758f0705cf85cbaa691" [label="docker-image://docker.io/library/node:9.11-alpine" shape="ellipse"];
  "sha256:8709c37cd609ccbfe69839d6689832d462ec770401eb049bb215954287c20a0f" [label="/bin/sh -c mkdir -p /opt/laboratory" shape="box"];
  "sha256:b13c112c7c14eb2c798760c47a4e2a1dd232cf24acd87b2454a223fa4df46e6b" [label="/bin/sh -c apk add -qU --no-cache -t .build-deps git     &&  cd /opt/laboratory     &&  git init     &&  git remote add origin https://github.com/stellar/laboratory.git     &&  git pull origin master     &&  git reset --hard $LABORATORY_COMMIT     &&  npm install -s     &&  npm install -g http-server     &&  apk del -q .build-deps     &&  ./node_modules/.bin/gulp build     &&  ls | grep -v dist | xargs rm -r" shape="box"];
  "sha256:9a1c3e50374512832355298e7d468569560e3d632476834843a6b49a8eca3baa" [label="local://context" shape="ellipse"];
  "sha256:974760d4e9c9233ab436d727d2e0a1cffdd49c316563189f3e90fe4cb0fad6c1" [label="copy{src=/laboratory/opt/laboratory/init.sh, dest=/opt/laboratory}" shape="note"];
  "sha256:0af1d22744b1e5140019dccd48e61b44a56139a933930f6624de2d9fd8d7629a" [label="sha256:0af1d22744b1e5140019dccd48e61b44a56139a933930f6624de2d9fd8d7629a" shape="plaintext"];
  "sha256:d39bf9e71191843ac566e3f4acb6994c812916634cd2f758f0705cf85cbaa691" -> "sha256:8709c37cd609ccbfe69839d6689832d462ec770401eb049bb215954287c20a0f" [label=""];
  "sha256:8709c37cd609ccbfe69839d6689832d462ec770401eb049bb215954287c20a0f" -> "sha256:b13c112c7c14eb2c798760c47a4e2a1dd232cf24acd87b2454a223fa4df46e6b" [label=""];
  "sha256:b13c112c7c14eb2c798760c47a4e2a1dd232cf24acd87b2454a223fa4df46e6b" -> "sha256:974760d4e9c9233ab436d727d2e0a1cffdd49c316563189f3e90fe4cb0fad6c1" [label=""];
  "sha256:9a1c3e50374512832355298e7d468569560e3d632476834843a6b49a8eca3baa" -> "sha256:974760d4e9c9233ab436d727d2e0a1cffdd49c316563189f3e90fe4cb0fad6c1" [label=""];
  "sha256:974760d4e9c9233ab436d727d2e0a1cffdd49c316563189f3e90fe4cb0fad6c1" -> "sha256:0af1d22744b1e5140019dccd48e61b44a56139a933930f6624de2d9fd8d7629a" [label=""];
}

