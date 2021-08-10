[app/sources/483220588.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:5cde813bada7571732dd9d62c99512058f53ef0b1d644989a7fb80224cd06132" [label="/bin/sh -c apk add --no-cache curl" shape="box"];
  "sha256:d6295bc7ccbdafd90d46a973bb8d88b0c49551eba8cdd66ded3afbfb57144573" [label="local://context" shape="ellipse"];
  "sha256:41992ec59e9155b73401bd3a1e8c436157cdd728e98b1cef68a366af57a3958a" [label="copy{src=/fencing-switcher.sh, dest=/usr/local/bin/fencing-switcher.sh}" shape="note"];
  "sha256:bb958375a7adad524c9fb749ade72c00d3de1f89793f8b65b72a93262f2fd353" [label="sha256:bb958375a7adad524c9fb749ade72c00d3de1f89793f8b65b72a93262f2fd353" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:5cde813bada7571732dd9d62c99512058f53ef0b1d644989a7fb80224cd06132" [label=""];
  "sha256:5cde813bada7571732dd9d62c99512058f53ef0b1d644989a7fb80224cd06132" -> "sha256:41992ec59e9155b73401bd3a1e8c436157cdd728e98b1cef68a366af57a3958a" [label=""];
  "sha256:d6295bc7ccbdafd90d46a973bb8d88b0c49551eba8cdd66ded3afbfb57144573" -> "sha256:41992ec59e9155b73401bd3a1e8c436157cdd728e98b1cef68a366af57a3958a" [label=""];
  "sha256:41992ec59e9155b73401bd3a1e8c436157cdd728e98b1cef68a366af57a3958a" -> "sha256:bb958375a7adad524c9fb749ade72c00d3de1f89793f8b65b72a93262f2fd353" [label=""];
}

