[app/sources/167625182.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:7847acf0ccce9b5f4f3dc6c1d85a5c45e3c61cf213bab64d148b593a9a1d1315" [label="/bin/sh -c apt-get update &&     apt-get install -y         gcc-mingw-w64-i686         gcc-mingw-w64-x86-64         make         p7zip         pkg-config         wget &&     wget https://download.videolan.org/pub/videolan/vlc/2.1.0/win32/vlc-2.1.0-win32.7z -O vlc-2.1.0-win32.7z &&     wget https://download.videolan.org/pub/videolan/vlc/2.1.0/win64/vlc-2.1.0-win64.7z -O vlc-2.1.0-win64.7z &&     wget https://download.videolan.org/pub/videolan/vlc/2.2.0/win32/vlc-2.2.0-win32.7z -O vlc-2.2.0-win32.7z &&     wget https://download.videolan.org/pub/videolan/vlc/2.2.0/win64/vlc-2.2.0-win64.7z -O vlc-2.2.0-win64.7z &&     wget https://download.videolan.org/pub/videolan/vlc/3.0.0/win32/vlc-3.0.0-win32.7z -O vlc-3.0.0-win32.7z &&     wget https://download.videolan.org/pub/videolan/vlc/3.0.0/win64/vlc-3.0.0-win64.7z -O vlc-3.0.0-win64.7z &&     7zr x \"*.7z\" -o* \"*/sdk\" &&     rm *.7z &&     apt-get purge -y         p7zip         wget &&     apt-get clean &&     apt-get autoremove -y &&     rm -rf         /var/lib/apt/lists/*         /tmp/*         /var/tmp/*" shape="box"];
  "sha256:e02e9bd285ea50e957585fa0147fffc84f18da37079481f74fefb20694f64d47" [label="local://context" shape="ellipse"];
  "sha256:c965fc4ccead29f8b83cdc16c88fbc9f85cb0cfd305d0bc0772a3a1aad7094e5" [label="copy{src=/script.sh, dest=/}" shape="note"];
  "sha256:99dfe86df66d5ba1da720ad9b7101647e7ab0f729048c51c3b08e23eea5c3e34" [label="sha256:99dfe86df66d5ba1da720ad9b7101647e7ab0f729048c51c3b08e23eea5c3e34" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:7847acf0ccce9b5f4f3dc6c1d85a5c45e3c61cf213bab64d148b593a9a1d1315" [label=""];
  "sha256:7847acf0ccce9b5f4f3dc6c1d85a5c45e3c61cf213bab64d148b593a9a1d1315" -> "sha256:c965fc4ccead29f8b83cdc16c88fbc9f85cb0cfd305d0bc0772a3a1aad7094e5" [label=""];
  "sha256:e02e9bd285ea50e957585fa0147fffc84f18da37079481f74fefb20694f64d47" -> "sha256:c965fc4ccead29f8b83cdc16c88fbc9f85cb0cfd305d0bc0772a3a1aad7094e5" [label=""];
  "sha256:c965fc4ccead29f8b83cdc16c88fbc9f85cb0cfd305d0bc0772a3a1aad7094e5" -> "sha256:99dfe86df66d5ba1da720ad9b7101647e7ab0f729048c51c3b08e23eea5c3e34" [label=""];
}

