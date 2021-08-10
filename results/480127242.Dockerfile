[app/sources/480127242.Dockerfile]
digraph {
  "sha256:7c8439f2f64c0eaff5acae99391651d864030154c8f1fbbde611805e35c0d094" [label="docker-image://docker.io/i386/ubuntu:18.10@sha256:4fe388d6cf4086da41175a42d910103077f03ceefe7675437e05fb758d348fef" shape="ellipse"];
  "sha256:0c1744f6a70b2a99e08011d6fb25da4ecd68a8b3c86a46ef56c9820992bb5c4c" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:553f4eda65a7362035ad025a72847f2e99ccd88c1d7e858a8a507e67ae611d27" [label="/bin/sh -c apt-get update &&     apt-get install -y devscripts equivs" shape="box"];
  "sha256:90eeedf9e24c0d3c3f2329ef493922d857579964af84790113c52d3d96cc418f" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:8049a8bb7290114da4ed65bf670e8fe01254ec09f957474b32da1d9778211735" [label="/bin/sh -c apt-get update &&     apt-get install -y -o Acquire::Retries=10         git         autoconf         automake         autopoint         cmake         libtool         libdbus-1-dev         libdbus-c++-dev         libupnp-dev         libgnutls28-dev         libargon2-0-dev         libebook1.2-dev         libcanberra-gtk3-dev         libclutter-gtk-1.0-dev         libclutter-1.0-dev         libglib2.0-dev         libgtk-3-dev         libnotify-dev         qtbase5-dev         qttools5-dev         qttools5-dev-tools         yasm         nasm         autotools-dev         gettext         libpulse-dev         libasound2-dev         libexpat1-dev         libpcre3-dev         libyaml-cpp-dev         libboost-dev         libxext-dev         libxfixes-dev         libspeex-dev         libspeexdsp-dev         uuid-dev         libavcodec-dev         libavutil-dev         libavformat-dev         libswscale-dev         libavdevice-dev         libopus-dev         libudev-dev         libgsm1-dev         libjsoncpp-dev         libmsgpack-dev         libnatpmp-dev         libayatana-appindicator3-dev         libqrencode-dev         libnm-dev         libwebkit2gtk-4.0-dev         libcrypto++-dev         libva-dev         libvdpau-dev         libssl-dev         libsndfile1-dev" shape="box"];
  "sha256:2dbbc1cc8b5b1612f59610fbd141470ecaac1766c5cbd4a04ae46719897f8b7e" [label="local://context" shape="ellipse"];
  "sha256:7f1ce470cc0f3e9cfddb1c03d16218037a57918808210d1a579b8280339f558a" [label="copy{src=/scripts/build-package-debian.sh, dest=/opt/build-package-debian.sh}" shape="note"];
  "sha256:5356ba17522421460f45c54a12f45763ef8def7a74f12155d01042592c1671c6" [label="sha256:5356ba17522421460f45c54a12f45763ef8def7a74f12155d01042592c1671c6" shape="plaintext"];
  "sha256:7c8439f2f64c0eaff5acae99391651d864030154c8f1fbbde611805e35c0d094" -> "sha256:0c1744f6a70b2a99e08011d6fb25da4ecd68a8b3c86a46ef56c9820992bb5c4c" [label=""];
  "sha256:0c1744f6a70b2a99e08011d6fb25da4ecd68a8b3c86a46ef56c9820992bb5c4c" -> "sha256:553f4eda65a7362035ad025a72847f2e99ccd88c1d7e858a8a507e67ae611d27" [label=""];
  "sha256:553f4eda65a7362035ad025a72847f2e99ccd88c1d7e858a8a507e67ae611d27" -> "sha256:90eeedf9e24c0d3c3f2329ef493922d857579964af84790113c52d3d96cc418f" [label=""];
  "sha256:90eeedf9e24c0d3c3f2329ef493922d857579964af84790113c52d3d96cc418f" -> "sha256:8049a8bb7290114da4ed65bf670e8fe01254ec09f957474b32da1d9778211735" [label=""];
  "sha256:8049a8bb7290114da4ed65bf670e8fe01254ec09f957474b32da1d9778211735" -> "sha256:7f1ce470cc0f3e9cfddb1c03d16218037a57918808210d1a579b8280339f558a" [label=""];
  "sha256:2dbbc1cc8b5b1612f59610fbd141470ecaac1766c5cbd4a04ae46719897f8b7e" -> "sha256:7f1ce470cc0f3e9cfddb1c03d16218037a57918808210d1a579b8280339f558a" [label=""];
  "sha256:7f1ce470cc0f3e9cfddb1c03d16218037a57918808210d1a579b8280339f558a" -> "sha256:5356ba17522421460f45c54a12f45763ef8def7a74f12155d01042592c1671c6" [label=""];
}

