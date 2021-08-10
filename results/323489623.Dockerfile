[app/sources/323489623.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:9b6117f2a24d33a33593a288f2e1c7f48db05918784b8534e3fa6c22133c89fd" [label="/bin/sh -c apk --no-cache upgrade     && apk --no-cache --update add curl     && curl -o /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl && chmod +x /usr/local/bin/kubectl     && apk --no-cache add bash openssl" shape="box"];
  "sha256:c00c5c85bbcd823536ecf5a0ef7498d8f94e7e78f0210492ac93eec9707d9f53" [label="local://context" shape="ellipse"];
  "sha256:cb4c77f89cf609d1b51599a666855db2481f87e8e63adac359bdc12ba0673d4d" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:d02dee9ea6ec2cbb0e91a5ebe91e64590051e728eef68fc0c467c3d90422d277" [label="sha256:d02dee9ea6ec2cbb0e91a5ebe91e64590051e728eef68fc0c467c3d90422d277" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:9b6117f2a24d33a33593a288f2e1c7f48db05918784b8534e3fa6c22133c89fd" [label=""];
  "sha256:9b6117f2a24d33a33593a288f2e1c7f48db05918784b8534e3fa6c22133c89fd" -> "sha256:cb4c77f89cf609d1b51599a666855db2481f87e8e63adac359bdc12ba0673d4d" [label=""];
  "sha256:c00c5c85bbcd823536ecf5a0ef7498d8f94e7e78f0210492ac93eec9707d9f53" -> "sha256:cb4c77f89cf609d1b51599a666855db2481f87e8e63adac359bdc12ba0673d4d" [label=""];
  "sha256:cb4c77f89cf609d1b51599a666855db2481f87e8e63adac359bdc12ba0673d4d" -> "sha256:d02dee9ea6ec2cbb0e91a5ebe91e64590051e728eef68fc0c467c3d90422d277" [label=""];
}

