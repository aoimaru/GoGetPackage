[app/sources/350243405.Dockerfile]
digraph {
  "sha256:935c722fbac4881970f7705a46531ebd313d4be3362928c34c103a6f8cee1ae0" [label="docker-image://quay.io/pypa/manylinux1_x86_64@sha256:a18711aa1ffe3e65e489d808d17f68f5c75c9a0275d657aa52aa04bc79cdfddb" shape="ellipse"];
  "sha256:02e88e35dfdf7516aa25a9658e1e67024a04c27d12c4701fda27074be43f99bb" [label="/bin/sh -c sed -i 's/enabled=1/enabled=0/' /etc/yum/pluginconf.d/fastestmirror.conf     && sed -i 's/mirrorlist/#mirrorlist/' /etc/yum.repos.d/CentOS-Base.repo     && sed -i 's|#baseurl=http://mirror.centos.org/centos/$releasever|baseurl=http://vault.centos.org/5.11|' /etc/yum.repos.d/CentOS-Base.repo     && sed -i 's/^/#/' /etc/yum.repos.d/libselinux.repo" shape="box"];
  "sha256:94316d7424635e8a94ecf62c81c668527a9c3b350bd30c2aa33768b66886a666" [label="/bin/sh -c yum update -y && yum install -y json-c-devel zlib-devel expat-devel" shape="box"];
  "sha256:edbd23841d41bb0494655a3bd384a2b7ac9ab2d3d416bd6bb15ce5decc5faa59" [label="/bin/sh -c /opt/python/cp27-cp27m/bin/pip install --pre \"rasterio>=1.0a11\" --only-binary rasterio" shape="box"];
  "sha256:6f85cf249b7caca074bd05b311acc53c6a4834dd305263a715929bdaa0d220eb" [label="/bin/sh -c /opt/python/cp27-cp27mu/bin/pip install --pre \"rasterio>=1.0a11\" --only-binary rasterio" shape="box"];
  "sha256:4770c49e90e7fea5078cebd7be31696d88046a5c1f4b7048e16d165a5c1b3312" [label="/bin/sh -c /opt/python/cp34-cp34m/bin/pip install --pre \"rasterio>=1.0a11\" --only-binary rasterio" shape="box"];
  "sha256:409adb5612c3dd9733f48dcdf3a931cb5588361357434240f857baf772f05854" [label="/bin/sh -c /opt/python/cp35-cp35m/bin/pip install --pre \"rasterio>=1.0a11\" --only-binary rasterio" shape="box"];
  "sha256:3c0d599349fd68386568bb78aaf811e03a98ddbcd7efab8c5ff62aec234a2ffe" [label="/bin/sh -c /opt/python/cp36-cp36m/bin/pip install --pre \"rasterio>=1.0a11\" --only-binary rasterio" shape="box"];
  "sha256:be620ffcb00243a9d8c702e015448d1b092eb24185499147bc38db296c0fae27" [label="local://context" shape="ellipse"];
  "sha256:2a99f308391ea7a58b64d6bd7bddbbaba4b9c68e4853eac8ea7d4d0d663fbc2d" [label="copy{src=/requirements-dev.txt, dest=/requirements-dev.txt}" shape="note"];
  "sha256:dd7989d3afdb26cd9a55160dfac37492f83ca49bdc5afd1ad2e73cadc6e1eb68" [label="/bin/sh -c /opt/python/cp27-cp27m/bin/pip install -r /requirements-dev.txt" shape="box"];
  "sha256:21f9d9932b5c7fd107abe892ca8a17bf08cde934b1269eb76b8bbc3242177fe8" [label="/bin/sh -c /opt/python/cp27-cp27mu/bin/pip install -r /requirements-dev.txt" shape="box"];
  "sha256:d849379ec3ff182cce231751179ec7b224e44bfcd08815fa23a6427c0286aabe" [label="/bin/sh -c /opt/python/cp34-cp34m/bin/pip install -r /requirements-dev.txt" shape="box"];
  "sha256:5cd9ff8b869af9a8e973a4403c7a4ab5481c1b6ccd405be557ebc7c543032604" [label="/bin/sh -c /opt/python/cp35-cp35m/bin/pip install -r /requirements-dev.txt" shape="box"];
  "sha256:7d49b410e7c0f1ef638d71eccb4b39c8c83c85bf02ab2e4147282c24a7d69e8c" [label="/bin/sh -c /opt/python/cp36-cp36m/bin/pip install -r /requirements-dev.txt" shape="box"];
  "sha256:4cf4294f24c5e4cf1b7b8cf9fca527574985de19bb8b7b182b3d9f9d5f316f72" [label="mkdir{path=/src}" shape="note"];
  "sha256:56a0dc635b1509af37bd4bb8dc06ff5d2d355f28af558618fc8abec88cd9e07c" [label="sha256:56a0dc635b1509af37bd4bb8dc06ff5d2d355f28af558618fc8abec88cd9e07c" shape="plaintext"];
  "sha256:935c722fbac4881970f7705a46531ebd313d4be3362928c34c103a6f8cee1ae0" -> "sha256:02e88e35dfdf7516aa25a9658e1e67024a04c27d12c4701fda27074be43f99bb" [label=""];
  "sha256:02e88e35dfdf7516aa25a9658e1e67024a04c27d12c4701fda27074be43f99bb" -> "sha256:94316d7424635e8a94ecf62c81c668527a9c3b350bd30c2aa33768b66886a666" [label=""];
  "sha256:94316d7424635e8a94ecf62c81c668527a9c3b350bd30c2aa33768b66886a666" -> "sha256:edbd23841d41bb0494655a3bd384a2b7ac9ab2d3d416bd6bb15ce5decc5faa59" [label=""];
  "sha256:edbd23841d41bb0494655a3bd384a2b7ac9ab2d3d416bd6bb15ce5decc5faa59" -> "sha256:6f85cf249b7caca074bd05b311acc53c6a4834dd305263a715929bdaa0d220eb" [label=""];
  "sha256:6f85cf249b7caca074bd05b311acc53c6a4834dd305263a715929bdaa0d220eb" -> "sha256:4770c49e90e7fea5078cebd7be31696d88046a5c1f4b7048e16d165a5c1b3312" [label=""];
  "sha256:4770c49e90e7fea5078cebd7be31696d88046a5c1f4b7048e16d165a5c1b3312" -> "sha256:409adb5612c3dd9733f48dcdf3a931cb5588361357434240f857baf772f05854" [label=""];
  "sha256:409adb5612c3dd9733f48dcdf3a931cb5588361357434240f857baf772f05854" -> "sha256:3c0d599349fd68386568bb78aaf811e03a98ddbcd7efab8c5ff62aec234a2ffe" [label=""];
  "sha256:3c0d599349fd68386568bb78aaf811e03a98ddbcd7efab8c5ff62aec234a2ffe" -> "sha256:2a99f308391ea7a58b64d6bd7bddbbaba4b9c68e4853eac8ea7d4d0d663fbc2d" [label=""];
  "sha256:be620ffcb00243a9d8c702e015448d1b092eb24185499147bc38db296c0fae27" -> "sha256:2a99f308391ea7a58b64d6bd7bddbbaba4b9c68e4853eac8ea7d4d0d663fbc2d" [label=""];
  "sha256:2a99f308391ea7a58b64d6bd7bddbbaba4b9c68e4853eac8ea7d4d0d663fbc2d" -> "sha256:dd7989d3afdb26cd9a55160dfac37492f83ca49bdc5afd1ad2e73cadc6e1eb68" [label=""];
  "sha256:dd7989d3afdb26cd9a55160dfac37492f83ca49bdc5afd1ad2e73cadc6e1eb68" -> "sha256:21f9d9932b5c7fd107abe892ca8a17bf08cde934b1269eb76b8bbc3242177fe8" [label=""];
  "sha256:21f9d9932b5c7fd107abe892ca8a17bf08cde934b1269eb76b8bbc3242177fe8" -> "sha256:d849379ec3ff182cce231751179ec7b224e44bfcd08815fa23a6427c0286aabe" [label=""];
  "sha256:d849379ec3ff182cce231751179ec7b224e44bfcd08815fa23a6427c0286aabe" -> "sha256:5cd9ff8b869af9a8e973a4403c7a4ab5481c1b6ccd405be557ebc7c543032604" [label=""];
  "sha256:5cd9ff8b869af9a8e973a4403c7a4ab5481c1b6ccd405be557ebc7c543032604" -> "sha256:7d49b410e7c0f1ef638d71eccb4b39c8c83c85bf02ab2e4147282c24a7d69e8c" [label=""];
  "sha256:7d49b410e7c0f1ef638d71eccb4b39c8c83c85bf02ab2e4147282c24a7d69e8c" -> "sha256:4cf4294f24c5e4cf1b7b8cf9fca527574985de19bb8b7b182b3d9f9d5f316f72" [label=""];
  "sha256:4cf4294f24c5e4cf1b7b8cf9fca527574985de19bb8b7b182b3d9f9d5f316f72" -> "sha256:56a0dc635b1509af37bd4bb8dc06ff5d2d355f28af558618fc8abec88cd9e07c" [label=""];
}

