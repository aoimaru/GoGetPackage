[app/sources/254211286.Dockerfile]
digraph {
  "sha256:3ca6e4aec4c35bad6ad90119d26311a2d5221387a648f152e3a5960eb3a713ec" [label="docker-image://docker.io/base/archlinux:latest" shape="ellipse"];
  "sha256:1d54ea5fcf2fdc58bade6a1d7e48c986b4ad4c3d846644f917ca33f0f86cc245" [label="local://context" shape="ellipse"];
  "sha256:0ae0dbf1cbd5a29b59b67bdbbe61e36b6959ca0ee993d92f9f3c3201524fb14d" [label="copy{src=/base.txt, dest=/base.txt}" shape="note"];
  "sha256:1cb35cc777dd062bc9266c73445abfd1091c79d48fbdbf5470df310006e4925d" [label="copy{src=/dev_python27.txt, dest=/dev_python27.txt}" shape="note"];
  "sha256:0a84ceb44b2b3112e6b19a2ed0902cb3bb3ffcbf57dccd5651f1c80084bec6ad" [label="copy{src=/dev_python34.txt, dest=/dev_python34.txt}" shape="note"];
  "sha256:402f9417ef7f716717d6d1c52282ecbe303f37e6ccc80455034af3f5c83ae4a9" [label="/bin/sh -c pacman -Syyu --noconfirm python2 python gcc wget curl git openssl man man-pages" shape="box"];
  "sha256:4c3a5595adc22f4f9c2a63c7e741f90f72d9a343eecfb0d7dd797d359abd1fe3" [label="/bin/sh -c wget -O - https://bootstrap.pypa.io/get-pip.py | python2" shape="box"];
  "sha256:5aa8112e105a406ed1a7a39c65acc63e767f7eb107d214986c13c3566ef6944a" [label="/bin/sh -c wget -O - https://bootstrap.pypa.io/get-pip.py | python" shape="box"];
  "sha256:43e9ff644b3da6492ffdddc0e2907fd1e3b43de1fe19f58d10b77151ec4fc584" [label="/bin/sh -c pip2 install -r /dev_python27.txt" shape="box"];
  "sha256:a5f0abafa10f41e65bfe99047df06e1d4eaa0202123992026763ef4d922bd734" [label="/bin/sh -c pip install -r /dev_python34.txt" shape="box"];
  "sha256:99caf8da71e032cb0d18a8c8184f15d12fda153043902d05237f24473af32f0a" [label="/bin/sh -c pip2 install pudb" shape="box"];
  "sha256:c0e4a389f2dca0809e0d9d1cf74fac9f89db9075a7a15b1b52abfefa4ec21935" [label="/bin/sh -c pip install pudb" shape="box"];
  "sha256:ada20310cd3064cf336770d947617029fcaea0682bd57cda1954f6cbce4e1f71" [label="/bin/sh -c sed -i 's/seen_welcome = .\\+/seen_welcome = e999/' /root/.config/pudb/pudb.cfg" shape="box"];
  "sha256:66505f4a4799622151c8e1b139ceb649203994da2465992cd5f497c253baf7c0" [label="/bin/sh -c sed -i 's/line_numbers = .\\+/line_numbers = True/' /root/.config/pudb/pudb.cfg" shape="box"];
  "sha256:1668acfd6fe3874dc615d0021a80c100746603b66c5072867df774a90533f91a" [label="/bin/sh -c mkdir -p /etc/salt /srv/salt" shape="box"];
  "sha256:6b8c555c7c6e17d768a9e0cca13c2be915b18535ac8b97c11517211749e814d6" [label="sha256:6b8c555c7c6e17d768a9e0cca13c2be915b18535ac8b97c11517211749e814d6" shape="plaintext"];
  "sha256:3ca6e4aec4c35bad6ad90119d26311a2d5221387a648f152e3a5960eb3a713ec" -> "sha256:0ae0dbf1cbd5a29b59b67bdbbe61e36b6959ca0ee993d92f9f3c3201524fb14d" [label=""];
  "sha256:1d54ea5fcf2fdc58bade6a1d7e48c986b4ad4c3d846644f917ca33f0f86cc245" -> "sha256:0ae0dbf1cbd5a29b59b67bdbbe61e36b6959ca0ee993d92f9f3c3201524fb14d" [label=""];
  "sha256:0ae0dbf1cbd5a29b59b67bdbbe61e36b6959ca0ee993d92f9f3c3201524fb14d" -> "sha256:1cb35cc777dd062bc9266c73445abfd1091c79d48fbdbf5470df310006e4925d" [label=""];
  "sha256:1d54ea5fcf2fdc58bade6a1d7e48c986b4ad4c3d846644f917ca33f0f86cc245" -> "sha256:1cb35cc777dd062bc9266c73445abfd1091c79d48fbdbf5470df310006e4925d" [label=""];
  "sha256:1cb35cc777dd062bc9266c73445abfd1091c79d48fbdbf5470df310006e4925d" -> "sha256:0a84ceb44b2b3112e6b19a2ed0902cb3bb3ffcbf57dccd5651f1c80084bec6ad" [label=""];
  "sha256:1d54ea5fcf2fdc58bade6a1d7e48c986b4ad4c3d846644f917ca33f0f86cc245" -> "sha256:0a84ceb44b2b3112e6b19a2ed0902cb3bb3ffcbf57dccd5651f1c80084bec6ad" [label=""];
  "sha256:0a84ceb44b2b3112e6b19a2ed0902cb3bb3ffcbf57dccd5651f1c80084bec6ad" -> "sha256:402f9417ef7f716717d6d1c52282ecbe303f37e6ccc80455034af3f5c83ae4a9" [label=""];
  "sha256:402f9417ef7f716717d6d1c52282ecbe303f37e6ccc80455034af3f5c83ae4a9" -> "sha256:4c3a5595adc22f4f9c2a63c7e741f90f72d9a343eecfb0d7dd797d359abd1fe3" [label=""];
  "sha256:4c3a5595adc22f4f9c2a63c7e741f90f72d9a343eecfb0d7dd797d359abd1fe3" -> "sha256:5aa8112e105a406ed1a7a39c65acc63e767f7eb107d214986c13c3566ef6944a" [label=""];
  "sha256:5aa8112e105a406ed1a7a39c65acc63e767f7eb107d214986c13c3566ef6944a" -> "sha256:43e9ff644b3da6492ffdddc0e2907fd1e3b43de1fe19f58d10b77151ec4fc584" [label=""];
  "sha256:43e9ff644b3da6492ffdddc0e2907fd1e3b43de1fe19f58d10b77151ec4fc584" -> "sha256:a5f0abafa10f41e65bfe99047df06e1d4eaa0202123992026763ef4d922bd734" [label=""];
  "sha256:a5f0abafa10f41e65bfe99047df06e1d4eaa0202123992026763ef4d922bd734" -> "sha256:99caf8da71e032cb0d18a8c8184f15d12fda153043902d05237f24473af32f0a" [label=""];
  "sha256:99caf8da71e032cb0d18a8c8184f15d12fda153043902d05237f24473af32f0a" -> "sha256:c0e4a389f2dca0809e0d9d1cf74fac9f89db9075a7a15b1b52abfefa4ec21935" [label=""];
  "sha256:c0e4a389f2dca0809e0d9d1cf74fac9f89db9075a7a15b1b52abfefa4ec21935" -> "sha256:ada20310cd3064cf336770d947617029fcaea0682bd57cda1954f6cbce4e1f71" [label=""];
  "sha256:ada20310cd3064cf336770d947617029fcaea0682bd57cda1954f6cbce4e1f71" -> "sha256:66505f4a4799622151c8e1b139ceb649203994da2465992cd5f497c253baf7c0" [label=""];
  "sha256:66505f4a4799622151c8e1b139ceb649203994da2465992cd5f497c253baf7c0" -> "sha256:1668acfd6fe3874dc615d0021a80c100746603b66c5072867df774a90533f91a" [label=""];
  "sha256:1668acfd6fe3874dc615d0021a80c100746603b66c5072867df774a90533f91a" -> "sha256:6b8c555c7c6e17d768a9e0cca13c2be915b18535ac8b97c11517211749e814d6" [label=""];
}

