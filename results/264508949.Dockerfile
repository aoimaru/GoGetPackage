[app/sources/264508949.Dockerfile]
digraph {
  "sha256:49aba05e34c50f05780900b7c61f7ba36ac293773334393d1af46136acc9c574" [label="docker-image://docker.io/library/nginx:1.13.9-alpine" shape="ellipse"];
  "sha256:0859e395b9829708a039f19ba7aaed5b1865a04ab550776ba99019b523001d72" [label="docker-image://docker.io/library/node:7.3.0-alpine" shape="ellipse"];
  "sha256:951c8fe05b73dc6bcd0aca79c9d416ca64989018b50e9a509e834275bd013103" [label="/bin/sh -c apk add --no-cache bash ca-certificates wget" shape="box"];
  "sha256:b64056102fe9e6a304f9be6b1f95fda6a764d54b1d30555f514131cf4d2388e5" [label="/bin/sh -c wget -qO- https://github.com/pndaproject/platform-console-frontend/archive/$VERSION.tar.gz | tar -xvz &&     mv platform-console-frontend-$VERSION src" shape="box"];
  "sha256:dca3bd0c79db8a2b7970eaa5ea82e6a6b1ec8190e87f2777ae4961a2e2babbdf" [label="/bin/sh -c sed -i 's/grunt-cli v1.2/grunt-cli v1./g' /src/build.sh" shape="box"];
  "sha256:d059c73f58246300dd67d8a12103da888bced71fc7d9dac03acb7ce4b7dc5109" [label="/bin/sh -c npm install -g grunt-cli && cd src && ./build.sh $VERSION" shape="box"];
  "sha256:bfd2e334e430079c5375493857b699b038f942d0b6ec39a8050bc80af4522b61" [label="copy{src=/src/pnda-build/console-frontend-.tar.gz, dest=/}" shape="note"];
  "sha256:03dc9ed67f17ca008ce7d188a6800989e6d55477b172cca5e64d3c7c65bf5e66" [label="local://context" shape="ellipse"];
  "sha256:c92a037187d272d069cdeb3db57548daf6fc20b94bf71b43df696c9568dd6412" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:694261ec134b1a373a9bb692e35ce9c984e8c798d308ce927fcc8f663387c27f" [label="/bin/sh -c apk add --no-cache py2-pip bash && pip install j2cli &&     tar -xzf /console-frontend-$VERSION.tar.gz --strip 1 -C /usr/share/nginx/html/" shape="box"];
  "sha256:e92caed7dc2e46ed0841806b1a5ccfc0c1fd4c59281c4b2d9ca31bc37cd7cf25" [label="sha256:e92caed7dc2e46ed0841806b1a5ccfc0c1fd4c59281c4b2d9ca31bc37cd7cf25" shape="plaintext"];
  "sha256:0859e395b9829708a039f19ba7aaed5b1865a04ab550776ba99019b523001d72" -> "sha256:951c8fe05b73dc6bcd0aca79c9d416ca64989018b50e9a509e834275bd013103" [label=""];
  "sha256:951c8fe05b73dc6bcd0aca79c9d416ca64989018b50e9a509e834275bd013103" -> "sha256:b64056102fe9e6a304f9be6b1f95fda6a764d54b1d30555f514131cf4d2388e5" [label=""];
  "sha256:b64056102fe9e6a304f9be6b1f95fda6a764d54b1d30555f514131cf4d2388e5" -> "sha256:dca3bd0c79db8a2b7970eaa5ea82e6a6b1ec8190e87f2777ae4961a2e2babbdf" [label=""];
  "sha256:dca3bd0c79db8a2b7970eaa5ea82e6a6b1ec8190e87f2777ae4961a2e2babbdf" -> "sha256:d059c73f58246300dd67d8a12103da888bced71fc7d9dac03acb7ce4b7dc5109" [label=""];
  "sha256:49aba05e34c50f05780900b7c61f7ba36ac293773334393d1af46136acc9c574" -> "sha256:bfd2e334e430079c5375493857b699b038f942d0b6ec39a8050bc80af4522b61" [label=""];
  "sha256:d059c73f58246300dd67d8a12103da888bced71fc7d9dac03acb7ce4b7dc5109" -> "sha256:bfd2e334e430079c5375493857b699b038f942d0b6ec39a8050bc80af4522b61" [label=""];
  "sha256:bfd2e334e430079c5375493857b699b038f942d0b6ec39a8050bc80af4522b61" -> "sha256:c92a037187d272d069cdeb3db57548daf6fc20b94bf71b43df696c9568dd6412" [label=""];
  "sha256:03dc9ed67f17ca008ce7d188a6800989e6d55477b172cca5e64d3c7c65bf5e66" -> "sha256:c92a037187d272d069cdeb3db57548daf6fc20b94bf71b43df696c9568dd6412" [label=""];
  "sha256:c92a037187d272d069cdeb3db57548daf6fc20b94bf71b43df696c9568dd6412" -> "sha256:694261ec134b1a373a9bb692e35ce9c984e8c798d308ce927fcc8f663387c27f" [label=""];
  "sha256:694261ec134b1a373a9bb692e35ce9c984e8c798d308ce927fcc8f663387c27f" -> "sha256:e92caed7dc2e46ed0841806b1a5ccfc0c1fd4c59281c4b2d9ca31bc37cd7cf25" [label=""];
}

