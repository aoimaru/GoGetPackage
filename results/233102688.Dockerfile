[app/sources/233102688.Dockerfile]
digraph {
  "sha256:7074759d373414bf9891c6735d70bd11865b72ac29370684b7111e571d19c05c" [label="docker-image://docker.io/adoptopenjdk/openjdk8:jdk8u212-b03-alpine@sha256:eeb4066df50e88c88b29deb2e35a1149e3dd31466b65e27fb3345270ef96edbf" shape="ellipse"];
  "sha256:30b5c686315375838cbc24fcbd0504fcb9e38241ed0fe8923c8d3d1167198e20" [label="/bin/sh -c apk add --update --no-cache netcat-openbsd &&      rm -rf /var/cache/apk/*" shape="box"];
  "sha256:faf8d7775eaef2795c840fbf1e0f37019e02054637598380de86a5950d419cfa" [label="/bin/sh -c addgroup -g ${USER_GROUP_ID} ${USER_GROUP};      adduser -u ${USER_ID} -D -g '' -h ${USER_HOME} -G ${USER_GROUP} ${USER} ;" shape="box"];
  "sha256:0c4f12fd2b8178e93991615622323d9d76aff97534d3d12208ccd036407e3ee3" [label="/bin/sh -c echo $MOTD > \"$ENV\"" shape="box"];
  "sha256:36a875167dffbc5b852edb875fa6f265e262600c83ddf68f18a5adddd1604afa" [label="local://context" shape="ellipse"];
  "sha256:bb70450b6c6f24b21355eadb9ea717d53551c9a89ea2f321861a4d701c5cb507" [label="copy{src=/files/wso2ei-6.5.0, dest=/home/wso2carbon/wso2ei-6.5.0}" shape="note"];
  "sha256:a2248c2ee7193a6bd2b54a18138bc97719e44d99e7e7284764b6bac4d35b29ed" [label="copy{src=/files/mysql-connector-java-*-bin.jar, dest=/home/wso2carbon/wso2ei-6.5.0/wso2/analytics/lib/}" shape="note"];
  "sha256:e5904dd86e8cd7640e972fbdc80e2e90dcfad03f7592a79d484ec200c41fa068" [label="mkdir{path=/home/wso2carbon}" shape="note"];
  "sha256:d3be667749ad66d7ce2ed05a82267efe16843c22a4193e8e89b927822498093e" [label="sha256:d3be667749ad66d7ce2ed05a82267efe16843c22a4193e8e89b927822498093e" shape="plaintext"];
  "sha256:7074759d373414bf9891c6735d70bd11865b72ac29370684b7111e571d19c05c" -> "sha256:30b5c686315375838cbc24fcbd0504fcb9e38241ed0fe8923c8d3d1167198e20" [label=""];
  "sha256:30b5c686315375838cbc24fcbd0504fcb9e38241ed0fe8923c8d3d1167198e20" -> "sha256:faf8d7775eaef2795c840fbf1e0f37019e02054637598380de86a5950d419cfa" [label=""];
  "sha256:faf8d7775eaef2795c840fbf1e0f37019e02054637598380de86a5950d419cfa" -> "sha256:0c4f12fd2b8178e93991615622323d9d76aff97534d3d12208ccd036407e3ee3" [label=""];
  "sha256:0c4f12fd2b8178e93991615622323d9d76aff97534d3d12208ccd036407e3ee3" -> "sha256:bb70450b6c6f24b21355eadb9ea717d53551c9a89ea2f321861a4d701c5cb507" [label=""];
  "sha256:36a875167dffbc5b852edb875fa6f265e262600c83ddf68f18a5adddd1604afa" -> "sha256:bb70450b6c6f24b21355eadb9ea717d53551c9a89ea2f321861a4d701c5cb507" [label=""];
  "sha256:bb70450b6c6f24b21355eadb9ea717d53551c9a89ea2f321861a4d701c5cb507" -> "sha256:a2248c2ee7193a6bd2b54a18138bc97719e44d99e7e7284764b6bac4d35b29ed" [label=""];
  "sha256:36a875167dffbc5b852edb875fa6f265e262600c83ddf68f18a5adddd1604afa" -> "sha256:a2248c2ee7193a6bd2b54a18138bc97719e44d99e7e7284764b6bac4d35b29ed" [label=""];
  "sha256:a2248c2ee7193a6bd2b54a18138bc97719e44d99e7e7284764b6bac4d35b29ed" -> "sha256:e5904dd86e8cd7640e972fbdc80e2e90dcfad03f7592a79d484ec200c41fa068" [label=""];
  "sha256:e5904dd86e8cd7640e972fbdc80e2e90dcfad03f7592a79d484ec200c41fa068" -> "sha256:d3be667749ad66d7ce2ed05a82267efe16843c22a4193e8e89b927822498093e" [label=""];
}

