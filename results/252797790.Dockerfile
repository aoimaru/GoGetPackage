[app/sources/252797790.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:f948421c2e851c512774ec6e26e6f301f82d114cde5e0d33fb71e9216b705c8e" [label="local://context" shape="ellipse"];
  "sha256:26aa4ca09bbaa782519151bef49cc238c6e3ac4b99fc5bc32dd90f3d77b0fca9" [label="copy{src=/*.go, dest=/}" shape="note"];
  "sha256:d89b6db3c7940c1a7a3e9aafc6e55ba58ed67b5ff6fb1e77ee2291f0875a436b" [label="/bin/sh -c apk add --update bash && apk --update add go git&& ORG_PATH=\"github.com/Financial-Times\" && REPO_PATH=\"${ORG_PATH}/vulcan-config-builder\" && export GOPATH=/gopath && mkdir -p $GOPATH/src/${ORG_PATH} && ln -s ${PWD} $GOPATH/src/${REPO_PATH} && cd $GOPATH/src/${REPO_PATH} && go get && go build ${REPO_PATH} && apk del go git && rm -rf $GOPATH /var/cache/apk/*" shape="box"];
  "sha256:d6b3bdc8c3daaac4104ad278be77da69d8463a1a5557f19a5f36ac77b70b1e04" [label="sha256:d6b3bdc8c3daaac4104ad278be77da69d8463a1a5557f19a5f36ac77b70b1e04" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:26aa4ca09bbaa782519151bef49cc238c6e3ac4b99fc5bc32dd90f3d77b0fca9" [label=""];
  "sha256:f948421c2e851c512774ec6e26e6f301f82d114cde5e0d33fb71e9216b705c8e" -> "sha256:26aa4ca09bbaa782519151bef49cc238c6e3ac4b99fc5bc32dd90f3d77b0fca9" [label=""];
  "sha256:26aa4ca09bbaa782519151bef49cc238c6e3ac4b99fc5bc32dd90f3d77b0fca9" -> "sha256:d89b6db3c7940c1a7a3e9aafc6e55ba58ed67b5ff6fb1e77ee2291f0875a436b" [label=""];
  "sha256:d89b6db3c7940c1a7a3e9aafc6e55ba58ed67b5ff6fb1e77ee2291f0875a436b" -> "sha256:d6b3bdc8c3daaac4104ad278be77da69d8463a1a5557f19a5f36ac77b70b1e04" [label=""];
}

