[app/sources/345356605.Dockerfile]
digraph {
  "sha256:01896a4687a0116d304b3998d2b850cf5e341655441a9cb9c090f4a3964d88a3" [label="docker-image://docker.io/balenalib/i386-alpine:3.6-build" shape="ellipse"];
  "sha256:106d6329c58d0a7bab19be58404f78da19e8ab1a9f3f45c5656a26df60e03f38" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:c40de24b3335dce241785c5c080e10b50cfb5528a7bc7c5424831b193d09155a" [label="sha256:c40de24b3335dce241785c5c080e10b50cfb5528a7bc7c5424831b193d09155a" shape="plaintext"];
  "sha256:01896a4687a0116d304b3998d2b850cf5e341655441a9cb9c090f4a3964d88a3" -> "sha256:106d6329c58d0a7bab19be58404f78da19e8ab1a9f3f45c5656a26df60e03f38" [label=""];
  "sha256:106d6329c58d0a7bab19be58404f78da19e8ab1a9f3f45c5656a26df60e03f38" -> "sha256:c40de24b3335dce241785c5c080e10b50cfb5528a7bc7c5424831b193d09155a" [label=""];
}

