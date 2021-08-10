[app/sources/220397201.Dockerfile]
digraph {
  "sha256:0a10ddc84be8088120b42e8fdf6e9f68ec3655fc032ca17597cc11d156115e7c" [label="docker-image://docker.io/opennms/openjdk:11" shape="ellipse"];
  "sha256:5582ada9f3218836d988d2935a3dc15ba53d5ce50d4e4b5288136a7d079bdb91" [label="/bin/bash -c rpm --import \"${REPO_KEY_URL}\" &&     yum install -y epel-release &&     yum -y install \"${REPO_RPM}\" &&     yum -y install ${REQUIRED_RPMS} &&     yum clean all -y &&     rm -rf /var/cache/yum" shape="box"];
  "sha256:e10f504bad1353ab3330ec92a8838ce350d699a1a949e7297ec79de626627b88" [label="local://context" shape="ellipse"];
  "sha256:d2956da2f2b33b63112a0ecf231dddd7ba5851780add943fc06fc31f7e005b73" [label="copy{src=/rpms, dest=/tmp/rpms}" shape="note"];
  "sha256:314e0d8ab43f6fc03c5a0c10d3699dd725194076f80ff25d63ee4dbac2d49140" [label="/bin/bash -c if [[ \"$(ls -1 /tmp/rpms/*.rpm 2>/dev/null | wc -l)\" != 0 ]]; then yum -y localinstall /tmp/rpms/*.rpm; else yum install -y ${SENTINEL_PACKAGES}; fi &&     if [[ -n ${ADD_YUM_PACKAGES} ]]; then yum -y install ${ADD_YUM_PACKAGES}; fi &&     rm -rf /tmp/rpms &&     yum clean all &&     rm -rf /var/cache/yum" shape="box"];
  "sha256:7da27abae6cafcb091e15f6d9c47c87119334efc2cd4a19b08c8112de58fbb8e" [label="copy{src=/assets/entrypoint.sh, dest=/}" shape="note"];
  "sha256:a6eb3e79a666f86ffefc8da99cec05f7ca7ed7e3557ef89e130499337f7b2235" [label="mkdir{path=/opt/sentinel}" shape="note"];
  "sha256:7854e203b49798935a4368bc15621ef5f3693fdfd164243772f381b3528de65a" [label="sha256:7854e203b49798935a4368bc15621ef5f3693fdfd164243772f381b3528de65a" shape="plaintext"];
  "sha256:0a10ddc84be8088120b42e8fdf6e9f68ec3655fc032ca17597cc11d156115e7c" -> "sha256:5582ada9f3218836d988d2935a3dc15ba53d5ce50d4e4b5288136a7d079bdb91" [label=""];
  "sha256:5582ada9f3218836d988d2935a3dc15ba53d5ce50d4e4b5288136a7d079bdb91" -> "sha256:d2956da2f2b33b63112a0ecf231dddd7ba5851780add943fc06fc31f7e005b73" [label=""];
  "sha256:e10f504bad1353ab3330ec92a8838ce350d699a1a949e7297ec79de626627b88" -> "sha256:d2956da2f2b33b63112a0ecf231dddd7ba5851780add943fc06fc31f7e005b73" [label=""];
  "sha256:d2956da2f2b33b63112a0ecf231dddd7ba5851780add943fc06fc31f7e005b73" -> "sha256:314e0d8ab43f6fc03c5a0c10d3699dd725194076f80ff25d63ee4dbac2d49140" [label=""];
  "sha256:314e0d8ab43f6fc03c5a0c10d3699dd725194076f80ff25d63ee4dbac2d49140" -> "sha256:7da27abae6cafcb091e15f6d9c47c87119334efc2cd4a19b08c8112de58fbb8e" [label=""];
  "sha256:e10f504bad1353ab3330ec92a8838ce350d699a1a949e7297ec79de626627b88" -> "sha256:7da27abae6cafcb091e15f6d9c47c87119334efc2cd4a19b08c8112de58fbb8e" [label=""];
  "sha256:7da27abae6cafcb091e15f6d9c47c87119334efc2cd4a19b08c8112de58fbb8e" -> "sha256:a6eb3e79a666f86ffefc8da99cec05f7ca7ed7e3557ef89e130499337f7b2235" [label=""];
  "sha256:a6eb3e79a666f86ffefc8da99cec05f7ca7ed7e3557ef89e130499337f7b2235" -> "sha256:7854e203b49798935a4368bc15621ef5f3693fdfd164243772f381b3528de65a" [label=""];
}

