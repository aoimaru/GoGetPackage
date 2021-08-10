[app/sources/254831123.Dockerfile]
digraph {
  "sha256:eeb607542f4363379dfd6d01c608c28646099653c71f7d45797bb381ad364239" [label="docker-image://docker.io/snapcraft/ubuntu-base:i386-16.04.1" shape="ellipse"];
  "sha256:7b249e25cede34fd65fc01635a0fce62fa9413e2a694e7bde37b22e22f4b643d" [label="/bin/sh -c sed -i \"/^# deb.*universe/ s/^# //\" /etc/apt/sources.list" shape="box"];
  "sha256:ad2dd749415a18af963ab9ac0f07b4e3fe36af1b019cc09bedad9657f2d6d9bb" [label="/bin/sh -c sed -i \"/^# deb.*multiverse/ s/^# //\" /etc/apt/sources.list" shape="box"];
  "sha256:7c9f56e7d7ba22ad856d3a9b44fca08e2d2f220045ae1e82652954999ba78fe8" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:c439332866e9bfbed8dfc3b1da2d82e078d5e7c94316eb0bbed28e57a60458b9" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:0f78bc6e9f82c78f19d9aacc527ff698a95ef7dae50d9104a4809ffcd660f863" [label="/bin/sh -c apt-get install -y --no-install-recommends         devscripts         equivs         git         ca-certificates         curl" shape="box"];
  "sha256:b97782ff7c8b14669d7906296271b2f7dea44379589a1f712d3dfa8b641ca36d" [label="/bin/sh -c git clone --depth 1 --branch ${SNAPCRAFT_VERSION} https://github.com/snapcore/snapcraft  && cd snapcraft  && mk-build-deps debian/control -i --tool 'apt-get -y --no-install-recommends'  && dpkg-buildpackage -us -uc  && apt-get install -y ../*.deb  && apt-get remove --purge -y devscripts equivs git python3-fixtures python3-responses python3-setuptools python3-testscenarios python3-testtools  && apt-get autoremove -y  && apt-get clean -y" shape="box"];
  "sha256:e95c4b7f4f0421ddc086910e82d05b2523eb749982289d1e15c1e806aa84f370" [label="/bin/sh -c rm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:a26341c7064caf7aa2542a32cc1ced8b25798cefd8c00fa4e76ec5c25cb901fb" [label="/bin/sh -c apt-get install -y sudo" shape="box"];
  "sha256:8d3a01de0d03a15dd5992d35ab8d97d3e2068c22a9f4e9b33914c319660898a2" [label="/bin/sh -c echo \"ALL ALL=NOPASSWD: /usr/bin/apt-get,/usr/bin/apt-mark\" >> /etc/sudoers.d/apt-get  && chmod 0440 /etc/sudoers.d/apt-get" shape="box"];
  "sha256:8b42bacc636d6e459e595dd7b0400e9315047dac0239327a9856b14ead8b5796" [label="/bin/sh -c for i in $(seq 500 1100); do echo snapper:x:$i:100:a build user:/build:/bin/bash ; done | tee -a /etc/passwd" shape="box"];
  "sha256:68114271e42853846123dff9b079032c84ee3c0ad24611b6ed3b639ab70c5a4c" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:9d5749af5ebc4aac36db52e7cbcb7779e225e9edefdd4108e697928d1b8f1c61" [label="/bin/sh -c chgrp -R 100 /home  && chmod g+rwx /home" shape="box"];
  "sha256:e7abfba2c7fe195b15eadbd6270ba818c8fb61769436bdf7dcdc3e6bf7e92780" [label="mkdir{path=/build}" shape="note"];
  "sha256:a4c91a4d403e2e8a0ba06a55bf852ad5203e9b4e7a0aabbe289e6abeb74b02fd" [label="local://context" shape="ellipse"];
  "sha256:e911eb6b371bb1c4f16841d619a44157c592a78526813d4653c35ba097b82457" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin}" shape="note"];
  "sha256:cb63187dd3f84cb758350fd7c2937c1cf010bf844db036a48e24b2a358d4e82b" [label="/bin/sh -c chmod 755 /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:1ffef74c65b41fcc7ab35d3b3e05de829dce5245197865116cc1f2263d5d4588" [label="sha256:1ffef74c65b41fcc7ab35d3b3e05de829dce5245197865116cc1f2263d5d4588" shape="plaintext"];
  "sha256:eeb607542f4363379dfd6d01c608c28646099653c71f7d45797bb381ad364239" -> "sha256:7b249e25cede34fd65fc01635a0fce62fa9413e2a694e7bde37b22e22f4b643d" [label=""];
  "sha256:7b249e25cede34fd65fc01635a0fce62fa9413e2a694e7bde37b22e22f4b643d" -> "sha256:ad2dd749415a18af963ab9ac0f07b4e3fe36af1b019cc09bedad9657f2d6d9bb" [label=""];
  "sha256:ad2dd749415a18af963ab9ac0f07b4e3fe36af1b019cc09bedad9657f2d6d9bb" -> "sha256:7c9f56e7d7ba22ad856d3a9b44fca08e2d2f220045ae1e82652954999ba78fe8" [label=""];
  "sha256:7c9f56e7d7ba22ad856d3a9b44fca08e2d2f220045ae1e82652954999ba78fe8" -> "sha256:c439332866e9bfbed8dfc3b1da2d82e078d5e7c94316eb0bbed28e57a60458b9" [label=""];
  "sha256:c439332866e9bfbed8dfc3b1da2d82e078d5e7c94316eb0bbed28e57a60458b9" -> "sha256:0f78bc6e9f82c78f19d9aacc527ff698a95ef7dae50d9104a4809ffcd660f863" [label=""];
  "sha256:0f78bc6e9f82c78f19d9aacc527ff698a95ef7dae50d9104a4809ffcd660f863" -> "sha256:b97782ff7c8b14669d7906296271b2f7dea44379589a1f712d3dfa8b641ca36d" [label=""];
  "sha256:b97782ff7c8b14669d7906296271b2f7dea44379589a1f712d3dfa8b641ca36d" -> "sha256:e95c4b7f4f0421ddc086910e82d05b2523eb749982289d1e15c1e806aa84f370" [label=""];
  "sha256:e95c4b7f4f0421ddc086910e82d05b2523eb749982289d1e15c1e806aa84f370" -> "sha256:a26341c7064caf7aa2542a32cc1ced8b25798cefd8c00fa4e76ec5c25cb901fb" [label=""];
  "sha256:a26341c7064caf7aa2542a32cc1ced8b25798cefd8c00fa4e76ec5c25cb901fb" -> "sha256:8d3a01de0d03a15dd5992d35ab8d97d3e2068c22a9f4e9b33914c319660898a2" [label=""];
  "sha256:8d3a01de0d03a15dd5992d35ab8d97d3e2068c22a9f4e9b33914c319660898a2" -> "sha256:8b42bacc636d6e459e595dd7b0400e9315047dac0239327a9856b14ead8b5796" [label=""];
  "sha256:8b42bacc636d6e459e595dd7b0400e9315047dac0239327a9856b14ead8b5796" -> "sha256:68114271e42853846123dff9b079032c84ee3c0ad24611b6ed3b639ab70c5a4c" [label=""];
  "sha256:68114271e42853846123dff9b079032c84ee3c0ad24611b6ed3b639ab70c5a4c" -> "sha256:9d5749af5ebc4aac36db52e7cbcb7779e225e9edefdd4108e697928d1b8f1c61" [label=""];
  "sha256:9d5749af5ebc4aac36db52e7cbcb7779e225e9edefdd4108e697928d1b8f1c61" -> "sha256:e7abfba2c7fe195b15eadbd6270ba818c8fb61769436bdf7dcdc3e6bf7e92780" [label=""];
  "sha256:e7abfba2c7fe195b15eadbd6270ba818c8fb61769436bdf7dcdc3e6bf7e92780" -> "sha256:e911eb6b371bb1c4f16841d619a44157c592a78526813d4653c35ba097b82457" [label=""];
  "sha256:a4c91a4d403e2e8a0ba06a55bf852ad5203e9b4e7a0aabbe289e6abeb74b02fd" -> "sha256:e911eb6b371bb1c4f16841d619a44157c592a78526813d4653c35ba097b82457" [label=""];
  "sha256:e911eb6b371bb1c4f16841d619a44157c592a78526813d4653c35ba097b82457" -> "sha256:cb63187dd3f84cb758350fd7c2937c1cf010bf844db036a48e24b2a358d4e82b" [label=""];
  "sha256:cb63187dd3f84cb758350fd7c2937c1cf010bf844db036a48e24b2a358d4e82b" -> "sha256:1ffef74c65b41fcc7ab35d3b3e05de829dce5245197865116cc1f2263d5d4588" [label=""];
}

