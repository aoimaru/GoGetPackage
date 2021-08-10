[app/sources/234247738.Dockerfile]
digraph {
  "sha256:91743d5695f2d80310a594b7e0331e9504a7ba8bed28a298b531f60ed89e6408" [label="docker-image://docker.io/japaric/x86_64-unknown-linux-musl:latest" shape="ellipse"];
  "sha256:df1c6d6227301332f33a4eaa0e5f22e2cd7ac39eddcaa581d463e590b648b8f6" [label="/bin/sh -c apt-get update &&     apt-get install -y libudev-dev" shape="box"];
  "sha256:3c7511cc3fa59543605c4c4fce3cf95f00822be8ef05417305cc080158301b7f" [label="sha256:3c7511cc3fa59543605c4c4fce3cf95f00822be8ef05417305cc080158301b7f" shape="plaintext"];
  "sha256:91743d5695f2d80310a594b7e0331e9504a7ba8bed28a298b531f60ed89e6408" -> "sha256:df1c6d6227301332f33a4eaa0e5f22e2cd7ac39eddcaa581d463e590b648b8f6" [label=""];
  "sha256:df1c6d6227301332f33a4eaa0e5f22e2cd7ac39eddcaa581d463e590b648b8f6" -> "sha256:3c7511cc3fa59543605c4c4fce3cf95f00822be8ef05417305cc080158301b7f" [label=""];
}

