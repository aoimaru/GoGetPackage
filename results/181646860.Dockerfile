[app/sources/181646860.Dockerfile]
digraph {
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" [label="docker-image://docker.io/library/alpine:3.3" shape="ellipse"];
  "sha256:71b151bd2a4e7736db81a270615cc726045b34e3e437c1051f0ea8b123595102" [label="/bin/sh -c apk --update --no-cache upgrade &&     apk add --update --no-cache git gcc &&     apk add --update --no-cache --repository http://alpine.gliderlabs.com/alpine/edge/community go &&     go get github.com/tleyden/couchbase-cluster-go/... &&     mv $GOPATH/bin/* /usr/bin &&     rm -rf /tmp/* &&     apk del git go gcc &&     addgroup cbclustergo &&     adduser -D -g \"\" -s /bin/sh -G cbclustergo cbclustergo" shape="box"];
  "sha256:e8ef97c5d67cfe682ed94149870ab9e053380610825dd576e8ec6a14702badfc" [label="mkdir{path=/home/cbclustergo}" shape="note"];
  "sha256:4f0eb2cf62525bd0ed72853ef1d082df9797ba73f33cd1ab6593ccfc2709cbbc" [label="sha256:4f0eb2cf62525bd0ed72853ef1d082df9797ba73f33cd1ab6593ccfc2709cbbc" shape="plaintext"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" -> "sha256:71b151bd2a4e7736db81a270615cc726045b34e3e437c1051f0ea8b123595102" [label=""];
  "sha256:71b151bd2a4e7736db81a270615cc726045b34e3e437c1051f0ea8b123595102" -> "sha256:e8ef97c5d67cfe682ed94149870ab9e053380610825dd576e8ec6a14702badfc" [label=""];
  "sha256:e8ef97c5d67cfe682ed94149870ab9e053380610825dd576e8ec6a14702badfc" -> "sha256:4f0eb2cf62525bd0ed72853ef1d082df9797ba73f33cd1ab6593ccfc2709cbbc" [label=""];
}

