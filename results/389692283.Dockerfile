[app/sources/389692283.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:35f13da8dba3652b2dcc518b983c89381f2877079085b425cf6b1be85be20228" [label="/bin/sh -c export DEBIAN_FRONTEND=noninteractive" shape="box"];
  "sha256:ebe18798de86c3f685b286e96fee3eb2560dacbcac162adaed07320eb8765702" [label="/bin/sh -c dpkg-divert --local --rename --add /sbin/initctl" shape="box"];
  "sha256:c416e10478743dec6ed172758c1a06b0783dee8e4773b261fbbb30162aa349ba" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:83f5465906354f733039c88049219275d2a1c56d61a3a39bf887ae20f6c86f9b" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:a2b9e6302e623e2c807bf30ac3cc2caff36db6e968c48e3f329268e99e554a4c" [label="/bin/sh -c if [ ! -f geonetwork.jar ]; then \twget -O geonetwork.jar http://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v3.0.3/geonetwork-install-3.0.3-0.jar/download; \tfi;" shape="box"];
  "sha256:4a43641fd3317f6f2a4b7942d83f843a8566d114df5963f04d3296bdddc09259" [label="/bin/sh -c wget -O install.xml https://raw.githubusercontent.com/geonetwork/core-geonetwork/develop/docker/install.xml" shape="box"];
  "sha256:6397a7f7eb6241dc4340c35f01a3bc8fc429d576acec4d7aeea685b9e677eaeb" [label="/bin/sh -c java -jar geonetwork.jar install.xml" shape="box"];
  "sha256:f53065a9532ef8673ff8e9f6f80b050d6704b1514589036a00a5962a64bc525d" [label="mkdir{path=/opt/geonetwork/bin}" shape="note"];
  "sha256:70e69d4332a80f8de845bb274096171131a309ac39ee94aa8a225bee60ee65f0" [label="sha256:70e69d4332a80f8de845bb274096171131a309ac39ee94aa8a225bee60ee65f0" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:35f13da8dba3652b2dcc518b983c89381f2877079085b425cf6b1be85be20228" [label=""];
  "sha256:35f13da8dba3652b2dcc518b983c89381f2877079085b425cf6b1be85be20228" -> "sha256:ebe18798de86c3f685b286e96fee3eb2560dacbcac162adaed07320eb8765702" [label=""];
  "sha256:ebe18798de86c3f685b286e96fee3eb2560dacbcac162adaed07320eb8765702" -> "sha256:c416e10478743dec6ed172758c1a06b0783dee8e4773b261fbbb30162aa349ba" [label=""];
  "sha256:c416e10478743dec6ed172758c1a06b0783dee8e4773b261fbbb30162aa349ba" -> "sha256:83f5465906354f733039c88049219275d2a1c56d61a3a39bf887ae20f6c86f9b" [label=""];
  "sha256:83f5465906354f733039c88049219275d2a1c56d61a3a39bf887ae20f6c86f9b" -> "sha256:a2b9e6302e623e2c807bf30ac3cc2caff36db6e968c48e3f329268e99e554a4c" [label=""];
  "sha256:a2b9e6302e623e2c807bf30ac3cc2caff36db6e968c48e3f329268e99e554a4c" -> "sha256:4a43641fd3317f6f2a4b7942d83f843a8566d114df5963f04d3296bdddc09259" [label=""];
  "sha256:4a43641fd3317f6f2a4b7942d83f843a8566d114df5963f04d3296bdddc09259" -> "sha256:6397a7f7eb6241dc4340c35f01a3bc8fc429d576acec4d7aeea685b9e677eaeb" [label=""];
  "sha256:6397a7f7eb6241dc4340c35f01a3bc8fc429d576acec4d7aeea685b9e677eaeb" -> "sha256:f53065a9532ef8673ff8e9f6f80b050d6704b1514589036a00a5962a64bc525d" [label=""];
  "sha256:f53065a9532ef8673ff8e9f6f80b050d6704b1514589036a00a5962a64bc525d" -> "sha256:70e69d4332a80f8de845bb274096171131a309ac39ee94aa8a225bee60ee65f0" [label=""];
}

