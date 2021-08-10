[app/sources/190886145.Dockerfile]
digraph {
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" [label="docker-image://docker.io/library/ubuntu:precise" shape="ellipse"];
  "sha256:6a33f166e2b2da7f5ab554469aa8d830792f6c9f11691da9e4cc6ab51c0f87aa" [label="/bin/sh -c echo \"Installing build dependencies\"  && . /etc/os-release && if dpkg --compare-versions \"$VERSION_ID\" ge \"18.04\"; \tthen HARDENING=\"devscripts\"; \telse HARDENING=\"hardening-includes\"; fi && TINI_DEPS=\"build-essential cmake git rpm curl libcap-dev python-dev ${HARDENING}\" && apt-get update && apt-get install --yes ${TINI_DEPS}" shape="box"];
  "sha256:0d7575b2924a691ef9b2170c9b372781cd78b38f8e63dbee93debaed025880eb" [label="/bin/sh -c echo \"Building Tini\"  && \tgit clone https://github.com/krallin/tini.git \"${TINI_BUILD}\" && \tcd \"${TINI_BUILD}\" && \tcurl -fsSLO https://pypi.python.org/packages/source/v/virtualenv/virtualenv-13.1.2.tar.gz && \ttar -xf virtualenv-13.1.2.tar.gz && \tmv virtualenv-13.1.2/virtualenv.py virtualenv-13.1.2/virtualenv && \texport PATH=\"${TINI_BUILD}/virtualenv-13.1.2:${PATH}\" && \tHARDENING_CHECK_PLACEHOLDER=\"${TINI_BUILD}/hardening-check/hardening-check\" && \tHARDENING_CHECK_PLACEHOLDER_DIR=\"$(dirname \"${HARDENING_CHECK_PLACEHOLDER}\")\" && \tmkdir \"${HARDENING_CHECK_PLACEHOLDER_DIR}\" && \techo  \"#/bin/sh\" > \"${HARDENING_CHECK_PLACEHOLDER}\" && \tchmod +x \"${HARDENING_CHECK_PLACEHOLDER}\" && \texport PATH=\"${PATH}:${HARDENING_CHECK_PLACEHOLDER_DIR}\" && \tgit checkout \"${TINI_VERSION}\" && \texport SOURCE_DIR=\"${TINI_BUILD}\" && \texport BUILD_DIR=\"${TINI_BUILD}\" && \texport ARCH_NATIVE=1 && \t\"${TINI_BUILD}/ci/run_build.sh\"" shape="box"];
  "sha256:91c597d0932496ec6be7b8a7ccae17d30d8a2afea32f1e808a566ca8c9fc7901" [label="/bin/sh -c echo \"Moving Tini\"  && mv \"${TINI_BUILD}/tini_${TINI_REAL_VERSION}.deb\" /tmp/tini_release.deb" shape="box"];
  "sha256:a2f8807bf5d47c393bfa3e047e5a4b3d33e91985532d6f27bddca7eb00ea93ac" [label="copy{src=/tmp/tini_release.deb, dest=/tmp}" shape="note"];
  "sha256:6a870ec1479978b97e158e9e92c11b5e9055644d4464d291ed62f688bdfd8b09" [label="/bin/sh -c echo \"Installing Tini\"  && dpkg -i /tmp/tini_release.deb  && echo \"Symlinkng to /usr/local/bin\"  && ln -s /usr/bin/tini        /usr/local/bin/tini  && ln -s /usr/bin/tini-static /usr/local/bin/tini-static  && echo \"Running Smoke Test\"  && /usr/bin/tini -- ls >/dev/null  && /usr/bin/tini-static -- ls >/dev/null  && /usr/local/bin/tini -- ls >/dev/null  && /usr/local/bin/tini-static -- ls >/dev/null  && echo \"Done\"" shape="box"];
  "sha256:d9380e7f446593c6fc54eb73c27fa87305f58b7266d143951209f47303a295e0" [label="sha256:d9380e7f446593c6fc54eb73c27fa87305f58b7266d143951209f47303a295e0" shape="plaintext"];
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" -> "sha256:6a33f166e2b2da7f5ab554469aa8d830792f6c9f11691da9e4cc6ab51c0f87aa" [label=""];
  "sha256:6a33f166e2b2da7f5ab554469aa8d830792f6c9f11691da9e4cc6ab51c0f87aa" -> "sha256:0d7575b2924a691ef9b2170c9b372781cd78b38f8e63dbee93debaed025880eb" [label=""];
  "sha256:0d7575b2924a691ef9b2170c9b372781cd78b38f8e63dbee93debaed025880eb" -> "sha256:91c597d0932496ec6be7b8a7ccae17d30d8a2afea32f1e808a566ca8c9fc7901" [label=""];
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" -> "sha256:a2f8807bf5d47c393bfa3e047e5a4b3d33e91985532d6f27bddca7eb00ea93ac" [label=""];
  "sha256:91c597d0932496ec6be7b8a7ccae17d30d8a2afea32f1e808a566ca8c9fc7901" -> "sha256:a2f8807bf5d47c393bfa3e047e5a4b3d33e91985532d6f27bddca7eb00ea93ac" [label=""];
  "sha256:a2f8807bf5d47c393bfa3e047e5a4b3d33e91985532d6f27bddca7eb00ea93ac" -> "sha256:6a870ec1479978b97e158e9e92c11b5e9055644d4464d291ed62f688bdfd8b09" [label=""];
  "sha256:6a870ec1479978b97e158e9e92c11b5e9055644d4464d291ed62f688bdfd8b09" -> "sha256:d9380e7f446593c6fc54eb73c27fa87305f58b7266d143951209f47303a295e0" [label=""];
}

