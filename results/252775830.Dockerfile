[app/sources/252775830.Dockerfile]
digraph {
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" [label="docker-image://docker.io/library/alpine:3.3" shape="ellipse"];
  "sha256:6b870a58bdd1a78c49c794cce8fd67ee6a6c6184cac3ac9b0fdb17f3c472e519" [label="/bin/sh -c mkdir -p /tmp/httping" shape="box"];
  "sha256:2645c7e296422b46b26d1d6f208337b02091f6a130c57d0b956b8b826bd2b7ef" [label="local://context" shape="ellipse"];
  "sha256:a556582ee63897b708b6573c5b287c65201d91eb7f23860b47bf0ea520635dd2" [label="copy{src=/httping.go, dest=/tmp/httping/}" shape="note"];
  "sha256:bda6acc280e2c1a17e81d83d177787f9b0259ae397fa7977d88a0bd01c39558d" [label="/bin/sh -c apk add --no-cache build-base go && cd /tmp/httping && go install -ldflags \"-linkmode external -extldflags -static\" && apk del --purge build-base go && rm -rf /var/cache/apk/* /tmp/*" shape="box"];
  "sha256:55f767f1c557d955eecc058d0d0f607371142ae3399f2c0a144eb462c3958ecd" [label="sha256:55f767f1c557d955eecc058d0d0f607371142ae3399f2c0a144eb462c3958ecd" shape="plaintext"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" -> "sha256:6b870a58bdd1a78c49c794cce8fd67ee6a6c6184cac3ac9b0fdb17f3c472e519" [label=""];
  "sha256:6b870a58bdd1a78c49c794cce8fd67ee6a6c6184cac3ac9b0fdb17f3c472e519" -> "sha256:a556582ee63897b708b6573c5b287c65201d91eb7f23860b47bf0ea520635dd2" [label=""];
  "sha256:2645c7e296422b46b26d1d6f208337b02091f6a130c57d0b956b8b826bd2b7ef" -> "sha256:a556582ee63897b708b6573c5b287c65201d91eb7f23860b47bf0ea520635dd2" [label=""];
  "sha256:a556582ee63897b708b6573c5b287c65201d91eb7f23860b47bf0ea520635dd2" -> "sha256:bda6acc280e2c1a17e81d83d177787f9b0259ae397fa7977d88a0bd01c39558d" [label=""];
  "sha256:bda6acc280e2c1a17e81d83d177787f9b0259ae397fa7977d88a0bd01c39558d" -> "sha256:55f767f1c557d955eecc058d0d0f607371142ae3399f2c0a144eb462c3958ecd" [label=""];
}

