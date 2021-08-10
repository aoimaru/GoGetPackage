[app/sources/355162524.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:e66c1fda8efb9cf52b402ca5d49d4cfdaf63ab11a4d795f65bc0777fe68726f0" [label="/bin/sh -c apt-get update && apt-get install -qy apt-utils" shape="box"];
  "sha256:354c80ac79adb292c934dd3f12023d4bec2e53d72226df29d0d095b3c03cbfd9" [label="/bin/sh -c apt-get -qy install locales" shape="box"];
  "sha256:c7fd8fcbc05573ecef7f42a56945db9b548f281b73757d4f194663c303969a51" [label="/bin/sh -c locale-gen --no-purge en_US.UTF-8" shape="box"];
  "sha256:1f8a2fa22577f06f559779b8789cf840d67dc807b50fbd62161f43d29aa64f3a" [label="/bin/sh -c apt-get install -qy \tgit \tbuild-essential \tgawk \tpkg-config \tgettext \tautomake \tautoconf \tautopoint \tlibtool \tbison \tflex \tzlib1g-dev \tlibgmp3-dev \tlibmpfr-dev \tlibmpc-dev \ttexinfo \tmc \tlibncurses5-dev \tnano \tvim   \tautopoint \tgperf \tpython-docutils" shape="box"];
  "sha256:b78031683050305bb22544522b5d3f0554e9ad19afe23012a43c0fc86cde2182" [label="/bin/sh -c git clone https://bitbucket.org/padavan/rt-n56u.git /opt/rt-n56u" shape="box"];
  "sha256:2e58cc801c1db3f2036112211fd5e67774daba397af2d9fe581a5acc68f7728c" [label="/bin/sh -c cd /opt/rt-n56u/toolchain-mipsel && ./clean_sources && ./build_toolchain_3.4.x" shape="box"];
  "sha256:6ef4427ef3b0bec00e47a6ebc29e3d270d1e5e26ce7515bf7ccbd4d509f8676a" [label="sha256:6ef4427ef3b0bec00e47a6ebc29e3d270d1e5e26ce7515bf7ccbd4d509f8676a" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:e66c1fda8efb9cf52b402ca5d49d4cfdaf63ab11a4d795f65bc0777fe68726f0" [label=""];
  "sha256:e66c1fda8efb9cf52b402ca5d49d4cfdaf63ab11a4d795f65bc0777fe68726f0" -> "sha256:354c80ac79adb292c934dd3f12023d4bec2e53d72226df29d0d095b3c03cbfd9" [label=""];
  "sha256:354c80ac79adb292c934dd3f12023d4bec2e53d72226df29d0d095b3c03cbfd9" -> "sha256:c7fd8fcbc05573ecef7f42a56945db9b548f281b73757d4f194663c303969a51" [label=""];
  "sha256:c7fd8fcbc05573ecef7f42a56945db9b548f281b73757d4f194663c303969a51" -> "sha256:1f8a2fa22577f06f559779b8789cf840d67dc807b50fbd62161f43d29aa64f3a" [label=""];
  "sha256:1f8a2fa22577f06f559779b8789cf840d67dc807b50fbd62161f43d29aa64f3a" -> "sha256:b78031683050305bb22544522b5d3f0554e9ad19afe23012a43c0fc86cde2182" [label=""];
  "sha256:b78031683050305bb22544522b5d3f0554e9ad19afe23012a43c0fc86cde2182" -> "sha256:2e58cc801c1db3f2036112211fd5e67774daba397af2d9fe581a5acc68f7728c" [label=""];
  "sha256:2e58cc801c1db3f2036112211fd5e67774daba397af2d9fe581a5acc68f7728c" -> "sha256:6ef4427ef3b0bec00e47a6ebc29e3d270d1e5e26ce7515bf7ccbd4d509f8676a" [label=""];
}

