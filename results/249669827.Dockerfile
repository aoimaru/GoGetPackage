[app/sources/249669827.Dockerfile]
digraph {
  "sha256:b55c7f1e5f1df17c65ca0bc8dc50f83127addebe84a1374b0cdfa570d931ec39" [label="docker-image://registry.access.redhat.com/rhel7:latest" shape="ellipse"];
  "sha256:0983a1e436e6894b36517b954855822e19e3051e71a566f05f3f1ba47f5f55c2" [label="/bin/sh -c REPOLIST=rhel-7-server-rpms     INSTALL_PKGS=\"java-1.8.0-openjdk\" &&     yum -y install --disablerepo \"*\" --enablerepo ${REPOLIST} --setopt=tsflags=nodocs ${INSTALL_PKGS} &&     yum clean all" shape="box"];
  "sha256:e74a378ceed0664624487629651877b3d9d4b5b03fc895cd86fd01055dddd6c8" [label="/bin/sh -c mkdir -p ${HOME}/bin ${APP_ROOT}/bin &&     useradd -l -u ${USER_UID} -r -g 0 -d ${HOME} -s /sbin/nologin             -c \"${USER_NAME} application user\" ${USER_NAME} &&     chown -R ${USER_UID}:0 /opt/app-root" shape="box"];
  "sha256:240874e8836d9ca6eb5dba1b24dec1c47b56a1ead4fffc1640137320793198d8" [label="mkdir{path=/opt/app-root/src}" shape="note"];
  "sha256:8f011d09ee80a3f16deda501c1c5b15f0719112856f0f95986f58b8a7cbd10c5" [label="sha256:8f011d09ee80a3f16deda501c1c5b15f0719112856f0f95986f58b8a7cbd10c5" shape="plaintext"];
  "sha256:b55c7f1e5f1df17c65ca0bc8dc50f83127addebe84a1374b0cdfa570d931ec39" -> "sha256:0983a1e436e6894b36517b954855822e19e3051e71a566f05f3f1ba47f5f55c2" [label=""];
  "sha256:0983a1e436e6894b36517b954855822e19e3051e71a566f05f3f1ba47f5f55c2" -> "sha256:e74a378ceed0664624487629651877b3d9d4b5b03fc895cd86fd01055dddd6c8" [label=""];
  "sha256:e74a378ceed0664624487629651877b3d9d4b5b03fc895cd86fd01055dddd6c8" -> "sha256:240874e8836d9ca6eb5dba1b24dec1c47b56a1ead4fffc1640137320793198d8" [label=""];
  "sha256:240874e8836d9ca6eb5dba1b24dec1c47b56a1ead4fffc1640137320793198d8" -> "sha256:8f011d09ee80a3f16deda501c1c5b15f0719112856f0f95986f58b8a7cbd10c5" [label=""];
}

