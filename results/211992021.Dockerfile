[app/sources/211992021.Dockerfile]
digraph {
  "sha256:41d64b45ac88ec4df4c503946d6744433ff9e2179d15c46678c79cbf5f704221" [label="docker-image://docker.io/archlinux/base:latest" shape="ellipse"];
  "sha256:17394c759d7bb4d8fe16966659b35bca933df824ce7e751a9b22a2bf0eb01c13" [label="/bin/sh -c pacman -Syu --noconfirm --needed base base-devel git archiso reflector curl" shape="box"];
  "sha256:dc096e24d341f22066088eb76bcab5b3c587b4b90df5f192e7821e12e8bacb70" [label="/bin/sh -c mkdir ~/.gnupg && echo \"disable-ipv6\" >> ~/.gnupg/dirmngr.conf" shape="box"];
  "sha256:23f49b74c22d80c2e0339fef3b79ba43c83be3be8589ffba38030384db601b8e" [label="/bin/sh -c pacman-key --init && pacman-key --populate archlinux &&     pacman-key -r \"${ARCHZFS_KEY}\" --keyserver hkp://pool.sks-keyservers.net:80 && pacman-key --lsign-key \"${ARCHZFS_KEY}\"" shape="box"];
  "sha256:85c8945094465c27d935219ee6a3038565ffec6d4f87827a96817fed30e0b746" [label="/bin/sh -c mkdir -p \"${ALEZ_BUILD_DIR}\" &&     cp -r /usr/share/archiso/configs/releng \"${ALEZ_BUILD_DIR}/iso\" &&     sed --in-place '/wpa_actiond/d' \"${ALEZ_BUILD_DIR}/iso/packages.x86_64\" &&     mkdir -p         \"${ALEZ_BUILD_DIR}/iso/out\"         \"${ALEZ_BUILD_DIR}/iso/airootfs/usr/local/bin\"         \"${ALEZ_BUILD_DIR}/iso/airootfs/usr/local/share\"" shape="box"];
  "sha256:cd69c83649d0ef854c27f4388c6d4c0c690cd6bfa523688a95142678672389fd" [label="/bin/sh -c sed -i '/^\\[core\\]/i [archzfs]\\n            SigLevel = Optional TrustAll\\n            Server = http://archzfs.com/$repo/x86_64\\n'     \"${ALEZ_BUILD_DIR}/iso/pacman.conf\"" shape="box"];
  "sha256:2eb0a3f82206a35773117f4b7db9a8f09afa9ee81a76feca56ce13b9a69a3a53" [label="/bin/sh -c printf 'git\\narchzfs-linux\\nreflector\\n' >> \"${ALEZ_BUILD_DIR}/iso/packages.x86_64\"" shape="box"];
  "sha256:7c7a88212794aec2c1229e4cdb4ddbd878e3abc0e8e7daa91f6be9207abd2dda" [label="local://context" shape="ellipse"];
  "sha256:bcc82a5ef300e80742d18d09356010b9c045864162034fe956907430122953ca" [label="copy{src=/alez-downloader.sh, dest=/opt/alez/iso/airootfs/usr/local/bin/alez}" shape="note"];
  "sha256:f629de65de20593067a94a736a291695a09fb729319a505adc01871874f07566" [label="copy{src=/motd, dest=/opt/alez/iso/airootfs/etc/}" shape="note"];
  "sha256:37594afa3c2e9257fa0a3defea49378d9e9c76d58ed20180428fe6e4754ca7d9" [label="/bin/sh -c git clone --branch master --single-branch --depth 1     https://github.com/danboid/ALEZ.git     ${ALEZ_BUILD_DIR}/iso/airootfs/usr/local/share/ALEZ" shape="box"];
  "sha256:94d983e67810016f356272797d6a1ff1cb579e79e75e598c31948bc3b539f364" [label="/bin/sh -c chmod +x \"${ALEZ_BUILD_DIR}/iso/airootfs/usr/local/bin/alez\"" shape="box"];
  "sha256:41dba22159e79adaac363f5e6e79f665650031864480fe409d67e3eb46201c9d" [label="mkdir{path=/opt/alez/iso}" shape="note"];
  "sha256:d8888c89fcece6224851109226b6e741338b56cb5a6ba840a859c120aab22161" [label="sha256:d8888c89fcece6224851109226b6e741338b56cb5a6ba840a859c120aab22161" shape="plaintext"];
  "sha256:41d64b45ac88ec4df4c503946d6744433ff9e2179d15c46678c79cbf5f704221" -> "sha256:17394c759d7bb4d8fe16966659b35bca933df824ce7e751a9b22a2bf0eb01c13" [label=""];
  "sha256:17394c759d7bb4d8fe16966659b35bca933df824ce7e751a9b22a2bf0eb01c13" -> "sha256:dc096e24d341f22066088eb76bcab5b3c587b4b90df5f192e7821e12e8bacb70" [label=""];
  "sha256:dc096e24d341f22066088eb76bcab5b3c587b4b90df5f192e7821e12e8bacb70" -> "sha256:23f49b74c22d80c2e0339fef3b79ba43c83be3be8589ffba38030384db601b8e" [label=""];
  "sha256:23f49b74c22d80c2e0339fef3b79ba43c83be3be8589ffba38030384db601b8e" -> "sha256:85c8945094465c27d935219ee6a3038565ffec6d4f87827a96817fed30e0b746" [label=""];
  "sha256:85c8945094465c27d935219ee6a3038565ffec6d4f87827a96817fed30e0b746" -> "sha256:cd69c83649d0ef854c27f4388c6d4c0c690cd6bfa523688a95142678672389fd" [label=""];
  "sha256:cd69c83649d0ef854c27f4388c6d4c0c690cd6bfa523688a95142678672389fd" -> "sha256:2eb0a3f82206a35773117f4b7db9a8f09afa9ee81a76feca56ce13b9a69a3a53" [label=""];
  "sha256:2eb0a3f82206a35773117f4b7db9a8f09afa9ee81a76feca56ce13b9a69a3a53" -> "sha256:bcc82a5ef300e80742d18d09356010b9c045864162034fe956907430122953ca" [label=""];
  "sha256:7c7a88212794aec2c1229e4cdb4ddbd878e3abc0e8e7daa91f6be9207abd2dda" -> "sha256:bcc82a5ef300e80742d18d09356010b9c045864162034fe956907430122953ca" [label=""];
  "sha256:bcc82a5ef300e80742d18d09356010b9c045864162034fe956907430122953ca" -> "sha256:f629de65de20593067a94a736a291695a09fb729319a505adc01871874f07566" [label=""];
  "sha256:7c7a88212794aec2c1229e4cdb4ddbd878e3abc0e8e7daa91f6be9207abd2dda" -> "sha256:f629de65de20593067a94a736a291695a09fb729319a505adc01871874f07566" [label=""];
  "sha256:f629de65de20593067a94a736a291695a09fb729319a505adc01871874f07566" -> "sha256:37594afa3c2e9257fa0a3defea49378d9e9c76d58ed20180428fe6e4754ca7d9" [label=""];
  "sha256:37594afa3c2e9257fa0a3defea49378d9e9c76d58ed20180428fe6e4754ca7d9" -> "sha256:94d983e67810016f356272797d6a1ff1cb579e79e75e598c31948bc3b539f364" [label=""];
  "sha256:94d983e67810016f356272797d6a1ff1cb579e79e75e598c31948bc3b539f364" -> "sha256:41dba22159e79adaac363f5e6e79f665650031864480fe409d67e3eb46201c9d" [label=""];
  "sha256:41dba22159e79adaac363f5e6e79f665650031864480fe409d67e3eb46201c9d" -> "sha256:d8888c89fcece6224851109226b6e741338b56cb5a6ba840a859c120aab22161" [label=""];
}

