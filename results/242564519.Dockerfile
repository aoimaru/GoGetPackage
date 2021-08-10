[app/sources/242564519.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:31c799b2e8f6075810b85aee34e1e135904df5cfad92e834594141648f1f299d" [label="/bin/sh -c apt-get update   && apt-get install --yes --no-install-recommends     tree     poppler-utils   && apt-get autoclean   && apt-get --purge --yes autoremove   && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:3632150ae1559bcb055cd41da71ec89c7c8beabdbb96ae2d30d3dc21c2d264e0" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:04b04e46108300660ecf863a8b39410d5af5de03965f93a7eaa318c83ba6aad1" [label="local://context" shape="ellipse"];
  "sha256:62a7be4b5612fc5010942bb8cee0c28ee246d827051aaeba01cace807d858219" [label="copy{src=/requirements.txt, dest=/usr/src/app/}" shape="note"];
  "sha256:4dbbf247fdd7b45e67e34ca00d83955133b57f793f6e4c164f3cf97796db54b8" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:ce2954e5d04372673e3bc3d6512e7f2e58ccb780d420ea940f2145ae6b5f6cf2" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:120ed1f23718ec2c75cfc0a70b6f107035b1d640b68f5d5b7c40ca6ca4761997" [label="sha256:120ed1f23718ec2c75cfc0a70b6f107035b1d640b68f5d5b7c40ca6ca4761997" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:31c799b2e8f6075810b85aee34e1e135904df5cfad92e834594141648f1f299d" [label=""];
  "sha256:31c799b2e8f6075810b85aee34e1e135904df5cfad92e834594141648f1f299d" -> "sha256:3632150ae1559bcb055cd41da71ec89c7c8beabdbb96ae2d30d3dc21c2d264e0" [label=""];
  "sha256:3632150ae1559bcb055cd41da71ec89c7c8beabdbb96ae2d30d3dc21c2d264e0" -> "sha256:62a7be4b5612fc5010942bb8cee0c28ee246d827051aaeba01cace807d858219" [label=""];
  "sha256:04b04e46108300660ecf863a8b39410d5af5de03965f93a7eaa318c83ba6aad1" -> "sha256:62a7be4b5612fc5010942bb8cee0c28ee246d827051aaeba01cace807d858219" [label=""];
  "sha256:62a7be4b5612fc5010942bb8cee0c28ee246d827051aaeba01cace807d858219" -> "sha256:4dbbf247fdd7b45e67e34ca00d83955133b57f793f6e4c164f3cf97796db54b8" [label=""];
  "sha256:4dbbf247fdd7b45e67e34ca00d83955133b57f793f6e4c164f3cf97796db54b8" -> "sha256:ce2954e5d04372673e3bc3d6512e7f2e58ccb780d420ea940f2145ae6b5f6cf2" [label=""];
  "sha256:04b04e46108300660ecf863a8b39410d5af5de03965f93a7eaa318c83ba6aad1" -> "sha256:ce2954e5d04372673e3bc3d6512e7f2e58ccb780d420ea940f2145ae6b5f6cf2" [label=""];
  "sha256:ce2954e5d04372673e3bc3d6512e7f2e58ccb780d420ea940f2145ae6b5f6cf2" -> "sha256:120ed1f23718ec2c75cfc0a70b6f107035b1d640b68f5d5b7c40ca6ca4761997" [label=""];
}

