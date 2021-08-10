[app/sources/347990028.Dockerfile]
digraph {
  "sha256:eae2054c861672d2b8a89dbeec37fc206cd28b3dfa6385293f7162a2764d488a" [label="docker-image://docker.io/library/golang:1.7-alpine" shape="ellipse"];
  "sha256:cb2d9d19564cd5b2612f58f95003f231b3e6e4fca3a5f070caf0c31fd2959141" [label="/bin/sh -c apk add --no-cache git" shape="box"];
  "sha256:abd7e5ac8bc8e166cffb494a10e001f4ac3fc3813feb2b8055a4cbe90e40dfb3" [label="/bin/sh -c go get github.com/tools/godep" shape="box"];
  "sha256:1d08ab906b058ebe70496105b51798ec7965edf9a6f21a484b909386cfa28c53" [label="local://context" shape="ellipse"];
  "sha256:eb5eb2709a2b64f9bbb3289f85b207fbd10488ff6a74c52849eed5a1053267b5" [label="copy{src=/, dest=/src/github.com/bitly/oauth2_proxy}" shape="note"];
  "sha256:aab932952464ac629f938868ec30761226a19b4f02be06d6f0ff3c8a9bef6ae2" [label="mkdir{path=/src/github.com/bitly/oauth2_proxy}" shape="note"];
  "sha256:c78bc4af4e0819f31a4db8a0588e99288ad1ed07d551e285d206d4ff81e26b83" [label="/bin/sh -c godep go install github.com/bitly/oauth2_proxy" shape="box"];
  "sha256:2f07e6439ce4d771fce356c70bbbe6d5c099c6471ab1e54cbe450f91329057a7" [label="sha256:2f07e6439ce4d771fce356c70bbbe6d5c099c6471ab1e54cbe450f91329057a7" shape="plaintext"];
  "sha256:eae2054c861672d2b8a89dbeec37fc206cd28b3dfa6385293f7162a2764d488a" -> "sha256:cb2d9d19564cd5b2612f58f95003f231b3e6e4fca3a5f070caf0c31fd2959141" [label=""];
  "sha256:cb2d9d19564cd5b2612f58f95003f231b3e6e4fca3a5f070caf0c31fd2959141" -> "sha256:abd7e5ac8bc8e166cffb494a10e001f4ac3fc3813feb2b8055a4cbe90e40dfb3" [label=""];
  "sha256:abd7e5ac8bc8e166cffb494a10e001f4ac3fc3813feb2b8055a4cbe90e40dfb3" -> "sha256:eb5eb2709a2b64f9bbb3289f85b207fbd10488ff6a74c52849eed5a1053267b5" [label=""];
  "sha256:1d08ab906b058ebe70496105b51798ec7965edf9a6f21a484b909386cfa28c53" -> "sha256:eb5eb2709a2b64f9bbb3289f85b207fbd10488ff6a74c52849eed5a1053267b5" [label=""];
  "sha256:eb5eb2709a2b64f9bbb3289f85b207fbd10488ff6a74c52849eed5a1053267b5" -> "sha256:aab932952464ac629f938868ec30761226a19b4f02be06d6f0ff3c8a9bef6ae2" [label=""];
  "sha256:aab932952464ac629f938868ec30761226a19b4f02be06d6f0ff3c8a9bef6ae2" -> "sha256:c78bc4af4e0819f31a4db8a0588e99288ad1ed07d551e285d206d4ff81e26b83" [label=""];
  "sha256:c78bc4af4e0819f31a4db8a0588e99288ad1ed07d551e285d206d4ff81e26b83" -> "sha256:2f07e6439ce4d771fce356c70bbbe6d5c099c6471ab1e54cbe450f91329057a7" [label=""];
}

