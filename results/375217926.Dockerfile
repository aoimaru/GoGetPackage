[app/sources/375217926.Dockerfile]
digraph {
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" [label="docker-image://docker.io/library/python:2.7-alpine" shape="ellipse"];
  "sha256:233c3c7bc68d07f2dbfc22a62a125b64c5a6971ce86bd693a4869d22e3ef5f1c" [label="/bin/sh -c apk update && apk add git     && git clone https://github.com/darkoperator/dnsrecon.git     && apk add --update --no-cache g++ gcc libxslt-dev" shape="box"];
  "sha256:62dde0184acf94b48bc00a4a995e1ebf10d7ea8359bf8ad95e174d1e694d9671" [label="mkdir{path=/dnsrecon}" shape="note"];
  "sha256:c30e2bcd215ba84d27906b8498f252442b0015b28da9a83eeced3b38bd410af7" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:068b7395e213ec893cd24aeafc1dda60226d30435646ec1ecc2a5f91bf45b1d4" [label="sha256:068b7395e213ec893cd24aeafc1dda60226d30435646ec1ecc2a5f91bf45b1d4" shape="plaintext"];
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" -> "sha256:233c3c7bc68d07f2dbfc22a62a125b64c5a6971ce86bd693a4869d22e3ef5f1c" [label=""];
  "sha256:233c3c7bc68d07f2dbfc22a62a125b64c5a6971ce86bd693a4869d22e3ef5f1c" -> "sha256:62dde0184acf94b48bc00a4a995e1ebf10d7ea8359bf8ad95e174d1e694d9671" [label=""];
  "sha256:62dde0184acf94b48bc00a4a995e1ebf10d7ea8359bf8ad95e174d1e694d9671" -> "sha256:c30e2bcd215ba84d27906b8498f252442b0015b28da9a83eeced3b38bd410af7" [label=""];
  "sha256:c30e2bcd215ba84d27906b8498f252442b0015b28da9a83eeced3b38bd410af7" -> "sha256:068b7395e213ec893cd24aeafc1dda60226d30435646ec1ecc2a5f91bf45b1d4" [label=""];
}

