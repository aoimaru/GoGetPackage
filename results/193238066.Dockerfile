[app/sources/193238066.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:4e848830b1086576c24efa5647dfa1c2f468405874c1be6d3bc838b32e8862f5" [label="mkdir{path=/srv}" shape="note"];
  "sha256:0d101ce78787c0583e66f84aa3845c16cac51076a3744ef9929227bad710ac3c" [label="/bin/sh -c apt-get update && apt-get install --yes python3-pip" shape="box"];
  "sha256:acfe4da04ce4d68632c3fa9c292c789212e15d11fccda1c7ccedf074a3a4ee13" [label="local://context" shape="ellipse"];
  "sha256:ac8620ff9ab5a11f645f2d34c0c0c419b65ec9234215aef5e480528373b30551" [label="copy{src=/, dest=/srv/}" shape="note"];
  "sha256:0ae55175fd19719e5bd2eac58aab3e5570e15f68d514d2ed4e367e152f2f1ca1" [label="/bin/sh -c pip3 install -r requirements.txt" shape="box"];
  "sha256:a7f7d76902a6acc7dda596060886da62ba8ec7185dce3c08241a0d6a466c02d5" [label="/bin/sh -c test -n \"${COMMIT_ID}\"" shape="box"];
  "sha256:fbf26958403114511edeeea53331b8df2f38f67e66fa23f54845d223c8e9bb7f" [label="/bin/sh -c echo \"${COMMIT_ID}\" > version-info.txt" shape="box"];
  "sha256:8dce728153bf6b7e9bb61aa9840a94a6a14338d54fb5ef4554bd23b87ddad1b2" [label="sha256:8dce728153bf6b7e9bb61aa9840a94a6a14338d54fb5ef4554bd23b87ddad1b2" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:4e848830b1086576c24efa5647dfa1c2f468405874c1be6d3bc838b32e8862f5" [label=""];
  "sha256:4e848830b1086576c24efa5647dfa1c2f468405874c1be6d3bc838b32e8862f5" -> "sha256:0d101ce78787c0583e66f84aa3845c16cac51076a3744ef9929227bad710ac3c" [label=""];
  "sha256:0d101ce78787c0583e66f84aa3845c16cac51076a3744ef9929227bad710ac3c" -> "sha256:ac8620ff9ab5a11f645f2d34c0c0c419b65ec9234215aef5e480528373b30551" [label=""];
  "sha256:acfe4da04ce4d68632c3fa9c292c789212e15d11fccda1c7ccedf074a3a4ee13" -> "sha256:ac8620ff9ab5a11f645f2d34c0c0c419b65ec9234215aef5e480528373b30551" [label=""];
  "sha256:ac8620ff9ab5a11f645f2d34c0c0c419b65ec9234215aef5e480528373b30551" -> "sha256:0ae55175fd19719e5bd2eac58aab3e5570e15f68d514d2ed4e367e152f2f1ca1" [label=""];
  "sha256:0ae55175fd19719e5bd2eac58aab3e5570e15f68d514d2ed4e367e152f2f1ca1" -> "sha256:a7f7d76902a6acc7dda596060886da62ba8ec7185dce3c08241a0d6a466c02d5" [label=""];
  "sha256:a7f7d76902a6acc7dda596060886da62ba8ec7185dce3c08241a0d6a466c02d5" -> "sha256:fbf26958403114511edeeea53331b8df2f38f67e66fa23f54845d223c8e9bb7f" [label=""];
  "sha256:fbf26958403114511edeeea53331b8df2f38f67e66fa23f54845d223c8e9bb7f" -> "sha256:8dce728153bf6b7e9bb61aa9840a94a6a14338d54fb5ef4554bd23b87ddad1b2" [label=""];
}

