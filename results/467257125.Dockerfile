[app/sources/467257125.Dockerfile]
digraph {
  "sha256:89a38055f0f508abf681fce8ae03ec7fda127c03a87c3d248d748517174b16c6" [label="docker-image://docker.io/library/python:3.7.2" shape="ellipse"];
  "sha256:b9997c52705be6ba115acc4f6c433b93a28f3b54717b95eac35add811b197a59" [label="/bin/sh -c apt-get update && apt-get install -y cmake bison flex" shape="box"];
  "sha256:1ffcacb5e4f1da5e11e6da8fb8ac84243b6618d7015760d0c12c2e74b22b4f69" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:49a3c6094b2ef9a2584a62c7ffa438d22d3dcb36859d05127a25ecac9f787041" [label="local://context" shape="ellipse"];
  "sha256:49788df2d2523ff461c74d71dd8294b103b6e9f42d3e3b9c744492b974583221" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:8f6c1b0c319516554fc6053e152808f24bfc07b1ba3aca45ceae591add3dbd44" [label="/bin/sh -c make init" shape="box"];
  "sha256:1b55aab7fa5b78e549c8254cba3120b4f5ea538f04c882ed37991b64c0f934e9" [label="/bin/sh -c pip install -e .[test]" shape="box"];
  "sha256:46ce7287dc8c8ac3d9e79659680fffd9c1938a805a784b6ef30909063f8cc768" [label="sha256:46ce7287dc8c8ac3d9e79659680fffd9c1938a805a784b6ef30909063f8cc768" shape="plaintext"];
  "sha256:89a38055f0f508abf681fce8ae03ec7fda127c03a87c3d248d748517174b16c6" -> "sha256:b9997c52705be6ba115acc4f6c433b93a28f3b54717b95eac35add811b197a59" [label=""];
  "sha256:b9997c52705be6ba115acc4f6c433b93a28f3b54717b95eac35add811b197a59" -> "sha256:1ffcacb5e4f1da5e11e6da8fb8ac84243b6618d7015760d0c12c2e74b22b4f69" [label=""];
  "sha256:1ffcacb5e4f1da5e11e6da8fb8ac84243b6618d7015760d0c12c2e74b22b4f69" -> "sha256:49788df2d2523ff461c74d71dd8294b103b6e9f42d3e3b9c744492b974583221" [label=""];
  "sha256:49a3c6094b2ef9a2584a62c7ffa438d22d3dcb36859d05127a25ecac9f787041" -> "sha256:49788df2d2523ff461c74d71dd8294b103b6e9f42d3e3b9c744492b974583221" [label=""];
  "sha256:49788df2d2523ff461c74d71dd8294b103b6e9f42d3e3b9c744492b974583221" -> "sha256:8f6c1b0c319516554fc6053e152808f24bfc07b1ba3aca45ceae591add3dbd44" [label=""];
  "sha256:8f6c1b0c319516554fc6053e152808f24bfc07b1ba3aca45ceae591add3dbd44" -> "sha256:1b55aab7fa5b78e549c8254cba3120b4f5ea538f04c882ed37991b64c0f934e9" [label=""];
  "sha256:1b55aab7fa5b78e549c8254cba3120b4f5ea538f04c882ed37991b64c0f934e9" -> "sha256:46ce7287dc8c8ac3d9e79659680fffd9c1938a805a784b6ef30909063f8cc768" [label=""];
}

