[app/sources/350090657.Dockerfile]
digraph {
  "sha256:8355606acb6ef359fa28a62c0c331b985972a192fb0026195cda6169c1ab0166" [label="docker-image://docker.io/openshift/origin-base:latest" shape="ellipse"];
  "sha256:ba46db91f1fb8804a63619b3c13a2e22370c18b9296f12bd322e7b44ebb778c3" [label="local://context" shape="ellipse"];
  "sha256:3285c6c56c307ae857ffc177e877f93afbe8258c758c661c9698b05943ec04f8" [label="copy{src=/scripts/*, dest=/usr/local/bin/}" shape="note"];
  "sha256:9d49de23c750a48ea9088f6a43769dfa72e709a683c8f6ee77c003584fece355" [label="/bin/sh -c curl -L -o /etc/yum.repos.d/origin-next-epel-7.repo https://copr.fedoraproject.org/coprs/maxamillion/origin-next/repo/epel-7/maxamillion-origin-next-epel-7.repo &&     INSTALL_PKGS=\"openvswitch\" &&     yum install -y $INSTALL_PKGS &&     rpm -V $INSTALL_PKGS &&     yum clean all &&     chmod +x /usr/local/bin/*" shape="box"];
  "sha256:dff4365f1f00b189b63999228b059896f93b8214620090425a5ce1ccc0442d4f" [label="copy{src=/system-container/system-container-wrapper.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:bf71ebe658179c1c7e36b2227aeee2b9885b2fd4366dcf1418cf93023b61df7c" [label="copy{src=/system-container/config.json.template, dest=/exports/},copy{src=/system-container/service.template, dest=/exports/}" shape="note"];
  "sha256:dd85a3964c34603b123d27d05c9d84b589df9ebfbf936acedf83e687c0bda55d" [label="sha256:dd85a3964c34603b123d27d05c9d84b589df9ebfbf936acedf83e687c0bda55d" shape="plaintext"];
  "sha256:8355606acb6ef359fa28a62c0c331b985972a192fb0026195cda6169c1ab0166" -> "sha256:3285c6c56c307ae857ffc177e877f93afbe8258c758c661c9698b05943ec04f8" [label=""];
  "sha256:ba46db91f1fb8804a63619b3c13a2e22370c18b9296f12bd322e7b44ebb778c3" -> "sha256:3285c6c56c307ae857ffc177e877f93afbe8258c758c661c9698b05943ec04f8" [label=""];
  "sha256:3285c6c56c307ae857ffc177e877f93afbe8258c758c661c9698b05943ec04f8" -> "sha256:9d49de23c750a48ea9088f6a43769dfa72e709a683c8f6ee77c003584fece355" [label=""];
  "sha256:9d49de23c750a48ea9088f6a43769dfa72e709a683c8f6ee77c003584fece355" -> "sha256:dff4365f1f00b189b63999228b059896f93b8214620090425a5ce1ccc0442d4f" [label=""];
  "sha256:ba46db91f1fb8804a63619b3c13a2e22370c18b9296f12bd322e7b44ebb778c3" -> "sha256:dff4365f1f00b189b63999228b059896f93b8214620090425a5ce1ccc0442d4f" [label=""];
  "sha256:dff4365f1f00b189b63999228b059896f93b8214620090425a5ce1ccc0442d4f" -> "sha256:bf71ebe658179c1c7e36b2227aeee2b9885b2fd4366dcf1418cf93023b61df7c" [label=""];
  "sha256:ba46db91f1fb8804a63619b3c13a2e22370c18b9296f12bd322e7b44ebb778c3" -> "sha256:bf71ebe658179c1c7e36b2227aeee2b9885b2fd4366dcf1418cf93023b61df7c" [label=""];
  "sha256:bf71ebe658179c1c7e36b2227aeee2b9885b2fd4366dcf1418cf93023b61df7c" -> "sha256:dd85a3964c34603b123d27d05c9d84b589df9ebfbf936acedf83e687c0bda55d" [label=""];
}

