[app/sources/224206349.Dockerfile]
digraph {
  "sha256:12ae1b014e481703c9e87c2362cb5669a461fde98df22c3d7a69b02b26d247d5" [label="docker-image://docker.io/governmentpaas/curl-ssl:latest" shape="ellipse"];
  "sha256:28378586f3a66ae5c2757535c6ce783f95af4e9756363e6243c54671fa760e2c" [label="/bin/sh -c apk add --no-cache $PACKAGES     && pip install awscli==$AWSCLI_VERSION     && apk --purge -v del py-pip" shape="box"];
  "sha256:0f7bbdf672e0e26609d2f21297d3b626f91443d66fa87091c9c065964fd6715d" [label="sha256:0f7bbdf672e0e26609d2f21297d3b626f91443d66fa87091c9c065964fd6715d" shape="plaintext"];
  "sha256:12ae1b014e481703c9e87c2362cb5669a461fde98df22c3d7a69b02b26d247d5" -> "sha256:28378586f3a66ae5c2757535c6ce783f95af4e9756363e6243c54671fa760e2c" [label=""];
  "sha256:28378586f3a66ae5c2757535c6ce783f95af4e9756363e6243c54671fa760e2c" -> "sha256:0f7bbdf672e0e26609d2f21297d3b626f91443d66fa87091c9c065964fd6715d" [label=""];
}

