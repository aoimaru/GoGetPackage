[app/sources/252775255.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:cd12fe1e2accbf2eae48d864aa2b2bdbfa3b477f2b5eb8e67cedfcc9ca9a0f07" [label="/bin/sh -c apk --no-cache update && apk --no-cache add curl gzip && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:faec7e593015f26f94014835859c328ade2cf5654d0d6aecffcf5ea00ff7c176" [label="sha256:faec7e593015f26f94014835859c328ade2cf5654d0d6aecffcf5ea00ff7c176" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:cd12fe1e2accbf2eae48d864aa2b2bdbfa3b477f2b5eb8e67cedfcc9ca9a0f07" [label=""];
  "sha256:cd12fe1e2accbf2eae48d864aa2b2bdbfa3b477f2b5eb8e67cedfcc9ca9a0f07" -> "sha256:faec7e593015f26f94014835859c328ade2cf5654d0d6aecffcf5ea00ff7c176" [label=""];
}

