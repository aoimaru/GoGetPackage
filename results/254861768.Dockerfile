[app/sources/254861768.Dockerfile]
digraph {
  "sha256:df03fc015e58790a81c51c090a77e73d529909cae9591cc492130f9875b1cfaf" [label="docker-image://docker.io/concourse/git-resource:latest" shape="ellipse"];
  "sha256:61ab7085f881a2a8af1fb437f750c85f81c2512375cc5aba6bf37d371f075e80" [label="/bin/sh -c apk add --update coreutils" shape="box"];
  "sha256:86bb9c018e0580a93565857c211c7ca84273da134c715182c60ad88a46b7dc4f" [label="/bin/sh -c mv /opt/resource /opt/git-resource" shape="box"];
  "sha256:98e70d1e1539eefaa8398f05521c5c8e3106d1a9e6c09305cfe20e15a872c5fc" [label="local://context" shape="ellipse"];
  "sha256:cd36e18212a46eec6b022037440c9aef84fe4802bd4b764c7c758ae42cfac362" [label="copy{src=/assets, dest=/opt/resource/}" shape="note"];
  "sha256:45dea9819a72a4f5f0a5f6518d6d716597337dba50acd217286c08a0f5e86bba" [label="/bin/sh -c chmod +x /opt/resource/*" shape="box"];
  "sha256:0a279d0586fe7f77a716c073c63b1b665fefb3650b8280db9ebfe255604c985d" [label="sha256:0a279d0586fe7f77a716c073c63b1b665fefb3650b8280db9ebfe255604c985d" shape="plaintext"];
  "sha256:df03fc015e58790a81c51c090a77e73d529909cae9591cc492130f9875b1cfaf" -> "sha256:61ab7085f881a2a8af1fb437f750c85f81c2512375cc5aba6bf37d371f075e80" [label=""];
  "sha256:61ab7085f881a2a8af1fb437f750c85f81c2512375cc5aba6bf37d371f075e80" -> "sha256:86bb9c018e0580a93565857c211c7ca84273da134c715182c60ad88a46b7dc4f" [label=""];
  "sha256:86bb9c018e0580a93565857c211c7ca84273da134c715182c60ad88a46b7dc4f" -> "sha256:cd36e18212a46eec6b022037440c9aef84fe4802bd4b764c7c758ae42cfac362" [label=""];
  "sha256:98e70d1e1539eefaa8398f05521c5c8e3106d1a9e6c09305cfe20e15a872c5fc" -> "sha256:cd36e18212a46eec6b022037440c9aef84fe4802bd4b764c7c758ae42cfac362" [label=""];
  "sha256:cd36e18212a46eec6b022037440c9aef84fe4802bd4b764c7c758ae42cfac362" -> "sha256:45dea9819a72a4f5f0a5f6518d6d716597337dba50acd217286c08a0f5e86bba" [label=""];
  "sha256:45dea9819a72a4f5f0a5f6518d6d716597337dba50acd217286c08a0f5e86bba" -> "sha256:0a279d0586fe7f77a716c073c63b1b665fefb3650b8280db9ebfe255604c985d" [label=""];
}

