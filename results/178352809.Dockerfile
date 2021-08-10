[app/sources/178352809.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label="/bin/sh -c mkdir -p $GOPATH/src/github.com/hpcloud/tail/" shape="box"];
  "sha256:064ac7c7b65c69142e6e6bcb082a773520f5f7d11abec7881fbc258bb8ed66b9" [label="local://context" shape="ellipse"];
  "sha256:04c1ee79568129612497619a7fc633bedcd3044c02bf0ee10181973074c1487f" [label="copy{src=/, dest=/src/github.com/hpcloud/tail/}" shape="note"];
  "sha256:f37d77d877793069ec3fc4092c23d07465406e18ce61be93d38724f380987cdf" [label="/bin/sh -c go get -v github.com/hpcloud/tail" shape="box"];
  "sha256:74035e82a036ccadb91c8459cd4edd3cb1a630275b4d7634d635c42c2d8fc60c" [label="/bin/sh -c go test -v github.com/hpcloud/tail" shape="box"];
  "sha256:d656116006fee1f92fed9909bc5e6800e9707b17d7a0ea0ad1c8fd3673a480b6" [label="/bin/sh -c go install -v github.com/hpcloud/tail" shape="box"];
  "sha256:c807bdfbd3378b86db9868d1ba06c057b3a7ff6c94772a93391e3ce0114f0f21" [label="/bin/sh -c go install -v github.com/hpcloud/tail/cmd/gotail" shape="box"];
  "sha256:e8a31741c3f711208b5b71d6473a0cec0a30acf2f14d40e33d3db1eea2b62e0e" [label="/bin/sh -c $GOPATH/bin/gotail -h || true" shape="box"];
  "sha256:5c75db26aa3f6eefcbe6970cc977927503751db8d72b893d381861aaa4973a26" [label="sha256:5c75db26aa3f6eefcbe6970cc977927503751db8d72b893d381861aaa4973a26" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" [label=""];
  "sha256:ad0f69e665498f3b0e14d14f4f4ed2e1886706bc69ab6223eda5c2cbd826d6ac" -> "sha256:04c1ee79568129612497619a7fc633bedcd3044c02bf0ee10181973074c1487f" [label=""];
  "sha256:064ac7c7b65c69142e6e6bcb082a773520f5f7d11abec7881fbc258bb8ed66b9" -> "sha256:04c1ee79568129612497619a7fc633bedcd3044c02bf0ee10181973074c1487f" [label=""];
  "sha256:04c1ee79568129612497619a7fc633bedcd3044c02bf0ee10181973074c1487f" -> "sha256:f37d77d877793069ec3fc4092c23d07465406e18ce61be93d38724f380987cdf" [label=""];
  "sha256:f37d77d877793069ec3fc4092c23d07465406e18ce61be93d38724f380987cdf" -> "sha256:74035e82a036ccadb91c8459cd4edd3cb1a630275b4d7634d635c42c2d8fc60c" [label=""];
  "sha256:74035e82a036ccadb91c8459cd4edd3cb1a630275b4d7634d635c42c2d8fc60c" -> "sha256:d656116006fee1f92fed9909bc5e6800e9707b17d7a0ea0ad1c8fd3673a480b6" [label=""];
  "sha256:d656116006fee1f92fed9909bc5e6800e9707b17d7a0ea0ad1c8fd3673a480b6" -> "sha256:c807bdfbd3378b86db9868d1ba06c057b3a7ff6c94772a93391e3ce0114f0f21" [label=""];
  "sha256:c807bdfbd3378b86db9868d1ba06c057b3a7ff6c94772a93391e3ce0114f0f21" -> "sha256:e8a31741c3f711208b5b71d6473a0cec0a30acf2f14d40e33d3db1eea2b62e0e" [label=""];
  "sha256:e8a31741c3f711208b5b71d6473a0cec0a30acf2f14d40e33d3db1eea2b62e0e" -> "sha256:5c75db26aa3f6eefcbe6970cc977927503751db8d72b893d381861aaa4973a26" [label=""];
}

