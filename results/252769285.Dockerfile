[app/sources/252769285.Dockerfile]
digraph {
  "sha256:b14750d918c54736bb05db224fddc2fb64791830b9c74fc3dcac3ef85d9ff6fb" [label="local://context" shape="ellipse"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:57faf8a5163aecd5da799e95be1c69be5d20b8ac4d9e93d4680a45cffbe63ee2" [label="/bin/sh -c apk add --no-cache make gcc g++ python" shape="box"];
  "sha256:84d4c4f9169aa75c7f0a75e6d46376ddfc2cde0acb8002ac092e4c056d7440ed" [label="/bin/sh -c apk add --update nodejs nodejs-npm git" shape="box"];
  "sha256:cf8aa62131b06f6d246d12bc216f665d7e5799d6144a3eb484e90ce9914a4bd5" [label="copy{src=/config/start.sh, dest=/home/}" shape="note"];
  "sha256:5aee95a840accc1c85ee9d9b8ab565f57ba4aa44c84f5a3a779ac9b334ef82bc" [label="/bin/sh -c chmod u+x /home/start.sh" shape="box"];
  "sha256:803a22627214ee4b55d2ad4d34e10706c0a4fd4928d0e7b9e83f37607c811b8a" [label="sha256:803a22627214ee4b55d2ad4d34e10706c0a4fd4928d0e7b9e83f37607c811b8a" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:57faf8a5163aecd5da799e95be1c69be5d20b8ac4d9e93d4680a45cffbe63ee2" [label=""];
  "sha256:57faf8a5163aecd5da799e95be1c69be5d20b8ac4d9e93d4680a45cffbe63ee2" -> "sha256:84d4c4f9169aa75c7f0a75e6d46376ddfc2cde0acb8002ac092e4c056d7440ed" [label=""];
  "sha256:84d4c4f9169aa75c7f0a75e6d46376ddfc2cde0acb8002ac092e4c056d7440ed" -> "sha256:cf8aa62131b06f6d246d12bc216f665d7e5799d6144a3eb484e90ce9914a4bd5" [label=""];
  "sha256:b14750d918c54736bb05db224fddc2fb64791830b9c74fc3dcac3ef85d9ff6fb" -> "sha256:cf8aa62131b06f6d246d12bc216f665d7e5799d6144a3eb484e90ce9914a4bd5" [label=""];
  "sha256:cf8aa62131b06f6d246d12bc216f665d7e5799d6144a3eb484e90ce9914a4bd5" -> "sha256:5aee95a840accc1c85ee9d9b8ab565f57ba4aa44c84f5a3a779ac9b334ef82bc" [label=""];
  "sha256:5aee95a840accc1c85ee9d9b8ab565f57ba4aa44c84f5a3a779ac9b334ef82bc" -> "sha256:803a22627214ee4b55d2ad4d34e10706c0a4fd4928d0e7b9e83f37607c811b8a" [label=""];
}

