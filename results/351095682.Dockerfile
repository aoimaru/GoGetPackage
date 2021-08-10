[app/sources/351095682.Dockerfile]
digraph {
  "sha256:52b587c65fd395e6a9c1b511c80e7e0129184f80f9dcae0edcdd703ea8bf9474" [label="docker-image://docker.io/williamyeh/ansible:debian7-onbuild" shape="ellipse"];
  "sha256:d0c06a7c3927c906bcac5bc95b4ac2bf0563ad43b39712b73dfc59cf1902448a" [label="/bin/sh -c ansible-playbook-wrapper" shape="box"];
  "sha256:18130e82611b45dd4e731119cbf2ec3dd1d7294bd5920285dca4db5d7424eb7d" [label="sha256:18130e82611b45dd4e731119cbf2ec3dd1d7294bd5920285dca4db5d7424eb7d" shape="plaintext"];
  "sha256:52b587c65fd395e6a9c1b511c80e7e0129184f80f9dcae0edcdd703ea8bf9474" -> "sha256:d0c06a7c3927c906bcac5bc95b4ac2bf0563ad43b39712b73dfc59cf1902448a" [label=""];
  "sha256:d0c06a7c3927c906bcac5bc95b4ac2bf0563ad43b39712b73dfc59cf1902448a" -> "sha256:18130e82611b45dd4e731119cbf2ec3dd1d7294bd5920285dca4db5d7424eb7d" [label=""];
}

