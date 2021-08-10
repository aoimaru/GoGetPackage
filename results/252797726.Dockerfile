[app/sources/252797726.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:00591499f8da7063d6426e923900d7be4bae1a275912f9f6a22a71c092ac9ad0" [label="local://context" shape="ellipse"];
  "sha256:4e59f5d2e9deee1b063bbeb9cb17b18abbf3f93058266660eacb06bbc2d41201" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:3779ad1ce09c2c4b81a7d9e3bbbd23819dfd843788bc14ca621016b0948d5300" [label="/bin/sh -c apk add --update bash && apk --update add go git bzr&& REPO_PATH=\"github.com/Financial-Times/org-writer-neo\" && export GOPATH=/gopath && mkdir -p $GOPATH/src/github.com/Financial-Times && ln -s ${PWD} $GOPATH/src/${REPO_PATH} && cd $GOPATH/src/${REPO_PATH} && go get && go test && go build ${REPO_PATH} && apk del go git bzr && rm -rf $GOPATH /var/cache/apk/*" shape="box"];
  "sha256:c5faf265ea47bc0b23174655973d130747e263aacf75875d7e025344d6cca678" [label="sha256:c5faf265ea47bc0b23174655973d130747e263aacf75875d7e025344d6cca678" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:4e59f5d2e9deee1b063bbeb9cb17b18abbf3f93058266660eacb06bbc2d41201" [label=""];
  "sha256:00591499f8da7063d6426e923900d7be4bae1a275912f9f6a22a71c092ac9ad0" -> "sha256:4e59f5d2e9deee1b063bbeb9cb17b18abbf3f93058266660eacb06bbc2d41201" [label=""];
  "sha256:4e59f5d2e9deee1b063bbeb9cb17b18abbf3f93058266660eacb06bbc2d41201" -> "sha256:3779ad1ce09c2c4b81a7d9e3bbbd23819dfd843788bc14ca621016b0948d5300" [label=""];
  "sha256:3779ad1ce09c2c4b81a7d9e3bbbd23819dfd843788bc14ca621016b0948d5300" -> "sha256:c5faf265ea47bc0b23174655973d130747e263aacf75875d7e025344d6cca678" [label=""];
}

