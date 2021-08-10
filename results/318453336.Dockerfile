[app/sources/318453336.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:a4787556824032b9d8c600e8ae364e634161350016a20f70f6c150d8cfe5df20" [label="local://context" shape="ellipse"];
  "sha256:d35be0e856420dc0f800ecaf708a3bd42b3cbe4045878754d37e56360cc93423" [label="copy{src=/docker-spring-boot-demo-0.0.1-SNAPSHOT.jar, dest=/souyunku-app.jar}" shape="note"];
  "sha256:9f5eb84ae5ea062742fbe84a2556db9926efe11d6323152b96575baf54a68bd8" [label="/bin/sh -c bash -c 'touch /souyunku-app.jar'" shape="box"];
  "sha256:0d5bd3e63953fb56f3a36c6dca7dfd557d7dbbbf2dc6263e18b1c85bae3e8b75" [label="sha256:0d5bd3e63953fb56f3a36c6dca7dfd557d7dbbbf2dc6263e18b1c85bae3e8b75" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:d35be0e856420dc0f800ecaf708a3bd42b3cbe4045878754d37e56360cc93423" [label=""];
  "sha256:a4787556824032b9d8c600e8ae364e634161350016a20f70f6c150d8cfe5df20" -> "sha256:d35be0e856420dc0f800ecaf708a3bd42b3cbe4045878754d37e56360cc93423" [label=""];
  "sha256:d35be0e856420dc0f800ecaf708a3bd42b3cbe4045878754d37e56360cc93423" -> "sha256:9f5eb84ae5ea062742fbe84a2556db9926efe11d6323152b96575baf54a68bd8" [label=""];
  "sha256:9f5eb84ae5ea062742fbe84a2556db9926efe11d6323152b96575baf54a68bd8" -> "sha256:0d5bd3e63953fb56f3a36c6dca7dfd557d7dbbbf2dc6263e18b1c85bae3e8b75" [label=""];
}

