[app/sources/133029894.Dockerfile]
digraph {
  "sha256:6bc57c2c760d2925db1071e5d869736101f9680b31e3a1035bd9ec988292474a" [label="docker-image://docker.io/pveber/bistro-base:stretch" shape="ellipse"];
  "sha256:73fffd08138429446f4a0712a161a2b5d59a579cd70e6e8a42dcb494216ed3bb" [label="/bin/sh -c apt-get update && apt-get install -y --allow-unauthenticated     cmake xxd" shape="box"];
  "sha256:c82fa8c780e5d72f7a9c866b4bf94c037c892b5d998edae4cfba8dd4f8030eee" [label="/bin/sh -c wget \"https://github.com/soedinglab/MMseqs2/archive/1-c7a89.tar.gz\" &&     tar xvfz 1-c7a89.tar.gz" shape="box"];
  "sha256:846910acaf4ff40815f7be253db76ac28079a866e2209c6a2f3ac82b22207600" [label="/bin/sh -c cd MMseqs2-1-c7a89 &&     mkdir build &&     cd build &&     cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=. .. &&     make &&     make install &&     cp bin/mmseqs /usr/bin" shape="box"];
  "sha256:623e31aa3ddef0856e7106c701d79d92af55bd758b8438d65b83914e9f80e852" [label="sha256:623e31aa3ddef0856e7106c701d79d92af55bd758b8438d65b83914e9f80e852" shape="plaintext"];
  "sha256:6bc57c2c760d2925db1071e5d869736101f9680b31e3a1035bd9ec988292474a" -> "sha256:73fffd08138429446f4a0712a161a2b5d59a579cd70e6e8a42dcb494216ed3bb" [label=""];
  "sha256:73fffd08138429446f4a0712a161a2b5d59a579cd70e6e8a42dcb494216ed3bb" -> "sha256:c82fa8c780e5d72f7a9c866b4bf94c037c892b5d998edae4cfba8dd4f8030eee" [label=""];
  "sha256:c82fa8c780e5d72f7a9c866b4bf94c037c892b5d998edae4cfba8dd4f8030eee" -> "sha256:846910acaf4ff40815f7be253db76ac28079a866e2209c6a2f3ac82b22207600" [label=""];
  "sha256:846910acaf4ff40815f7be253db76ac28079a866e2209c6a2f3ac82b22207600" -> "sha256:623e31aa3ddef0856e7106c701d79d92af55bd758b8438d65b83914e9f80e852" [label=""];
}

