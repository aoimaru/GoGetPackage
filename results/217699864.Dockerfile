[app/sources/217699864.Dockerfile]
digraph {
  "sha256:ecfbcd425827d5c825babefac8650bfb3245f4641846e62cdfb27ef38602a49e" [label="docker-image://docker.io/lambci/lambda-base:build" shape="ellipse"];
  "sha256:8e660714805b4506b25bfa6b28d2e8ef5c2f860a4ed84be071fe09795ee12e3c" [label="/bin/sh -c yum list bash &&   yum install -y yum-utils rpm-build ncurses-devel;   yumdownloader --source bash &&   yum-builddep -y bash &&   rpm -ivh *.rpm &&   cd /usr/src/rpm/SPECS &&   rm -rf /dev/core /dev/fd /dev/tty &&   rpmbuild -bi bash.spec" shape="box"];
  "sha256:fb1c1321d77706e4c66b5e224a00e24b435408d35ad9621a8b18085893f8977c" [label="sha256:fb1c1321d77706e4c66b5e224a00e24b435408d35ad9621a8b18085893f8977c" shape="plaintext"];
  "sha256:ecfbcd425827d5c825babefac8650bfb3245f4641846e62cdfb27ef38602a49e" -> "sha256:8e660714805b4506b25bfa6b28d2e8ef5c2f860a4ed84be071fe09795ee12e3c" [label=""];
  "sha256:8e660714805b4506b25bfa6b28d2e8ef5c2f860a4ed84be071fe09795ee12e3c" -> "sha256:fb1c1321d77706e4c66b5e224a00e24b435408d35ad9621a8b18085893f8977c" [label=""];
}

