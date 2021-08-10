[app/sources/342066478.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:06a762052ec4c87ac346e4fac06c26f239abb0573e5712469e4cbdd8cc6547d6" [label="local://context" shape="ellipse"];
  "sha256:a1c69187fa3f9a19e64d2817e02f55b87c8a2b95970c8a18038f1ea084de36d9" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:e7a8f0934565230ec3b45ff364bb1a74c1a8d28522b187748c2092e3102de924" [label="pip install requests" shape="box"];
  "sha256:65756fe246eac8ae2b4e383df8defb82a8d11fe8aaf520405b2335f2ffa859dd" [label="sha256:65756fe246eac8ae2b4e383df8defb82a8d11fe8aaf520405b2335f2ffa859dd" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:a1c69187fa3f9a19e64d2817e02f55b87c8a2b95970c8a18038f1ea084de36d9" [label=""];
  "sha256:06a762052ec4c87ac346e4fac06c26f239abb0573e5712469e4cbdd8cc6547d6" -> "sha256:a1c69187fa3f9a19e64d2817e02f55b87c8a2b95970c8a18038f1ea084de36d9" [label=""];
  "sha256:a1c69187fa3f9a19e64d2817e02f55b87c8a2b95970c8a18038f1ea084de36d9" -> "sha256:e7a8f0934565230ec3b45ff364bb1a74c1a8d28522b187748c2092e3102de924" [label=""];
  "sha256:e7a8f0934565230ec3b45ff364bb1a74c1a8d28522b187748c2092e3102de924" -> "sha256:65756fe246eac8ae2b4e383df8defb82a8d11fe8aaf520405b2335f2ffa859dd" [label=""];
}

