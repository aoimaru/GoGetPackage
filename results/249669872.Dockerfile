[app/sources/249669872.Dockerfile]
digraph {
  "sha256:19b2b6147bb161877306c56719fb87008ee3ea67fc39f476f1d8dcb4ba6e9e45" [label="local://context" shape="ellipse"];
  "sha256:b55c7f1e5f1df17c65ca0bc8dc50f83127addebe84a1374b0cdfa570d931ec39" [label="docker-image://registry.access.redhat.com/rhel7:latest" shape="ellipse"];
  "sha256:f9c44e761e71a7501f0ed86c26cea45cc63122ccd22e68f86387d9e4c7367d31" [label="copy{src=/help.md, dest=/tmp/}" shape="note"];
  "sha256:444d7d4c24472669df4fc65baadf57110f291fd5bba6bf8a866806fab4c124d9" [label="copy{src=/licenses, dest=/licenses}" shape="note"];
  "sha256:8c02e23178d8fe6492e9dd85f6f2aca1daf0afed3791fa64c53d58e87e20536b" [label="/bin/sh -c REPOLIST=rhel-7-server-rpms,rhel-7-server-optional-rpms,epel     INSTALL_PKGS=\"golang-github-cpuguy83-go-md2man     jq\" &&     yum -y update-minimal --disablerepo \"*\" --enablerepo rhel-7-server-rpms --setopt=tsflags=nodocs       --security --sec-severity=Important --sec-severity=Critical &&     curl -o epel-release-latest-7.noarch.rpm -SL https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm       --retry 5 --retry-max-time 0 -C - &&     yum -y localinstall epel-release-latest-7.noarch.rpm && rm epel-release-latest-7.noarch.rpm &&     yum -y install --disablerepo \"*\" --enablerepo ${REPOLIST} --setopt=tsflags=nodocs ${INSTALL_PKGS} &&     go-md2man -in /tmp/help.md -out /help.1 &&     yum clean all" shape="box"];
  "sha256:3b5972ace023c12d0491cbcf9b1625a33fc4ae9d46bf7b247ac131c3bc2761ae" [label="/bin/sh -c mkdir -p ${APP_HOME}" shape="box"];
  "sha256:0dfb2a42c5769576c5ea3e61a6bc7414f3dd3c0ba8b47e51be631f05e69fa3be" [label="copy{src=/bin, dest=/opt/app-root/bin/}" shape="note"];
  "sha256:967ed054b4a48c0311f60ac8e5d9f5c102d281d010d28b029808a6b324d97c0f" [label="/bin/sh -c chmod -R ug+x ${APP_ROOT}/bin && sync &&     useradd -l -u ${USER_UID} -r -g 0 -d ${APP_ROOT} -s /sbin/nologin -c \"${USER_NAME} user\" ${USER_NAME} &&     chown -R ${USER_UID}:0 ${APP_ROOT} &&     chmod -R g=u ${APP_ROOT}" shape="box"];
  "sha256:c212050865adae6c3886a9f2943033f7b8a8cbd9a8a4d2b181f1a0df8cae64a6" [label="mkdir{path=/opt/app-root}" shape="note"];
  "sha256:12146d18483e2155b2e57450b30c8504feb1d45bb17f6278ac074388213bcfff" [label="sha256:12146d18483e2155b2e57450b30c8504feb1d45bb17f6278ac074388213bcfff" shape="plaintext"];
  "sha256:b55c7f1e5f1df17c65ca0bc8dc50f83127addebe84a1374b0cdfa570d931ec39" -> "sha256:f9c44e761e71a7501f0ed86c26cea45cc63122ccd22e68f86387d9e4c7367d31" [label=""];
  "sha256:19b2b6147bb161877306c56719fb87008ee3ea67fc39f476f1d8dcb4ba6e9e45" -> "sha256:f9c44e761e71a7501f0ed86c26cea45cc63122ccd22e68f86387d9e4c7367d31" [label=""];
  "sha256:f9c44e761e71a7501f0ed86c26cea45cc63122ccd22e68f86387d9e4c7367d31" -> "sha256:444d7d4c24472669df4fc65baadf57110f291fd5bba6bf8a866806fab4c124d9" [label=""];
  "sha256:19b2b6147bb161877306c56719fb87008ee3ea67fc39f476f1d8dcb4ba6e9e45" -> "sha256:444d7d4c24472669df4fc65baadf57110f291fd5bba6bf8a866806fab4c124d9" [label=""];
  "sha256:444d7d4c24472669df4fc65baadf57110f291fd5bba6bf8a866806fab4c124d9" -> "sha256:8c02e23178d8fe6492e9dd85f6f2aca1daf0afed3791fa64c53d58e87e20536b" [label=""];
  "sha256:8c02e23178d8fe6492e9dd85f6f2aca1daf0afed3791fa64c53d58e87e20536b" -> "sha256:3b5972ace023c12d0491cbcf9b1625a33fc4ae9d46bf7b247ac131c3bc2761ae" [label=""];
  "sha256:3b5972ace023c12d0491cbcf9b1625a33fc4ae9d46bf7b247ac131c3bc2761ae" -> "sha256:0dfb2a42c5769576c5ea3e61a6bc7414f3dd3c0ba8b47e51be631f05e69fa3be" [label=""];
  "sha256:19b2b6147bb161877306c56719fb87008ee3ea67fc39f476f1d8dcb4ba6e9e45" -> "sha256:0dfb2a42c5769576c5ea3e61a6bc7414f3dd3c0ba8b47e51be631f05e69fa3be" [label=""];
  "sha256:0dfb2a42c5769576c5ea3e61a6bc7414f3dd3c0ba8b47e51be631f05e69fa3be" -> "sha256:967ed054b4a48c0311f60ac8e5d9f5c102d281d010d28b029808a6b324d97c0f" [label=""];
  "sha256:967ed054b4a48c0311f60ac8e5d9f5c102d281d010d28b029808a6b324d97c0f" -> "sha256:c212050865adae6c3886a9f2943033f7b8a8cbd9a8a4d2b181f1a0df8cae64a6" [label=""];
  "sha256:c212050865adae6c3886a9f2943033f7b8a8cbd9a8a4d2b181f1a0df8cae64a6" -> "sha256:12146d18483e2155b2e57450b30c8504feb1d45bb17f6278ac074388213bcfff" [label=""];
}

