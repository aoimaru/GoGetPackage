[app/sources/202515478.Dockerfile]
digraph {
  "sha256:e3d8a2f1f796fb4cf53561981988fb75e45177bcbe12242bd4201bd78f726f9e" [label="docker-image://docker.io/multiarch/alpine:armhf-v3.3" shape="ellipse"];
  "sha256:4bcd1f476e7258f3de263e64c0bab73910702d6998f30b4eca8aa10f55e24121" [label="/bin/sh -c apk add --no-cache python3 &&     apk add --no-cache --virtual=build-dependencies wget ca-certificates &&     wget \"https://bootstrap.pypa.io/get-pip.py\" -O /dev/stdout | python3 &&     apk del build-dependencies" shape="box"];
  "sha256:7d82960411682c1e6a9cc2bfd1fc8ddae79842d241e089c1a1df796c27fb30fc" [label="/bin/sh -c pip3 install freenom-dns-updater" shape="box"];
  "sha256:8b24bf0050c28a53bee64e8fb7c232aa3858ccc976989de152efb3aa5762106d" [label="sha256:8b24bf0050c28a53bee64e8fb7c232aa3858ccc976989de152efb3aa5762106d" shape="plaintext"];
  "sha256:e3d8a2f1f796fb4cf53561981988fb75e45177bcbe12242bd4201bd78f726f9e" -> "sha256:4bcd1f476e7258f3de263e64c0bab73910702d6998f30b4eca8aa10f55e24121" [label=""];
  "sha256:4bcd1f476e7258f3de263e64c0bab73910702d6998f30b4eca8aa10f55e24121" -> "sha256:7d82960411682c1e6a9cc2bfd1fc8ddae79842d241e089c1a1df796c27fb30fc" [label=""];
  "sha256:7d82960411682c1e6a9cc2bfd1fc8ddae79842d241e089c1a1df796c27fb30fc" -> "sha256:8b24bf0050c28a53bee64e8fb7c232aa3858ccc976989de152efb3aa5762106d" [label=""];
}

