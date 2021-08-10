[app/sources/482793080.Dockerfile]
digraph {
  "sha256:5b58ef9f9613726362c76eef11c7764cef8d469615b2050e9e2a90eeb07a96dc" [label="docker-image://docker.io/openshift/jenkins-slave-base-centos7:v3.11" shape="ellipse"];
  "sha256:97c075cc8aaf63c8580d92ac9a698f0051ad743423002f361b21b6462ec423d9" [label="mkdir{path=/arachni}" shape="note"];
  "sha256:dc0e535547acef85e1e42d3ed556ded23eb6b3734b3cce946972942931986e86" [label="/bin/sh -c curl -sLo- https://github.com/Arachni/arachni/releases/download/v${VERSION}/arachni-${VERSION}-${WEB_VERSION}-linux-x86_64.tar.gz | tar xvz -C /arachni --strip-components=1 &&     chown -R root:root /arachni &&     chmod -R 775 /arachni" shape="box"];
  "sha256:94e17242ce978db9869c0d080d49c9a80afd6eea63d3c291f924c69bc48b2d6e" [label="local://context" shape="ellipse"];
  "sha256:acfba11533acc371ba4317730dfce084c88eaa965f0d6542272fb0ea12132be6" [label="copy{src=/reporters, dest=/arachni/system/gems/gems/arachni-1.5.1/components/reporters}" shape="note"];
  "sha256:92de866d0aa19220fb748ab0f51a88b70c74e30ce870916b2fab3ff3d9afaf0d" [label="sha256:92de866d0aa19220fb748ab0f51a88b70c74e30ce870916b2fab3ff3d9afaf0d" shape="plaintext"];
  "sha256:5b58ef9f9613726362c76eef11c7764cef8d469615b2050e9e2a90eeb07a96dc" -> "sha256:97c075cc8aaf63c8580d92ac9a698f0051ad743423002f361b21b6462ec423d9" [label=""];
  "sha256:97c075cc8aaf63c8580d92ac9a698f0051ad743423002f361b21b6462ec423d9" -> "sha256:dc0e535547acef85e1e42d3ed556ded23eb6b3734b3cce946972942931986e86" [label=""];
  "sha256:dc0e535547acef85e1e42d3ed556ded23eb6b3734b3cce946972942931986e86" -> "sha256:acfba11533acc371ba4317730dfce084c88eaa965f0d6542272fb0ea12132be6" [label=""];
  "sha256:94e17242ce978db9869c0d080d49c9a80afd6eea63d3c291f924c69bc48b2d6e" -> "sha256:acfba11533acc371ba4317730dfce084c88eaa965f0d6542272fb0ea12132be6" [label=""];
  "sha256:acfba11533acc371ba4317730dfce084c88eaa965f0d6542272fb0ea12132be6" -> "sha256:92de866d0aa19220fb748ab0f51a88b70c74e30ce870916b2fab3ff3d9afaf0d" [label=""];
}

