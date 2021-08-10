[app/sources/473499745.Dockerfile]
digraph {
  "sha256:a86c77cf35d7d337bc94deb00247db85653673a54c9c48cff0e9d0188c5ee013" [label="docker-image://gcr.io/tetratelabs/tetrate-base:v0.1@sha256:765fc01b96d0ce1719fdc4f616192eed9791f109428e6996b9ef55f4bf3808e8" shape="ellipse"];
  "sha256:7dd5e0de7e02cc43804a773c143fa92e1bd0f96c2579cc96165683cc373f8b48" [label="local://context" shape="ellipse"];
  "sha256:1d572e30bf4d5876bef5d943a2260f651abbb103abb5d41e9e0b80c0ad43d5ff" [label="copy{src=/build/bin/account-server-static, dest=/usr/local/bin/account-server}" shape="note"];
  "sha256:d2b082a21766d806d58fac89f059f7d41fde1b3c3dbca0f738179adef711cb2d" [label="sha256:d2b082a21766d806d58fac89f059f7d41fde1b3c3dbca0f738179adef711cb2d" shape="plaintext"];
  "sha256:a86c77cf35d7d337bc94deb00247db85653673a54c9c48cff0e9d0188c5ee013" -> "sha256:1d572e30bf4d5876bef5d943a2260f651abbb103abb5d41e9e0b80c0ad43d5ff" [label=""];
  "sha256:7dd5e0de7e02cc43804a773c143fa92e1bd0f96c2579cc96165683cc373f8b48" -> "sha256:1d572e30bf4d5876bef5d943a2260f651abbb103abb5d41e9e0b80c0ad43d5ff" [label=""];
  "sha256:1d572e30bf4d5876bef5d943a2260f651abbb103abb5d41e9e0b80c0ad43d5ff" -> "sha256:d2b082a21766d806d58fac89f059f7d41fde1b3c3dbca0f738179adef711cb2d" [label=""];
}

