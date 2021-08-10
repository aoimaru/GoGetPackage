[app/sources/194827253.Dockerfile]
digraph {
  "sha256:06da9659344965aa11229fb53ab104d862c59b50c3130bd1c95f13e34773a42d" [label="docker-image://docker.io/library/node:6.9.1-slim" shape="ellipse"];
  "sha256:43f557cf05e8a66ef5639f3e44b1aecd7b24e9848dde85ef9da0875a97dc6ea1" [label="mkdir{path=/home/ustwo}" shape="note"];
  "sha256:afe1a7ade434309679b16f771b32d50be492d02799717b12523f1e389e625627" [label="/bin/sh -c mkdir -p /home/ustwo/public" shape="box"];
  "sha256:31b3cceb70af8edcdc0bdcb4a0fd62d14aaebfb1fcabb6f4c1dae869616c0762" [label="local://context" shape="ellipse"];
  "sha256:0dc91c4686a9f2676c89fc5ebab1b34680fd9c36eb3630cff07abe59b6fec106" [label="copy{src=/package.sandbox.json, dest=/home/ustwo/package.json}" shape="note"];
  "sha256:4335b858547bbfe9c35ff335f99cf42937de23d4a2f44b069477bf17219c5be8" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:7469c245a617d6ffb59afe50fb557b5f572681cb19eb90049f78b91e18f2a6db" [label="copy{src=/src, dest=/home/ustwo/src}" shape="note"];
  "sha256:99b06da181bf031a1e8a5dd3e9717ba14755f9a38eae2f715b022d68982d50b9" [label="sha256:99b06da181bf031a1e8a5dd3e9717ba14755f9a38eae2f715b022d68982d50b9" shape="plaintext"];
  "sha256:06da9659344965aa11229fb53ab104d862c59b50c3130bd1c95f13e34773a42d" -> "sha256:43f557cf05e8a66ef5639f3e44b1aecd7b24e9848dde85ef9da0875a97dc6ea1" [label=""];
  "sha256:43f557cf05e8a66ef5639f3e44b1aecd7b24e9848dde85ef9da0875a97dc6ea1" -> "sha256:afe1a7ade434309679b16f771b32d50be492d02799717b12523f1e389e625627" [label=""];
  "sha256:afe1a7ade434309679b16f771b32d50be492d02799717b12523f1e389e625627" -> "sha256:0dc91c4686a9f2676c89fc5ebab1b34680fd9c36eb3630cff07abe59b6fec106" [label=""];
  "sha256:31b3cceb70af8edcdc0bdcb4a0fd62d14aaebfb1fcabb6f4c1dae869616c0762" -> "sha256:0dc91c4686a9f2676c89fc5ebab1b34680fd9c36eb3630cff07abe59b6fec106" [label=""];
  "sha256:0dc91c4686a9f2676c89fc5ebab1b34680fd9c36eb3630cff07abe59b6fec106" -> "sha256:4335b858547bbfe9c35ff335f99cf42937de23d4a2f44b069477bf17219c5be8" [label=""];
  "sha256:4335b858547bbfe9c35ff335f99cf42937de23d4a2f44b069477bf17219c5be8" -> "sha256:7469c245a617d6ffb59afe50fb557b5f572681cb19eb90049f78b91e18f2a6db" [label=""];
  "sha256:31b3cceb70af8edcdc0bdcb4a0fd62d14aaebfb1fcabb6f4c1dae869616c0762" -> "sha256:7469c245a617d6ffb59afe50fb557b5f572681cb19eb90049f78b91e18f2a6db" [label=""];
  "sha256:7469c245a617d6ffb59afe50fb557b5f572681cb19eb90049f78b91e18f2a6db" -> "sha256:99b06da181bf031a1e8a5dd3e9717ba14755f9a38eae2f715b022d68982d50b9" [label=""];
}

