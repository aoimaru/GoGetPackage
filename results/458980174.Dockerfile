[app/sources/458980174.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:328fce1b1b95af06000a909b93891caf72824c524dc515e6bd138b16279eaa65" [label="/bin/sh -c apt-get update && apt-get install -y     asciidoc     cdbs     debootstrap     devscripts     make     pbuilder     python-jinja2     python-setuptools     python-yaml     &&     apt-get clean" shape="box"];
  "sha256:0fdd0e94a50ad7519852ebcf3da75c80c3c258dd325835f928ad922577f0763a" [label="mkdir{path=/ansible}" shape="note"];
  "sha256:3265aaf2ab2dc1d8c22d9ea7e95ce9d59e0a4bf4cbdc9b524f8127c8dcbf4abd" [label="sha256:3265aaf2ab2dc1d8c22d9ea7e95ce9d59e0a4bf4cbdc9b524f8127c8dcbf4abd" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:328fce1b1b95af06000a909b93891caf72824c524dc515e6bd138b16279eaa65" [label=""];
  "sha256:328fce1b1b95af06000a909b93891caf72824c524dc515e6bd138b16279eaa65" -> "sha256:0fdd0e94a50ad7519852ebcf3da75c80c3c258dd325835f928ad922577f0763a" [label=""];
  "sha256:0fdd0e94a50ad7519852ebcf3da75c80c3c258dd325835f928ad922577f0763a" -> "sha256:3265aaf2ab2dc1d8c22d9ea7e95ce9d59e0a4bf4cbdc9b524f8127c8dcbf4abd" [label=""];
}

