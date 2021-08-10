[app/sources/272655513.Dockerfile]
digraph {
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" [label="docker-image://docker.io/library/buildpack-deps:jessie" shape="ellipse"];
  "sha256:a187f74bcffc5f5e268cb8bef260ea6eba21835c5f5d830168ec259858309c83" [label="local://context" shape="ellipse"];
  "sha256:fb9728c904cdb325fd2e20a38e35f3e1544d149c6db09662d50fe598737488f5" [label="copy{src=/, dest=/usr/src/}" shape="note"];
  "sha256:4e38ba0e31136dcc5fd3c5b5c1e5c7ac920d9688842afdabbda87b8f911fcd88" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:7aa450beb3556999058817fdbd5ddf780f5c61af164ad301d807b8eb626456f6" [label="/bin/sh -c gcc -g -Wall -static nnp-test.c -o /usr/bin/nnp-test" shape="box"];
  "sha256:a9b54bf0687534ac09c5a1daa6384bb91ece9c68647b6a14e708417348cb0dae" [label="/bin/sh -c chmod +s /usr/bin/nnp-test" shape="box"];
  "sha256:cf79544a0f1b814f9b7fbd215e44c1fe36ed000b7b1479a5bba608fbfcb37f43" [label="sha256:cf79544a0f1b814f9b7fbd215e44c1fe36ed000b7b1479a5bba608fbfcb37f43" shape="plaintext"];
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" -> "sha256:fb9728c904cdb325fd2e20a38e35f3e1544d149c6db09662d50fe598737488f5" [label=""];
  "sha256:a187f74bcffc5f5e268cb8bef260ea6eba21835c5f5d830168ec259858309c83" -> "sha256:fb9728c904cdb325fd2e20a38e35f3e1544d149c6db09662d50fe598737488f5" [label=""];
  "sha256:fb9728c904cdb325fd2e20a38e35f3e1544d149c6db09662d50fe598737488f5" -> "sha256:4e38ba0e31136dcc5fd3c5b5c1e5c7ac920d9688842afdabbda87b8f911fcd88" [label=""];
  "sha256:4e38ba0e31136dcc5fd3c5b5c1e5c7ac920d9688842afdabbda87b8f911fcd88" -> "sha256:7aa450beb3556999058817fdbd5ddf780f5c61af164ad301d807b8eb626456f6" [label=""];
  "sha256:7aa450beb3556999058817fdbd5ddf780f5c61af164ad301d807b8eb626456f6" -> "sha256:a9b54bf0687534ac09c5a1daa6384bb91ece9c68647b6a14e708417348cb0dae" [label=""];
  "sha256:a9b54bf0687534ac09c5a1daa6384bb91ece9c68647b6a14e708417348cb0dae" -> "sha256:cf79544a0f1b814f9b7fbd215e44c1fe36ed000b7b1479a5bba608fbfcb37f43" [label=""];
}

