[app/sources/148686761.Dockerfile]
digraph {
  "sha256:84ba6f120f93312dd76878413e3c8a7464eeb73855600ff9f2751fd97f172a9e" [label="local://context" shape="ellipse"];
  "sha256:e6da5158e491e23e4343393b14263b9329d8fcf61298d17baccf14d0f5c4fd22" [label="docker-image://docker.io/library/ubuntu:19.04" shape="ellipse"];
  "sha256:d3d8d03243295f78bac85409c9182c83fd196c17890c42b8d487b23e2fce7fa3" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y     gpg     curl     wget     lsb-release     add-apt-key     ca-certificates     dumb-init     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:cb2e1f56d53f440271b99fb42d22266e6bc146d01b3ebe70e2f5d759fe951020" [label="/bin/sh -c curl -sS -o - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | apt-key add     && echo \"deb https://packages.cloudfoundry.org/debian stable main\" | tee /etc/apt/sources.list.d/cloudfoundry-cli.list     && apt-get update && apt-get install --no-install-recommends -y cf-cli     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e1f751e84f1f7c07b020a4f6b9aff03ddb0377b92a879531deb951838e547caf" [label="/bin/sh -c curl \"https://raw.githubusercontent.com/helm/helm/master/scripts/get\" | bash" shape="box"];
  "sha256:88ff2a3d4d7ee7c5fc01c8499e1e09cb057a08713885ec1410c83d891bf359b5" [label="/bin/sh -c curl -sL \"https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl\" -o /usr/local/bin/kubectl && chmod +x /usr/local/bin/kubectl" shape="box"];
  "sha256:a05bb3b2543a1cc50a352c09e75c423dc20f80625318f7e9ccde8491d664ddb6" [label="/bin/sh -c curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | tee /etc/apt/trusted.gpg.d/microsoft.asc.gpg > /dev/null     && echo \"deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $(lsb_release -cs) main\" | tee /etc/apt/sources.list.d/azure-cli.list     && apt-get update && apt-get install --no-install-recommends -y azure-cli     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:72edb78f527b7990cb656052e713e2eeea1e51be09e624d55be3e9b00fbd4610" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y     git     sudo     gdb     pkg-config     build-essential     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1f2a1a546ff36a0786fe9b802b1212d7588ed140d1b02763529433b0c1df96a6" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y     nodejs     npm     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:de6e258443b35dae882106a038b37ba188db53022f44c9f97538de09f4c40b8e" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y     golang-1.12     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:fcdf798ac2b40fc59b06aaab915100d1df8aab02395cfd4ea82669ec57f220d4" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y     python3     python-dev     python3-pip     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:80c1b89ff85baa304614836915fde955cf442aef03f5c274f8acbcac186e0702" [label="/bin/sh -c python3 -m pip install --upgrade setuptools     && python3 -m pip install wheel     && python3 -m pip install -U pylint" shape="box"];
  "sha256:421ab68fdf502154cb329ddb6f42d1e7928200dd25c146611cf2d99c21dee57e" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y     default-jre-headless     default-jdk-headless     maven     gradle     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d9c1fa360a673bbd2e66a381e38352f2f157e55f507567cdd2c1faf5f3ecc8a8" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y     chromium-browser     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:241f0692ca97c51dc5b2ea89b97ce284b68628f5eb18090f8c866f9b1fa6b7a9" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y     bsdtar     openssl     locales     net-tools     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:29a6ac055c4cc30aba23f7b59d11dd3ba1fa5164cf7c8aa397a3a50bb6dfba5a" [label="/bin/sh -c localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8" shape="box"];
  "sha256:da4bbbde544e0722151ec17fec0a645f80d874b005ce9b61e2e8a2048fa63261" [label="/bin/sh -c curl -sL https://github.com/cdr/code-server/releases/download/${CODE_VERSION}/code-server${CODE_VERSION}-linux-x64.tar.gz | tar --strip-components=1 -zx -C /usr/local/bin code-server${CODE_VERSION}-linux-x64/code-server" shape="box"];
  "sha256:38b17b670ced99a6361018f682966f856dc9b226d4b5290f5601ce72795b4c3d" [label="/bin/sh -c groupadd -r coder     && useradd -m -r coder -g coder -s /bin/bash     && echo \"coder ALL=(ALL) NOPASSWD:ALL\" >> /etc/sudoers.d/nopasswd" shape="box"];
  "sha256:0efcfccad9b6d4bdef32be3483c4aa2ee8a9e34fae95529ab05376274b1ba4ef" [label="/bin/sh -c mkdir /home/coder/go" shape="box"];
  "sha256:107d6663d2281a2370a682e7466029fb604c5dac517b595243051d3c30202c1a" [label="/bin/sh -c mkdir -p ${VSCODE_USER}" shape="box"];
  "sha256:6d805bca5194f69d56da73068c9d30e0a992bd55c8a66c11bf42d239ab3e0bb4" [label="copy{src=/settings.json, dest=/home/coder/.local/share/code-server/User/}" shape="note"];
  "sha256:56c94437ea483f4d3428706ddc81213b54b145b6f24d096ee336d287efdebc5b" [label="/bin/sh -c mkdir -p ${VSCODE_EXTENSIONS}/go     && curl -JLs --retry 5 https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-vscode/vsextensions/Go/latest/vspackage | bsdtar --strip-components=1 -xf - -C ${VSCODE_EXTENSIONS}/go extension" shape="box"];
  "sha256:7bde2f58ec50097c773b5304afadbd5752d0788e1ac4ded51ad2a37d98f84c18" [label="/bin/sh -c mkdir -p ${VSCODE_EXTENSIONS}/python     && curl -JLs --retry 5 https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-python/vsextensions/python/latest/vspackage | bsdtar --strip-components=1 -xf - -C ${VSCODE_EXTENSIONS}/python extension" shape="box"];
  "sha256:f29c48b861889c777d7132173f0e7c365ee993bb4caeab69ac2e5b915eb60d6f" [label="/bin/sh -c mkdir -p ${VSCODE_EXTENSIONS}/java     && curl -JLs --retry 5 https://marketplace.visualstudio.com/_apis/public/gallery/publishers/redhat/vsextensions/java/latest/vspackage | bsdtar --strip-components=1 -xf - -C ${VSCODE_EXTENSIONS}/java extension" shape="box"];
  "sha256:f1279c773a9fe2358842758d431c109042c531081b1545db44ccac1fea35bb0c" [label="/bin/sh -c mkdir -p ${VSCODE_EXTENSIONS}/java-debugger     && curl -JLs --retry 5 https://marketplace.visualstudio.com/_apis/public/gallery/publishers/vscjava/vsextensions/vscode-java-debug/latest/vspackage | bsdtar --strip-components=1 -xf - -C ${VSCODE_EXTENSIONS}/java-debugger extension" shape="box"];
  "sha256:07dc99047989bf83ef744f07229581b48e499e704fb611b90b8eec2579c1968e" [label="/bin/sh -c mkdir -p ${VSCODE_EXTENSIONS}/java-test     && curl -JLs --retry 5 https://marketplace.visualstudio.com/_apis/public/gallery/publishers/vscjava/vsextensions/vscode-java-test/latest/vspackage | bsdtar --strip-components=1 -xf - -C ${VSCODE_EXTENSIONS}/java-test extension" shape="box"];
  "sha256:7b4bd4ac9db0058b7559de76bf710d069f20d22bdf9d3261f2a7817f7c733c0d" [label="/bin/sh -c mkdir -p ${VSCODE_EXTENSIONS}/maven     && curl -JLs --retry 5 https://marketplace.visualstudio.com/_apis/public/gallery/publishers/vscjava/vsextensions/vscode-maven/latest/vspackage | bsdtar --strip-components=1 -xf - -C ${VSCODE_EXTENSIONS}/maven extension" shape="box"];
  "sha256:22b1954338c1bd6d08d1105bd420becc01a741ec039f968af83898e2796c0f33" [label="/bin/sh -c mkdir -p ${VSCODE_EXTENSIONS}/yaml     && curl -JLs --retry 5 https://marketplace.visualstudio.com/_apis/public/gallery/publishers/redhat/vsextensions/vscode-yaml/latest/vspackage | bsdtar --strip-components=1 -xf - -C ${VSCODE_EXTENSIONS}/yaml extension" shape="box"];
  "sha256:4a8c4d575b1dc26cdc27e3002a99a49115e092647694017f400669ef322a2364" [label="/bin/sh -c mkdir -p ${VSCODE_EXTENSIONS}/kubernetes     && curl -JLs --retry 5 https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-kubernetes-tools/vsextensions/vscode-kubernetes-tools/latest/vspackage | bsdtar --strip-components=1 -xf - -C ${VSCODE_EXTENSIONS}/kubernetes extension" shape="box"];
  "sha256:6c99d0595757f11e13cc659295bf135bd8cc70626d437043ff96c99abd8eb7a7" [label="/bin/sh -c helm init --client-only" shape="box"];
  "sha256:cc1725cc211f4071d404b98571ed9002ae13d5018fb2d6ff6fb2171539b5674f" [label="/bin/sh -c mkdir -p ${VSCODE_EXTENSIONS}/browser-debugger     && curl -JLs --retry 5 https://marketplace.visualstudio.com/_apis/public/gallery/publishers/msjsdiag/vsextensions/debugger-for-chrome/latest/vspackage | bsdtar --strip-components=1 -xf - -C ${VSCODE_EXTENSIONS}/browser-debugger extension" shape="box"];
  "sha256:6c3d9380909db15c01d71541d79a13325573cdb01f8cdfe77ef36cf169a332b7" [label="/bin/sh -c mkdir -p ${VSCODE_EXTENSIONS}/browser-preview     && curl -JLs --retry 5 https://marketplace.visualstudio.com/_apis/public/gallery/publishers/auchenberg/vsextensions/vscode-browser-preview/latest/vspackage | bsdtar --strip-components=1 -xf - -C ${VSCODE_EXTENSIONS}/browser-preview extension" shape="box"];
  "sha256:dc85c0d26057a7eddd8fd8da63cd7bdae6bdd3115bf64b43ef26ef6777aff9bd" [label="/bin/sh -c mkdir -p /home/coder/project" shape="box"];
  "sha256:400c17a3bab093b8b9371c9e95575a5ed44368f57b56077a51e6c2750ee4bca1" [label="mkdir{path=/home/coder/project}" shape="note"];
  "sha256:3a450f7ff2a483dfd8a97c77f690d37dd3a5f4f4110bb9159107525045b433fb" [label="sha256:3a450f7ff2a483dfd8a97c77f690d37dd3a5f4f4110bb9159107525045b433fb" shape="plaintext"];
  "sha256:e6da5158e491e23e4343393b14263b9329d8fcf61298d17baccf14d0f5c4fd22" -> "sha256:d3d8d03243295f78bac85409c9182c83fd196c17890c42b8d487b23e2fce7fa3" [label=""];
  "sha256:d3d8d03243295f78bac85409c9182c83fd196c17890c42b8d487b23e2fce7fa3" -> "sha256:cb2e1f56d53f440271b99fb42d22266e6bc146d01b3ebe70e2f5d759fe951020" [label=""];
  "sha256:cb2e1f56d53f440271b99fb42d22266e6bc146d01b3ebe70e2f5d759fe951020" -> "sha256:e1f751e84f1f7c07b020a4f6b9aff03ddb0377b92a879531deb951838e547caf" [label=""];
  "sha256:e1f751e84f1f7c07b020a4f6b9aff03ddb0377b92a879531deb951838e547caf" -> "sha256:88ff2a3d4d7ee7c5fc01c8499e1e09cb057a08713885ec1410c83d891bf359b5" [label=""];
  "sha256:88ff2a3d4d7ee7c5fc01c8499e1e09cb057a08713885ec1410c83d891bf359b5" -> "sha256:a05bb3b2543a1cc50a352c09e75c423dc20f80625318f7e9ccde8491d664ddb6" [label=""];
  "sha256:a05bb3b2543a1cc50a352c09e75c423dc20f80625318f7e9ccde8491d664ddb6" -> "sha256:72edb78f527b7990cb656052e713e2eeea1e51be09e624d55be3e9b00fbd4610" [label=""];
  "sha256:72edb78f527b7990cb656052e713e2eeea1e51be09e624d55be3e9b00fbd4610" -> "sha256:1f2a1a546ff36a0786fe9b802b1212d7588ed140d1b02763529433b0c1df96a6" [label=""];
  "sha256:1f2a1a546ff36a0786fe9b802b1212d7588ed140d1b02763529433b0c1df96a6" -> "sha256:de6e258443b35dae882106a038b37ba188db53022f44c9f97538de09f4c40b8e" [label=""];
  "sha256:de6e258443b35dae882106a038b37ba188db53022f44c9f97538de09f4c40b8e" -> "sha256:fcdf798ac2b40fc59b06aaab915100d1df8aab02395cfd4ea82669ec57f220d4" [label=""];
  "sha256:fcdf798ac2b40fc59b06aaab915100d1df8aab02395cfd4ea82669ec57f220d4" -> "sha256:80c1b89ff85baa304614836915fde955cf442aef03f5c274f8acbcac186e0702" [label=""];
  "sha256:80c1b89ff85baa304614836915fde955cf442aef03f5c274f8acbcac186e0702" -> "sha256:421ab68fdf502154cb329ddb6f42d1e7928200dd25c146611cf2d99c21dee57e" [label=""];
  "sha256:421ab68fdf502154cb329ddb6f42d1e7928200dd25c146611cf2d99c21dee57e" -> "sha256:d9c1fa360a673bbd2e66a381e38352f2f157e55f507567cdd2c1faf5f3ecc8a8" [label=""];
  "sha256:d9c1fa360a673bbd2e66a381e38352f2f157e55f507567cdd2c1faf5f3ecc8a8" -> "sha256:241f0692ca97c51dc5b2ea89b97ce284b68628f5eb18090f8c866f9b1fa6b7a9" [label=""];
  "sha256:241f0692ca97c51dc5b2ea89b97ce284b68628f5eb18090f8c866f9b1fa6b7a9" -> "sha256:29a6ac055c4cc30aba23f7b59d11dd3ba1fa5164cf7c8aa397a3a50bb6dfba5a" [label=""];
  "sha256:29a6ac055c4cc30aba23f7b59d11dd3ba1fa5164cf7c8aa397a3a50bb6dfba5a" -> "sha256:da4bbbde544e0722151ec17fec0a645f80d874b005ce9b61e2e8a2048fa63261" [label=""];
  "sha256:da4bbbde544e0722151ec17fec0a645f80d874b005ce9b61e2e8a2048fa63261" -> "sha256:38b17b670ced99a6361018f682966f856dc9b226d4b5290f5601ce72795b4c3d" [label=""];
  "sha256:38b17b670ced99a6361018f682966f856dc9b226d4b5290f5601ce72795b4c3d" -> "sha256:0efcfccad9b6d4bdef32be3483c4aa2ee8a9e34fae95529ab05376274b1ba4ef" [label=""];
  "sha256:0efcfccad9b6d4bdef32be3483c4aa2ee8a9e34fae95529ab05376274b1ba4ef" -> "sha256:107d6663d2281a2370a682e7466029fb604c5dac517b595243051d3c30202c1a" [label=""];
  "sha256:107d6663d2281a2370a682e7466029fb604c5dac517b595243051d3c30202c1a" -> "sha256:6d805bca5194f69d56da73068c9d30e0a992bd55c8a66c11bf42d239ab3e0bb4" [label=""];
  "sha256:84ba6f120f93312dd76878413e3c8a7464eeb73855600ff9f2751fd97f172a9e" -> "sha256:6d805bca5194f69d56da73068c9d30e0a992bd55c8a66c11bf42d239ab3e0bb4" [label=""];
  "sha256:6d805bca5194f69d56da73068c9d30e0a992bd55c8a66c11bf42d239ab3e0bb4" -> "sha256:56c94437ea483f4d3428706ddc81213b54b145b6f24d096ee336d287efdebc5b" [label=""];
  "sha256:56c94437ea483f4d3428706ddc81213b54b145b6f24d096ee336d287efdebc5b" -> "sha256:7bde2f58ec50097c773b5304afadbd5752d0788e1ac4ded51ad2a37d98f84c18" [label=""];
  "sha256:7bde2f58ec50097c773b5304afadbd5752d0788e1ac4ded51ad2a37d98f84c18" -> "sha256:f29c48b861889c777d7132173f0e7c365ee993bb4caeab69ac2e5b915eb60d6f" [label=""];
  "sha256:f29c48b861889c777d7132173f0e7c365ee993bb4caeab69ac2e5b915eb60d6f" -> "sha256:f1279c773a9fe2358842758d431c109042c531081b1545db44ccac1fea35bb0c" [label=""];
  "sha256:f1279c773a9fe2358842758d431c109042c531081b1545db44ccac1fea35bb0c" -> "sha256:07dc99047989bf83ef744f07229581b48e499e704fb611b90b8eec2579c1968e" [label=""];
  "sha256:07dc99047989bf83ef744f07229581b48e499e704fb611b90b8eec2579c1968e" -> "sha256:7b4bd4ac9db0058b7559de76bf710d069f20d22bdf9d3261f2a7817f7c733c0d" [label=""];
  "sha256:7b4bd4ac9db0058b7559de76bf710d069f20d22bdf9d3261f2a7817f7c733c0d" -> "sha256:22b1954338c1bd6d08d1105bd420becc01a741ec039f968af83898e2796c0f33" [label=""];
  "sha256:22b1954338c1bd6d08d1105bd420becc01a741ec039f968af83898e2796c0f33" -> "sha256:4a8c4d575b1dc26cdc27e3002a99a49115e092647694017f400669ef322a2364" [label=""];
  "sha256:4a8c4d575b1dc26cdc27e3002a99a49115e092647694017f400669ef322a2364" -> "sha256:6c99d0595757f11e13cc659295bf135bd8cc70626d437043ff96c99abd8eb7a7" [label=""];
  "sha256:6c99d0595757f11e13cc659295bf135bd8cc70626d437043ff96c99abd8eb7a7" -> "sha256:cc1725cc211f4071d404b98571ed9002ae13d5018fb2d6ff6fb2171539b5674f" [label=""];
  "sha256:cc1725cc211f4071d404b98571ed9002ae13d5018fb2d6ff6fb2171539b5674f" -> "sha256:6c3d9380909db15c01d71541d79a13325573cdb01f8cdfe77ef36cf169a332b7" [label=""];
  "sha256:6c3d9380909db15c01d71541d79a13325573cdb01f8cdfe77ef36cf169a332b7" -> "sha256:dc85c0d26057a7eddd8fd8da63cd7bdae6bdd3115bf64b43ef26ef6777aff9bd" [label=""];
  "sha256:dc85c0d26057a7eddd8fd8da63cd7bdae6bdd3115bf64b43ef26ef6777aff9bd" -> "sha256:400c17a3bab093b8b9371c9e95575a5ed44368f57b56077a51e6c2750ee4bca1" [label=""];
  "sha256:400c17a3bab093b8b9371c9e95575a5ed44368f57b56077a51e6c2750ee4bca1" -> "sha256:3a450f7ff2a483dfd8a97c77f690d37dd3a5f4f4110bb9159107525045b433fb" [label=""];
}
