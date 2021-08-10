[app/sources/199843443.Dockerfile]
digraph {
  "sha256:36ee33a4a7f9fd551f94ab7b3e71cc43c9b38998fb5a5707461992c0cce38b80" [label="local://context" shape="ellipse"];
  "sha256:be6ce169de5317bbe57aecdb4ada06b7fa4ae70161716118e65128578d36d2a3" [label="docker-image://qaware-oss-docker-registry.bintray.io/base/alpine-k8s-ibmjava8:8.0-3.10" shape="ellipse"];
  "sha256:609809b3f1be7c129cfd3bfdf8c1704c934a42699a34ede25fa02cfaf811d6f7" [label="/bin/sh -c mkdir -p /opt/zwitscher-eureka" shape="box"];
  "sha256:c7a3aa2f7057c3a436ac09c3a20cd50aaf7fafe1a55425bbdcfbd0769e703b82" [label="copy{src=/build/libs/zwitscher-eureka-1.1.0.jar, dest=/opt/zwitscher-eureka/zwitscher-eureka.jar}" shape="note"];
  "sha256:1c4845d705b1fe296c234ba5c864eac95fa5a0f12bfaaf1f01934f31916b03ca" [label="copy{src=/src/main/docker/zwitscher-eureka.*, dest=/opt/zwitscher-eureka/}" shape="note"];
  "sha256:b4cf992d4bd92a1dd59cc299e35107a6b9f1439ddbc665bac0a95f4ec539331f" [label="/bin/sh -c chmod 755 /opt/zwitscher-eureka/zwitscher-eureka.jar; chmod 755 /opt/zwitscher-eureka/zwitscher-eureka.sh" shape="box"];
  "sha256:410ac231bd80640a88dbdb32a51e44d46138c086230bd6a421efdddbd32ee5ee" [label="sha256:410ac231bd80640a88dbdb32a51e44d46138c086230bd6a421efdddbd32ee5ee" shape="plaintext"];
  "sha256:be6ce169de5317bbe57aecdb4ada06b7fa4ae70161716118e65128578d36d2a3" -> "sha256:609809b3f1be7c129cfd3bfdf8c1704c934a42699a34ede25fa02cfaf811d6f7" [label=""];
  "sha256:609809b3f1be7c129cfd3bfdf8c1704c934a42699a34ede25fa02cfaf811d6f7" -> "sha256:c7a3aa2f7057c3a436ac09c3a20cd50aaf7fafe1a55425bbdcfbd0769e703b82" [label=""];
  "sha256:36ee33a4a7f9fd551f94ab7b3e71cc43c9b38998fb5a5707461992c0cce38b80" -> "sha256:c7a3aa2f7057c3a436ac09c3a20cd50aaf7fafe1a55425bbdcfbd0769e703b82" [label=""];
  "sha256:c7a3aa2f7057c3a436ac09c3a20cd50aaf7fafe1a55425bbdcfbd0769e703b82" -> "sha256:1c4845d705b1fe296c234ba5c864eac95fa5a0f12bfaaf1f01934f31916b03ca" [label=""];
  "sha256:36ee33a4a7f9fd551f94ab7b3e71cc43c9b38998fb5a5707461992c0cce38b80" -> "sha256:1c4845d705b1fe296c234ba5c864eac95fa5a0f12bfaaf1f01934f31916b03ca" [label=""];
  "sha256:1c4845d705b1fe296c234ba5c864eac95fa5a0f12bfaaf1f01934f31916b03ca" -> "sha256:b4cf992d4bd92a1dd59cc299e35107a6b9f1439ddbc665bac0a95f4ec539331f" [label=""];
  "sha256:b4cf992d4bd92a1dd59cc299e35107a6b9f1439ddbc665bac0a95f4ec539331f" -> "sha256:410ac231bd80640a88dbdb32a51e44d46138c086230bd6a421efdddbd32ee5ee" [label=""];
}

