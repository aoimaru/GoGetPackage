[app/sources/267937781.Dockerfile]
digraph {
  "sha256:ae7c222d36e62387c10848be83ba05ab075f6fc5ad714e3acbfac50349c3be47" [label="docker-image://quay.io/openshiftio/fabric8-services-fabric8-auth:c9398c" shape="ellipse"];
  "sha256:b129122b6cd1489c78dff86b1ee667b670a1a23c6de2b45edd4d27352edcfaa4" [label="local://context" shape="ellipse"];
  "sha256:5e5e4d09b2957c536166c05ce4c1c962a0f882a3957e5212c4c71b970212fd8d" [label="copy{src=/bin/auth, dest=/usr/local/auth/bin/auth}" shape="note"];
  "sha256:e0b13d776ff5987b8774c43955c7261db42e1981a4ead601ce76ce6dc8e7e613" [label="/bin/sh -c echo chmod +x /usr/local/auth/bin/auth" shape="box"];
  "sha256:f9bfb6d8f4292c30519f3e64ce9742d22e6d9ebc334d0392fc682f41408284bd" [label="sha256:f9bfb6d8f4292c30519f3e64ce9742d22e6d9ebc334d0392fc682f41408284bd" shape="plaintext"];
  "sha256:ae7c222d36e62387c10848be83ba05ab075f6fc5ad714e3acbfac50349c3be47" -> "sha256:5e5e4d09b2957c536166c05ce4c1c962a0f882a3957e5212c4c71b970212fd8d" [label=""];
  "sha256:b129122b6cd1489c78dff86b1ee667b670a1a23c6de2b45edd4d27352edcfaa4" -> "sha256:5e5e4d09b2957c536166c05ce4c1c962a0f882a3957e5212c4c71b970212fd8d" [label=""];
  "sha256:5e5e4d09b2957c536166c05ce4c1c962a0f882a3957e5212c4c71b970212fd8d" -> "sha256:e0b13d776ff5987b8774c43955c7261db42e1981a4ead601ce76ce6dc8e7e613" [label=""];
  "sha256:e0b13d776ff5987b8774c43955c7261db42e1981a4ead601ce76ce6dc8e7e613" -> "sha256:f9bfb6d8f4292c30519f3e64ce9742d22e6d9ebc334d0392fc682f41408284bd" [label=""];
}

