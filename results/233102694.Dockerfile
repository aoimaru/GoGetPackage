[app/sources/233102694.Dockerfile]
digraph {
  "sha256:e470d42b5d67bbac39feeb238ec9b210d6a58e78ce8e8104b7f0ab09f5d877b2" [label="docker-image://docker.io/adoptopenjdk/openjdk8:jdk8u212-b03-alpine" shape="ellipse"];
  "sha256:f769fc82979f20af509573f645a8b1d44746f0239009a3a3e32bf8d069a527be" [label="/bin/sh -c apk add --update --no-cache      curl      netcat-openbsd &&      rm -rf /var/cache/apk/*" shape="box"];
  "sha256:1c5f38b1456705f697c9283713d2963d921fa3218fd5bb969be45f8e953bf4c5" [label="/bin/sh -c addgroup -g ${USER_GROUP_ID} ${USER_GROUP};      adduser -u ${USER_ID} -D -g '' -h ${USER_HOME} -G ${USER_GROUP} ${USER} ;" shape="box"];
  "sha256:6209a666343639ec1e3a3742592141d65b12e33dc842c7237a3f3b41864985e0" [label="/bin/sh -c echo $MOTD > \"$ENV\"" shape="box"];
  "sha256:250f32f49881e8728989d6064a6af61bd2567e7e14aac0785d87284d7412a5e4" [label="/bin/sh -c mkdir -p ${USER_HOME}/.java/.systemPrefs &&     mkdir -p ${USER_HOME}/.java/.userPrefs  &&     chmod -R 755 ${USER_HOME}/.java &&     chown -R ${USER}:${USER_GROUP} ${USER_HOME}/.java" shape="box"];
  "sha256:71f216331e8ea84c3da177a76bd7f18ac5141ede93bb7705f51d918ccc2113f4" [label="local://context" shape="ellipse"];
  "sha256:ad2e9fa12abcac482a8e3c5d87e98c39cd079a593da02d30a233e74b00982cf2" [label="copy{src=/files/wso2ei-6.5.0, dest=/home/wso2carbon/wso2ei-6.5.0}" shape="note"];
  "sha256:2250da537f4becbebc7a418a0d0298a8d6754067b9144023c73dbbc9024c75ab" [label="copy{src=/files/mysql-connector-java-*-bin.jar, dest=/home/wso2carbon/wso2ei-6.5.0/lib}" shape="note"];
  "sha256:116a11488f2fd52e89c413606b01579bfe3fe6dfcd0ae6108795192a658e2804" [label="copy{src=/init.sh, dest=/home/wso2carbon/}" shape="note"];
  "sha256:288734063b6e338e674a60955a7b3efecd8b49df4b4507958f8b5d6b301a1685" [label="https://repo1.maven.org/maven2/dnsjava/dnsjava/2.1.8/dnsjava-2.1.8.jar" shape="ellipse"];
  "sha256:521ff77afb4cc127fc0244c524196c0f6fd94b7398d6d01242bafce13d126e3a" [label="copy{src=/dnsjava-2.1.8.jar, dest=/home/wso2carbon/wso2ei-6.5.0/lib}" shape="note"];
  "sha256:8af3957cc98bc38938fc6b51d6e34cb3238f3dbe0495cbc10d4d6b032a2d3d22" [label="https://repo1.maven.org/maven2/org/wso2/carbon/kubernetes/artifacts/kubernetes-membership-scheme/1.0.5/kubernetes-membership-scheme-1.0.5.jar" shape="ellipse"];
  "sha256:05e20ae598ed0b8f431c678a05740b2903efe289ba1c3812a14bd61b842c3a9d" [label="copy{src=/kubernetes-membership-scheme-1.0.5.jar, dest=/home/wso2carbon/wso2ei-6.5.0/dropins}" shape="note"];
  "sha256:84eaa9e76bc626a476bb837bdfb2c88cd0d0f3b3dabcbb986e43aacc2b741f9d" [label="mkdir{path=/home/wso2carbon}" shape="note"];
  "sha256:d14913853a09d26ed43ad57298546c4b621ee777e5c1839e897993a2c96d05bf" [label="sha256:d14913853a09d26ed43ad57298546c4b621ee777e5c1839e897993a2c96d05bf" shape="plaintext"];
  "sha256:e470d42b5d67bbac39feeb238ec9b210d6a58e78ce8e8104b7f0ab09f5d877b2" -> "sha256:f769fc82979f20af509573f645a8b1d44746f0239009a3a3e32bf8d069a527be" [label=""];
  "sha256:f769fc82979f20af509573f645a8b1d44746f0239009a3a3e32bf8d069a527be" -> "sha256:1c5f38b1456705f697c9283713d2963d921fa3218fd5bb969be45f8e953bf4c5" [label=""];
  "sha256:1c5f38b1456705f697c9283713d2963d921fa3218fd5bb969be45f8e953bf4c5" -> "sha256:6209a666343639ec1e3a3742592141d65b12e33dc842c7237a3f3b41864985e0" [label=""];
  "sha256:6209a666343639ec1e3a3742592141d65b12e33dc842c7237a3f3b41864985e0" -> "sha256:250f32f49881e8728989d6064a6af61bd2567e7e14aac0785d87284d7412a5e4" [label=""];
  "sha256:250f32f49881e8728989d6064a6af61bd2567e7e14aac0785d87284d7412a5e4" -> "sha256:ad2e9fa12abcac482a8e3c5d87e98c39cd079a593da02d30a233e74b00982cf2" [label=""];
  "sha256:71f216331e8ea84c3da177a76bd7f18ac5141ede93bb7705f51d918ccc2113f4" -> "sha256:ad2e9fa12abcac482a8e3c5d87e98c39cd079a593da02d30a233e74b00982cf2" [label=""];
  "sha256:ad2e9fa12abcac482a8e3c5d87e98c39cd079a593da02d30a233e74b00982cf2" -> "sha256:2250da537f4becbebc7a418a0d0298a8d6754067b9144023c73dbbc9024c75ab" [label=""];
  "sha256:71f216331e8ea84c3da177a76bd7f18ac5141ede93bb7705f51d918ccc2113f4" -> "sha256:2250da537f4becbebc7a418a0d0298a8d6754067b9144023c73dbbc9024c75ab" [label=""];
  "sha256:2250da537f4becbebc7a418a0d0298a8d6754067b9144023c73dbbc9024c75ab" -> "sha256:116a11488f2fd52e89c413606b01579bfe3fe6dfcd0ae6108795192a658e2804" [label=""];
  "sha256:71f216331e8ea84c3da177a76bd7f18ac5141ede93bb7705f51d918ccc2113f4" -> "sha256:116a11488f2fd52e89c413606b01579bfe3fe6dfcd0ae6108795192a658e2804" [label=""];
  "sha256:116a11488f2fd52e89c413606b01579bfe3fe6dfcd0ae6108795192a658e2804" -> "sha256:521ff77afb4cc127fc0244c524196c0f6fd94b7398d6d01242bafce13d126e3a" [label=""];
  "sha256:288734063b6e338e674a60955a7b3efecd8b49df4b4507958f8b5d6b301a1685" -> "sha256:521ff77afb4cc127fc0244c524196c0f6fd94b7398d6d01242bafce13d126e3a" [label=""];
  "sha256:521ff77afb4cc127fc0244c524196c0f6fd94b7398d6d01242bafce13d126e3a" -> "sha256:05e20ae598ed0b8f431c678a05740b2903efe289ba1c3812a14bd61b842c3a9d" [label=""];
  "sha256:8af3957cc98bc38938fc6b51d6e34cb3238f3dbe0495cbc10d4d6b032a2d3d22" -> "sha256:05e20ae598ed0b8f431c678a05740b2903efe289ba1c3812a14bd61b842c3a9d" [label=""];
  "sha256:05e20ae598ed0b8f431c678a05740b2903efe289ba1c3812a14bd61b842c3a9d" -> "sha256:84eaa9e76bc626a476bb837bdfb2c88cd0d0f3b3dabcbb986e43aacc2b741f9d" [label=""];
  "sha256:84eaa9e76bc626a476bb837bdfb2c88cd0d0f3b3dabcbb986e43aacc2b741f9d" -> "sha256:d14913853a09d26ed43ad57298546c4b621ee777e5c1839e897993a2c96d05bf" [label=""];
}

