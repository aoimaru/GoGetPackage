[app/sources/231628320.Dockerfile]
digraph {
  "sha256:52b587c65fd395e6a9c1b511c80e7e0129184f80f9dcae0edcdd703ea8bf9474" [label="docker-image://docker.io/williamyeh/ansible:debian7-onbuild" shape="ellipse"];
  "sha256:de454fd152f5884335e78db5aac4d2bd48f6a9e8448d2ad2eae350c914ccbac1" [label="/bin/sh -c echo \"===> Patching defaults/main.yml to enable java_install_jce...\"  &&     sed -i -e 's/^java_install_jce:.*/java_install_jce: true/g' defaults/main.yml" shape="box"];
  "sha256:a7620a1e52f3eb5a9565d5058f55957f1ae7aa10b4b44876347922eb240c4207" [label="/bin/sh -c ansible-playbook-wrapper" shape="box"];
  "sha256:55939cc6c8216dfaf64c26ae5402be5ba2c162a508b87a45eaf898d0fe46935b" [label="sha256:55939cc6c8216dfaf64c26ae5402be5ba2c162a508b87a45eaf898d0fe46935b" shape="plaintext"];
  "sha256:52b587c65fd395e6a9c1b511c80e7e0129184f80f9dcae0edcdd703ea8bf9474" -> "sha256:de454fd152f5884335e78db5aac4d2bd48f6a9e8448d2ad2eae350c914ccbac1" [label=""];
  "sha256:de454fd152f5884335e78db5aac4d2bd48f6a9e8448d2ad2eae350c914ccbac1" -> "sha256:a7620a1e52f3eb5a9565d5058f55957f1ae7aa10b4b44876347922eb240c4207" [label=""];
  "sha256:a7620a1e52f3eb5a9565d5058f55957f1ae7aa10b4b44876347922eb240c4207" -> "sha256:55939cc6c8216dfaf64c26ae5402be5ba2c162a508b87a45eaf898d0fe46935b" [label=""];
}

