[app/sources/213734904.Dockerfile]
digraph {
  "sha256:b7d8a283156aa3bf933dd4c0a80c6fc12d201d1e77086157e3c74cc137068f68" [label="docker-image://docker.io/nodesource/centos7-base:latest" shape="ellipse"];
  "sha256:f7d069ad0599b25a9dd430245811163f16edbcfd6f39faffca73320ea1ad0a5d" [label="/bin/sh -c curl -sL -o ns.rpm https://rpm.nodesource.com/pub_6.x/el/7/x86_64/nodejs-6.1.0-1nodesource.el7.centos.x86_64.rpm  && rpm -i --nosignature --force ns.rpm  && rm -f ns.rpm" shape="box"];
  "sha256:980ddc6fcf5dcdb780fd5dc3903433ae760c767cd0e4250f33f65d6c2096a2d0" [label="/bin/sh -c npm install -g pangyp && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp && npm cache clear && node-gyp configure || echo \"\"" shape="box"];
  "sha256:7eff1617704654fc69a088dfe5809cab8f32fbdad7d08755d4de57f5c6ed23e8" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:fce15980c79002fb942fa30072169b039e488ae7b3dc40c3e702c4b4cd6fa6e4" [label="sha256:fce15980c79002fb942fa30072169b039e488ae7b3dc40c3e702c4b4cd6fa6e4" shape="plaintext"];
  "sha256:b7d8a283156aa3bf933dd4c0a80c6fc12d201d1e77086157e3c74cc137068f68" -> "sha256:f7d069ad0599b25a9dd430245811163f16edbcfd6f39faffca73320ea1ad0a5d" [label=""];
  "sha256:f7d069ad0599b25a9dd430245811163f16edbcfd6f39faffca73320ea1ad0a5d" -> "sha256:980ddc6fcf5dcdb780fd5dc3903433ae760c767cd0e4250f33f65d6c2096a2d0" [label=""];
  "sha256:980ddc6fcf5dcdb780fd5dc3903433ae760c767cd0e4250f33f65d6c2096a2d0" -> "sha256:7eff1617704654fc69a088dfe5809cab8f32fbdad7d08755d4de57f5c6ed23e8" [label=""];
  "sha256:7eff1617704654fc69a088dfe5809cab8f32fbdad7d08755d4de57f5c6ed23e8" -> "sha256:fce15980c79002fb942fa30072169b039e488ae7b3dc40c3e702c4b4cd6fa6e4" [label=""];
}

