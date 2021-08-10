[app/sources/324775573.Dockerfile]
digraph {
  "sha256:9afafb29d462490276d850c8502c6597e35a8513b83ae1885e8adc8df883bd1b" [label="local://context" shape="ellipse"];
  "sha256:b8a508481fdae5b1fa776f1a845163a1ad774a7dde5345989541baf173c4606e" [label="docker-image://docker.io/library/golang:1.12-alpine@sha256:3f8e3ad3e7c128d29ac3004ac8314967c5ddbfa5bfa7caa59b0de493fc01686a" shape="ellipse"];
  "sha256:5218658d2e8a093e45dbb7090bb90ddee5ae523ad4ddb9ec27358f2691112dd5" [label="/bin/sh -c apk update && apk upgrade && apk add --no-cache     git     build-base" shape="box"];
  "sha256:af331f9d5ab31c0d2b8323ca091e3023dba613c85f44a1d770b5bfb3a83053d6" [label="mkdir{path=/vitaes}" shape="note"];
  "sha256:2b5e46941a0ad0afce9ad7bab3acf31bb837aa0334b7d858bdeebca41f6a9ea0" [label="copy{src=/go.mod, dest=/vitaes/}" shape="note"];
  "sha256:09f7a5ca73ccdf16fedacd070a194bbbf3a23de3772fe2e1ab1edb981f68f9cc" [label="/bin/sh -c go mod download" shape="box"];
  "sha256:baec78792ecc7f3bdf337c50c3b8be1c6d65c219b1507fbbe6bfdeff8fb62341" [label="copy{src=/, dest=/vitaes/}" shape="note"];
  "sha256:3e9de2a020671c2ec3246aa3e80236009211e62f57121d13ef61089ede9ef5a1" [label="/bin/sh -c go get -d -v ./..." shape="box"];
  "sha256:641bcdf217cf2b6ac213ccacfc0c95ecd070129ecd48402167bb3619b39da039" [label="sha256:641bcdf217cf2b6ac213ccacfc0c95ecd070129ecd48402167bb3619b39da039" shape="plaintext"];
  "sha256:b8a508481fdae5b1fa776f1a845163a1ad774a7dde5345989541baf173c4606e" -> "sha256:5218658d2e8a093e45dbb7090bb90ddee5ae523ad4ddb9ec27358f2691112dd5" [label=""];
  "sha256:5218658d2e8a093e45dbb7090bb90ddee5ae523ad4ddb9ec27358f2691112dd5" -> "sha256:af331f9d5ab31c0d2b8323ca091e3023dba613c85f44a1d770b5bfb3a83053d6" [label=""];
  "sha256:af331f9d5ab31c0d2b8323ca091e3023dba613c85f44a1d770b5bfb3a83053d6" -> "sha256:2b5e46941a0ad0afce9ad7bab3acf31bb837aa0334b7d858bdeebca41f6a9ea0" [label=""];
  "sha256:9afafb29d462490276d850c8502c6597e35a8513b83ae1885e8adc8df883bd1b" -> "sha256:2b5e46941a0ad0afce9ad7bab3acf31bb837aa0334b7d858bdeebca41f6a9ea0" [label=""];
  "sha256:2b5e46941a0ad0afce9ad7bab3acf31bb837aa0334b7d858bdeebca41f6a9ea0" -> "sha256:09f7a5ca73ccdf16fedacd070a194bbbf3a23de3772fe2e1ab1edb981f68f9cc" [label=""];
  "sha256:09f7a5ca73ccdf16fedacd070a194bbbf3a23de3772fe2e1ab1edb981f68f9cc" -> "sha256:baec78792ecc7f3bdf337c50c3b8be1c6d65c219b1507fbbe6bfdeff8fb62341" [label=""];
  "sha256:9afafb29d462490276d850c8502c6597e35a8513b83ae1885e8adc8df883bd1b" -> "sha256:baec78792ecc7f3bdf337c50c3b8be1c6d65c219b1507fbbe6bfdeff8fb62341" [label=""];
  "sha256:baec78792ecc7f3bdf337c50c3b8be1c6d65c219b1507fbbe6bfdeff8fb62341" -> "sha256:3e9de2a020671c2ec3246aa3e80236009211e62f57121d13ef61089ede9ef5a1" [label=""];
  "sha256:3e9de2a020671c2ec3246aa3e80236009211e62f57121d13ef61089ede9ef5a1" -> "sha256:641bcdf217cf2b6ac213ccacfc0c95ecd070129ecd48402167bb3619b39da039" [label=""];
}

