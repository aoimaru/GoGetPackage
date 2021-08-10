[app/sources/317302178.Dockerfile]
digraph {
  "sha256:b9df1106536a6aea66dabc802a9199fc047ffa8f3c416dcd39a881ac10d12050" [label="local://context" shape="ellipse"];
  "sha256:b237aa5decc906e2171f8558e912392e688feb6d8c28b692c552dff765f6b1c1" [label="docker-image://gcr.io/cloud-builders/gcloud@sha256:181ef056c8bf8185771b435ab85fe35daddf92053b3783b4347c81aec274a7a0" shape="ellipse"];
  "sha256:67a01eb554c6aea72144097ae9bf9ac093d6a48a33840b496d775a42987ee771" [label="copy{src=/kubectl.bash, dest=/builder/kubectl.bash}" shape="note"];
  "sha256:bf2d891765c1556f6e45f4954dccf30481ccb285af4b06c21632ed17ed90f5f4" [label="/bin/sh -c curl -o /tmp/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.10.8/bin/linux/amd64/kubectl" shape="box"];
  "sha256:8bbf3f2af6f50d5c6381a9099fb4e9baa1b20775f908abac6a8f70c02a60960a" [label="/bin/sh -c chmod +x /tmp/kubectl" shape="box"];
  "sha256:c27717f38f40e7e7f29f1543ab85e97ffc6e0440c06129ac790ea4a727ebaf78" [label="/bin/sh -c mv /tmp/kubectl /builder/kubectl" shape="box"];
  "sha256:7809bb3d52797de380d5665edb26ce4ffec7c6633d83a16c4a213d9a65d8e594" [label="sha256:7809bb3d52797de380d5665edb26ce4ffec7c6633d83a16c4a213d9a65d8e594" shape="plaintext"];
  "sha256:b237aa5decc906e2171f8558e912392e688feb6d8c28b692c552dff765f6b1c1" -> "sha256:67a01eb554c6aea72144097ae9bf9ac093d6a48a33840b496d775a42987ee771" [label=""];
  "sha256:b9df1106536a6aea66dabc802a9199fc047ffa8f3c416dcd39a881ac10d12050" -> "sha256:67a01eb554c6aea72144097ae9bf9ac093d6a48a33840b496d775a42987ee771" [label=""];
  "sha256:67a01eb554c6aea72144097ae9bf9ac093d6a48a33840b496d775a42987ee771" -> "sha256:bf2d891765c1556f6e45f4954dccf30481ccb285af4b06c21632ed17ed90f5f4" [label=""];
  "sha256:bf2d891765c1556f6e45f4954dccf30481ccb285af4b06c21632ed17ed90f5f4" -> "sha256:8bbf3f2af6f50d5c6381a9099fb4e9baa1b20775f908abac6a8f70c02a60960a" [label=""];
  "sha256:8bbf3f2af6f50d5c6381a9099fb4e9baa1b20775f908abac6a8f70c02a60960a" -> "sha256:c27717f38f40e7e7f29f1543ab85e97ffc6e0440c06129ac790ea4a727ebaf78" [label=""];
  "sha256:c27717f38f40e7e7f29f1543ab85e97ffc6e0440c06129ac790ea4a727ebaf78" -> "sha256:7809bb3d52797de380d5665edb26ce4ffec7c6633d83a16c4a213d9a65d8e594" [label=""];
}

