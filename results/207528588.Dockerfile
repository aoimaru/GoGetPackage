[app/sources/207528588.Dockerfile]
digraph {
  "sha256:54b4b2e87bc555cfc6a003e3d6219c8a3d725ed844996e95474a810c7cbfd2fc" [label="docker-image://docker.io/library/jenkins:1.651.2" shape="ellipse"];
  "sha256:7871495302d90fb7e4d2f7f2a1f2f8ed2bba8b7e287730bc38e8e751ce45c7c3" [label="local://context" shape="ellipse"];
  "sha256:4594b1e8827d642fc6857fb0625868dadbd8d3b5814b2942ce6e4742a997034e" [label="copy{src=/plugins.txt, dest=/usr/share/jenkins/plugins.txt}" shape="note"];
  "sha256:88f33f734efb3de4618b00fe8142f6a75a65525e1e3bb5ca84db76d5449783c4" [label="/bin/sh -c /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt" shape="box"];
  "sha256:c85c1f80b9953fc3f7e714fa5b8e3c9a54db723d12a550b21813d863727880a0" [label="/bin/sh -c apt-get update &&     apt-get install --no-install-recommends -y ruby-dev=1:2.1.5+deb8u2 rubygems &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:290265e8bb85cc35f46a9a18cbbd78df4c9afd9982802423d4408f4c39f8fe3a" [label="/bin/sh -c gem install bundler" shape="box"];
  "sha256:89a752753675f0f372a2d075cbf2c81913f5c433dd215fa730e7e275ae04ab75" [label="sha256:89a752753675f0f372a2d075cbf2c81913f5c433dd215fa730e7e275ae04ab75" shape="plaintext"];
  "sha256:54b4b2e87bc555cfc6a003e3d6219c8a3d725ed844996e95474a810c7cbfd2fc" -> "sha256:4594b1e8827d642fc6857fb0625868dadbd8d3b5814b2942ce6e4742a997034e" [label=""];
  "sha256:7871495302d90fb7e4d2f7f2a1f2f8ed2bba8b7e287730bc38e8e751ce45c7c3" -> "sha256:4594b1e8827d642fc6857fb0625868dadbd8d3b5814b2942ce6e4742a997034e" [label=""];
  "sha256:4594b1e8827d642fc6857fb0625868dadbd8d3b5814b2942ce6e4742a997034e" -> "sha256:88f33f734efb3de4618b00fe8142f6a75a65525e1e3bb5ca84db76d5449783c4" [label=""];
  "sha256:88f33f734efb3de4618b00fe8142f6a75a65525e1e3bb5ca84db76d5449783c4" -> "sha256:c85c1f80b9953fc3f7e714fa5b8e3c9a54db723d12a550b21813d863727880a0" [label=""];
  "sha256:c85c1f80b9953fc3f7e714fa5b8e3c9a54db723d12a550b21813d863727880a0" -> "sha256:290265e8bb85cc35f46a9a18cbbd78df4c9afd9982802423d4408f4c39f8fe3a" [label=""];
  "sha256:290265e8bb85cc35f46a9a18cbbd78df4c9afd9982802423d4408f4c39f8fe3a" -> "sha256:89a752753675f0f372a2d075cbf2c81913f5c433dd215fa730e7e275ae04ab75" [label=""];
}

