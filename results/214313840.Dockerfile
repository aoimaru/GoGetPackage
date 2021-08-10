[app/sources/214313840.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:cefbe3d56ecf91d7ea12817f00758078158eac9c87ad20a9b68b17cb03ecc312" [label="/bin/sh -c apt-get update &&   apt-get dist-upgrade --yes &&   apt-get install --yes   curl sudo jq squashfs-tools &&   curl -L $(curl -H 'X-Ubuntu-Series: 16' 'https://api.snapcraft.io/api/v1/snaps/details/core' | jq '.download_url' -r) --output core.snap &&   mkdir -p /snap/core && unsquashfs -d /snap/core/current core.snap && rm core.snap &&   curl -L $(curl -H 'X-Ubuntu-Series: 16' 'https://api.snapcraft.io/api/v1/snaps/details/snapcraft?channel=edge' | jq '.download_url' -r) --output snapcraft.snap &&   mkdir -p /snap/snapcraft && unsquashfs -d /snap/snapcraft/current snapcraft.snap && rm snapcraft.snap &&   apt remove --yes --purge curl jq squashfs-tools &&   apt-get autoclean --yes &&   apt-get clean --yes" shape="box"];
  "sha256:a720d5b0915ecfb2b96017aaed3c242ae0469254a6dd9b6a4dafa0914fc5597f" [label="local://context" shape="ellipse"];
  "sha256:07e5bc91cbe61f686cccdb37998befefaa96dda4909ee7f0f1f0479f0e762506" [label="copy{src=/contrib/ci/snapcraft-wrapper, dest=/snap/bin/snapcraft}" shape="note"];
  "sha256:bced1e67f49516e914d6a65e91e111f872701a9627a204fdc944c529e3f8d125" [label="/bin/sh -c apt-get update && apt-get install -y \tcurl \tgit \tjq \topenssh-client \twget" shape="box"];
  "sha256:aa67d5b6dc882f407d23006273f87ca03d93108149f6f43e2dd0c2bb90a93360" [label="mkdir{path=/root/project}" shape="note"];
  "sha256:70f4f70d7ffa8697a841570bd9f72edfe6fd7da47ca3cd50c0255a81d446fc05" [label="sha256:70f4f70d7ffa8697a841570bd9f72edfe6fd7da47ca3cd50c0255a81d446fc05" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:cefbe3d56ecf91d7ea12817f00758078158eac9c87ad20a9b68b17cb03ecc312" [label=""];
  "sha256:cefbe3d56ecf91d7ea12817f00758078158eac9c87ad20a9b68b17cb03ecc312" -> "sha256:07e5bc91cbe61f686cccdb37998befefaa96dda4909ee7f0f1f0479f0e762506" [label=""];
  "sha256:a720d5b0915ecfb2b96017aaed3c242ae0469254a6dd9b6a4dafa0914fc5597f" -> "sha256:07e5bc91cbe61f686cccdb37998befefaa96dda4909ee7f0f1f0479f0e762506" [label=""];
  "sha256:07e5bc91cbe61f686cccdb37998befefaa96dda4909ee7f0f1f0479f0e762506" -> "sha256:bced1e67f49516e914d6a65e91e111f872701a9627a204fdc944c529e3f8d125" [label=""];
  "sha256:bced1e67f49516e914d6a65e91e111f872701a9627a204fdc944c529e3f8d125" -> "sha256:aa67d5b6dc882f407d23006273f87ca03d93108149f6f43e2dd0c2bb90a93360" [label=""];
  "sha256:aa67d5b6dc882f407d23006273f87ca03d93108149f6f43e2dd0c2bb90a93360" -> "sha256:70f4f70d7ffa8697a841570bd9f72edfe6fd7da47ca3cd50c0255a81d446fc05" [label=""];
}

