[app/sources/268088651.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:c391e4913dd3b79c2c125a9dc0e8f3dd48331480ed6009005c104809a81d95a9" [label="/bin/sh -c apt-get update && apt-get upgrade -q -y &&   apt-get install -y --no-install-recommends golang git make gcc libc-dev ca-certificates &&   git clone --depth 1 https://github.com/wanchain/go-wanchain &&   (cd go-ethereum && make geth) &&   cp go-ethereum/build/bin/geth /geth &&   apt-get remove -y golang git make gcc libc-dev && apt autoremove -y && apt-get clean &&   rm -rf /go-ethereum" shape="box"];
  "sha256:9e4c2b92932369bfa09f1ce91d10d556046f93ac9579f433d4af93537a99e967" [label="sha256:9e4c2b92932369bfa09f1ce91d10d556046f93ac9579f433d4af93537a99e967" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:c391e4913dd3b79c2c125a9dc0e8f3dd48331480ed6009005c104809a81d95a9" [label=""];
  "sha256:c391e4913dd3b79c2c125a9dc0e8f3dd48331480ed6009005c104809a81d95a9" -> "sha256:9e4c2b92932369bfa09f1ce91d10d556046f93ac9579f433d4af93537a99e967" [label=""];
}

