[app/sources/438040649.Dockerfile]
digraph {
  "sha256:e08eaa551e778c9b534c4200754c1ec3320ba4dfe91481d3131f4e0e90d74269" [label="docker-image://launcher.gcr.io/google/clang-debian9@sha256:e4ef90208921fafd6ad265044ea5e848ed84715de3a97c680e483c310131a970" shape="ellipse"];
  "sha256:ee37bf9c2a2cba934d2eea632fffe35a2a48ce4feead4694baf15e242bf7064a" [label="/bin/sh -c apt-get update && apt-get upgrade -y && apt-get install -y   git   python   curl   build-essential   libfontconfig-dev   libgl1-mesa-dev   libglu1-mesa-dev" shape="box"];
  "sha256:0c870ea01f47fdc7f4c13989ed0a5cc5e4802c61a1ce56c3baef3bbff6c95878" [label="https://storage.googleapis.com/swiftshader-binaries/OpenGL_ES/Latest/Linux/libGLESv2.so" shape="ellipse"];
  "sha256:52fef74875e56791057c156467dfef5fdf99a33009216c93005b3b83b9b8375f" [label="copy{src=/libGLESv2.so, dest=/usr/local/lib/libGLESv2.so}" shape="note"];
  "sha256:68747c84b1597c84d778ea3279ec4f1e35edad451f0565b886050068f9af8445" [label="https://storage.googleapis.com/swiftshader-binaries/OpenGL_ES/Latest/Linux/libEGL.so" shape="ellipse"];
  "sha256:c144a19a355454b922ed8faa0a78eb51490fb0c4a724bd2bad53b4972c8d5c70" [label="copy{src=/libEGL.so, dest=/usr/local/lib/libEGL.so}" shape="note"];
  "sha256:892197b11842075b1168a554095f404c2d4b97ff6dd3e28aa76ba44e7d8cec52" [label="/bin/sh -c cd /tmp   && git clone 'https://chromium.googlesource.com/chromium/tools/depot_tools.git'   && git clone https://swiftshader.googlesource.com/SwiftShader swiftshader" shape="box"];
  "sha256:5691a0f4e93dddf7845a28159c56c10292ead89298193b797f89d7487a10f720" [label="/bin/sh -c mkdir -m 0777 /skia" shape="box"];
  "sha256:87cf793a0dc0caef42854f483e9d245d2f4911404c9d991c28c3889a61383b29" [label="sha256:87cf793a0dc0caef42854f483e9d245d2f4911404c9d991c28c3889a61383b29" shape="plaintext"];
  "sha256:e08eaa551e778c9b534c4200754c1ec3320ba4dfe91481d3131f4e0e90d74269" -> "sha256:ee37bf9c2a2cba934d2eea632fffe35a2a48ce4feead4694baf15e242bf7064a" [label=""];
  "sha256:ee37bf9c2a2cba934d2eea632fffe35a2a48ce4feead4694baf15e242bf7064a" -> "sha256:52fef74875e56791057c156467dfef5fdf99a33009216c93005b3b83b9b8375f" [label=""];
  "sha256:0c870ea01f47fdc7f4c13989ed0a5cc5e4802c61a1ce56c3baef3bbff6c95878" -> "sha256:52fef74875e56791057c156467dfef5fdf99a33009216c93005b3b83b9b8375f" [label=""];
  "sha256:52fef74875e56791057c156467dfef5fdf99a33009216c93005b3b83b9b8375f" -> "sha256:c144a19a355454b922ed8faa0a78eb51490fb0c4a724bd2bad53b4972c8d5c70" [label=""];
  "sha256:68747c84b1597c84d778ea3279ec4f1e35edad451f0565b886050068f9af8445" -> "sha256:c144a19a355454b922ed8faa0a78eb51490fb0c4a724bd2bad53b4972c8d5c70" [label=""];
  "sha256:c144a19a355454b922ed8faa0a78eb51490fb0c4a724bd2bad53b4972c8d5c70" -> "sha256:892197b11842075b1168a554095f404c2d4b97ff6dd3e28aa76ba44e7d8cec52" [label=""];
  "sha256:892197b11842075b1168a554095f404c2d4b97ff6dd3e28aa76ba44e7d8cec52" -> "sha256:5691a0f4e93dddf7845a28159c56c10292ead89298193b797f89d7487a10f720" [label=""];
  "sha256:5691a0f4e93dddf7845a28159c56c10292ead89298193b797f89d7487a10f720" -> "sha256:87cf793a0dc0caef42854f483e9d245d2f4911404c9d991c28c3889a61383b29" [label=""];
}

