[app/sources/252774781.Dockerfile]
digraph {
  "sha256:22312758c93f774df1c0336b9ba120a3301f560609d3b0937b90a4f41ab91e43" [label="local://context" shape="ellipse"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:cec4e163d11c8a3e230f6e162830c0fef1673320fa9f503ac373709f3ea2fe99" [label="/bin/sh -c apt-get update && apt-get install -y build-essential nginx && echo \"daemon off;\" >> /etc/nginx/nginx.conf" shape="box"];
  "sha256:383aecf2f8299fee174f6df86847f7b9b48f8e2171b3b6895515fd2d15534196" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:7f88ef42e6531defc3d43d725849ffef42dd01c36d3648fe671634f502cebafe" [label="copy{src=/package.json, dest=/usr/src/app/},copy{src=/npm-shrinkwrap.json*, dest=/usr/src/app/}" shape="note"];
  "sha256:aed7480b60a4c088ccfca3f6972161a456d9649aa5691d27b292d6143591a3ef" [label="/bin/sh -c npm install --silent" shape="box"];
  "sha256:805b3719473061f9027c301da1548c53a342d47f8deb5621fad779aba41617f3" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:9ab1e299d6c040b96bf6ada0e54d95327075b58b57de6aa8081a062f81d4c90e" [label="/bin/sh -c npm run-script build" shape="box"];
  "sha256:eb9faa1a1c05d1964b59feb890a44898c68bb524622358dc418891267b395d85" [label="/bin/sh -c cp -r dist/. /var/www/html/" shape="box"];
  "sha256:897465fb15c5e77a47679428770eee243e27c3c56068f11bc7f649c92fd848b0" [label="sha256:897465fb15c5e77a47679428770eee243e27c3c56068f11bc7f649c92fd848b0" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:cec4e163d11c8a3e230f6e162830c0fef1673320fa9f503ac373709f3ea2fe99" [label=""];
  "sha256:cec4e163d11c8a3e230f6e162830c0fef1673320fa9f503ac373709f3ea2fe99" -> "sha256:383aecf2f8299fee174f6df86847f7b9b48f8e2171b3b6895515fd2d15534196" [label=""];
  "sha256:383aecf2f8299fee174f6df86847f7b9b48f8e2171b3b6895515fd2d15534196" -> "sha256:7f88ef42e6531defc3d43d725849ffef42dd01c36d3648fe671634f502cebafe" [label=""];
  "sha256:22312758c93f774df1c0336b9ba120a3301f560609d3b0937b90a4f41ab91e43" -> "sha256:7f88ef42e6531defc3d43d725849ffef42dd01c36d3648fe671634f502cebafe" [label=""];
  "sha256:7f88ef42e6531defc3d43d725849ffef42dd01c36d3648fe671634f502cebafe" -> "sha256:aed7480b60a4c088ccfca3f6972161a456d9649aa5691d27b292d6143591a3ef" [label=""];
  "sha256:aed7480b60a4c088ccfca3f6972161a456d9649aa5691d27b292d6143591a3ef" -> "sha256:805b3719473061f9027c301da1548c53a342d47f8deb5621fad779aba41617f3" [label=""];
  "sha256:22312758c93f774df1c0336b9ba120a3301f560609d3b0937b90a4f41ab91e43" -> "sha256:805b3719473061f9027c301da1548c53a342d47f8deb5621fad779aba41617f3" [label=""];
  "sha256:805b3719473061f9027c301da1548c53a342d47f8deb5621fad779aba41617f3" -> "sha256:9ab1e299d6c040b96bf6ada0e54d95327075b58b57de6aa8081a062f81d4c90e" [label=""];
  "sha256:9ab1e299d6c040b96bf6ada0e54d95327075b58b57de6aa8081a062f81d4c90e" -> "sha256:eb9faa1a1c05d1964b59feb890a44898c68bb524622358dc418891267b395d85" [label=""];
  "sha256:eb9faa1a1c05d1964b59feb890a44898c68bb524622358dc418891267b395d85" -> "sha256:897465fb15c5e77a47679428770eee243e27c3c56068f11bc7f649c92fd848b0" [label=""];
}

