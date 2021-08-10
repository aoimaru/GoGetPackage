[app/sources/202806455.Dockerfile]
digraph {
  "sha256:613d049faf7191939f944a79122ed7db578fef0db5b53e2485719cacfa671540" [label="docker-image://docker.io/multiarch/debian-debootstrap:armhf-stretch" shape="ellipse"];
  "sha256:0e5b314852b60f0cae3062a24cc44a220ae8eea87ecc2cb308d209e5dc485f19" [label="/bin/sh -c apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y         arping         ca-certificates         curl         fontconfig         gosu         libpcap-dev         locales         locales-all         netbase         unzip         wget         zip &&     chmod u+s /usr/sbin/arping &&     ln -s -f /bin/true /usr/bin/chfn &&     sed -i 's#stretch#buster#g' /etc/apt/sources.list &&     apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y tini &&     sed -i 's#buster#stretch#g' /etc/apt/sources.list &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:da72a12dfbed8d6bd71c88a42c145f04a303bc25aed069b5c450702346d27066" [label="/bin/sh -c wget -nv -O /tmp/java.tar.gz \"${JAVA_URL}\" &&     mkdir \"${JAVA_HOME}\" &&     tar --exclude='demo' --exclude='sample' --exclude='src.zip' -xf /tmp/java.tar.gz --strip-components=1 -C \"${JAVA_HOME}\" &&     rm /tmp/java.tar.gz &&     update-alternatives --install /usr/bin/java java \"${JAVA_HOME}/bin/java\" 50 &&     update-alternatives --install /usr/bin/javac javac \"${JAVA_HOME}/bin/javac\" 50" shape="box"];
  "sha256:027de68818cb458b3432dab22949211a5b0dd1944fe6f02ad27b98478cc40ec2" [label="/bin/sh -c wget -nv -O /tmp/openhab.zip \"${OPENHAB_URL}\" &&     unzip -q /tmp/openhab.zip -d \"${APPDIR}\" -x \"*.bat\" &&     rm /tmp/openhab.zip &&     mkdir -p \"${APPDIR}/userdata/logs\" &&     touch \"${APPDIR}/userdata/logs/openhab.log\" &&     cp -a \"${APPDIR}/userdata\" \"${APPDIR}/userdata.dist\" &&     cp -a \"${APPDIR}/conf\" \"${APPDIR}/conf.dist\" &&     echo 'export TERM=${TERM:=dumb}' | tee -a ~/.bashrc" shape="box"];
  "sha256:235b0547e24a890bd4998c57c57fd09af1997ccfa44862baa0c472d35180974b" [label="mkdir{path=/openhab}" shape="note"];
  "sha256:a675865922b15b05129f0d37a497b4534ffb2bc65114630aa9e17f4bb6fa6054" [label="local://context" shape="ellipse"];
  "sha256:c06986e7163ec6aafa60a16c8c9d227446827c658867a49671ad106b0c152268" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:b558a33f1a8804f0f2e39eae4bc658e494c5fb8204a71e5bbc99f1977e6f1434" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:da3ea03e88e3e86612c4228d3de9da06b88cbed2ac907b5475e387fc8063373d" [label="sha256:da3ea03e88e3e86612c4228d3de9da06b88cbed2ac907b5475e387fc8063373d" shape="plaintext"];
  "sha256:613d049faf7191939f944a79122ed7db578fef0db5b53e2485719cacfa671540" -> "sha256:0e5b314852b60f0cae3062a24cc44a220ae8eea87ecc2cb308d209e5dc485f19" [label=""];
  "sha256:0e5b314852b60f0cae3062a24cc44a220ae8eea87ecc2cb308d209e5dc485f19" -> "sha256:da72a12dfbed8d6bd71c88a42c145f04a303bc25aed069b5c450702346d27066" [label=""];
  "sha256:da72a12dfbed8d6bd71c88a42c145f04a303bc25aed069b5c450702346d27066" -> "sha256:027de68818cb458b3432dab22949211a5b0dd1944fe6f02ad27b98478cc40ec2" [label=""];
  "sha256:027de68818cb458b3432dab22949211a5b0dd1944fe6f02ad27b98478cc40ec2" -> "sha256:235b0547e24a890bd4998c57c57fd09af1997ccfa44862baa0c472d35180974b" [label=""];
  "sha256:235b0547e24a890bd4998c57c57fd09af1997ccfa44862baa0c472d35180974b" -> "sha256:c06986e7163ec6aafa60a16c8c9d227446827c658867a49671ad106b0c152268" [label=""];
  "sha256:a675865922b15b05129f0d37a497b4534ffb2bc65114630aa9e17f4bb6fa6054" -> "sha256:c06986e7163ec6aafa60a16c8c9d227446827c658867a49671ad106b0c152268" [label=""];
  "sha256:c06986e7163ec6aafa60a16c8c9d227446827c658867a49671ad106b0c152268" -> "sha256:b558a33f1a8804f0f2e39eae4bc658e494c5fb8204a71e5bbc99f1977e6f1434" [label=""];
  "sha256:b558a33f1a8804f0f2e39eae4bc658e494c5fb8204a71e5bbc99f1977e6f1434" -> "sha256:da3ea03e88e3e86612c4228d3de9da06b88cbed2ac907b5475e387fc8063373d" [label=""];
}

