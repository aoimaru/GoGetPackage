[app/sources/423843755.Dockerfile]
digraph {
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" [label="docker-image://docker.io/library/fedora:28" shape="ellipse"];
  "sha256:4dbedd9d2a084ee05d1d47163c84e869f2b43fef0ad014209cf3a849e6ea5976" [label="/bin/sh -c dnf -y update" shape="box"];
  "sha256:a6562eee982449b9e10acc1b4e197669f2dea71e63fbc88abb4cd57d09e60b5f" [label="/bin/sh -c dnf -y install wget libgomp openblas-devel pandoc" shape="box"];
  "sha256:a6bf39ad997a5bd9a9f008e912952271493b7de950c3ec9ecb2787b1ea925d78" [label="/bin/sh -c dnf clean all" shape="box"];
  "sha256:8117016ec88fe23095e95a77e0cce9aeedebc455052e4d0709050d805776259e" [label="/bin/sh -c dnf -y install gcc redhat-rpm-config gcc-c++ python3-devel" shape="box"];
  "sha256:20efd8252912e44b2cff5e1a186fbdef0d2982ad929fac256b130e448937d311" [label="/bin/sh -c pip3 install 'ipython==7.4.0' jupyter 'pyscf==1.6' twine     numpy 'scipy==1.2' matplotlib setuptools wheel sphinx py3Dmol     sphinx_rtd_theme nbsphinx" shape="box"];
  "sha256:d0c5d961a984e34c6e5d7e805ef7e0d1b373b8223c900bdae75ebcbe58c55820" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:e01a0768aeb0c7f5e9062963cd8c289724b1a20a345245d7ae25ba49e11299ce" [label="/bin/sh -c dnf clean all" shape="box"];
  "sha256:ce8027284c30b3838981fb8466a0b010760eed6eee12091cf290dc71a3cfeb4d" [label="/bin/sh -c rpm --import https://packages.microsoft.com/keys/microsoft.asc" shape="box"];
  "sha256:32e2d35b951b6065d218b4290e17ee68d1d6dfdafe2f4644a8befdb03cd4e2d9" [label="/bin/sh -c wget -q https://packages.microsoft.com/config/fedora/27/prod.repo" shape="box"];
  "sha256:b12fe36e9447ec08d9ab3e67a7789a3290c32020901f88e0ec876d2bdd5684c2" [label="/bin/sh -c mv prod.repo /etc/yum.repos.d/microsoft-prod.repo" shape="box"];
  "sha256:0c8067dfee7601673cffd1b40e0faadf0e595bb4a7cf407277fc03a5a2f372cd" [label="/bin/sh -c chown root:root /etc/yum.repos.d/microsoft-prod.repo" shape="box"];
  "sha256:d215360fe0712fe41685122b36d964ba74016104c7bfb771e3f1dbcc848855bf" [label="/bin/sh -c dnf install -y dotnet-sdk-2.2" shape="box"];
  "sha256:d9759550d12dab7fdb03acf3d021bc1af6f56bb708199f455ca7a7ef937cf588" [label="/bin/sh -c dotnet tool install -g Microsoft.Quantum.IQSharp --version 0.7.1905.3109" shape="box"];
  "sha256:b39368145c1873e3b7fffc64f3b56737cd32c9b6e59caccf8f406643ddbad24b" [label="/bin/sh -c /root/.dotnet/tools/dotnet-iqsharp install --user" shape="box"];
  "sha256:6c16a07d54c91d4b68a45874c7f668ada17f9a10e4d65aecfc2b3774d97823c2" [label="/bin/sh -c pip3 install qsharp==0.7.1905.3109" shape="box"];
  "sha256:840106011a5305001cc5bb8a6b0d9ece46f077dc6ab8570009b566533c7a72a5" [label="mkdir{path=/root}" shape="note"];
  "sha256:8d0c3208f809f0dba4118e3c6f31f3b63d3910626dc0408c27b3ff67c210d962" [label="sha256:8d0c3208f809f0dba4118e3c6f31f3b63d3910626dc0408c27b3ff67c210d962" shape="plaintext"];
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" -> "sha256:4dbedd9d2a084ee05d1d47163c84e869f2b43fef0ad014209cf3a849e6ea5976" [label=""];
  "sha256:4dbedd9d2a084ee05d1d47163c84e869f2b43fef0ad014209cf3a849e6ea5976" -> "sha256:a6562eee982449b9e10acc1b4e197669f2dea71e63fbc88abb4cd57d09e60b5f" [label=""];
  "sha256:a6562eee982449b9e10acc1b4e197669f2dea71e63fbc88abb4cd57d09e60b5f" -> "sha256:a6bf39ad997a5bd9a9f008e912952271493b7de950c3ec9ecb2787b1ea925d78" [label=""];
  "sha256:a6bf39ad997a5bd9a9f008e912952271493b7de950c3ec9ecb2787b1ea925d78" -> "sha256:8117016ec88fe23095e95a77e0cce9aeedebc455052e4d0709050d805776259e" [label=""];
  "sha256:8117016ec88fe23095e95a77e0cce9aeedebc455052e4d0709050d805776259e" -> "sha256:20efd8252912e44b2cff5e1a186fbdef0d2982ad929fac256b130e448937d311" [label=""];
  "sha256:20efd8252912e44b2cff5e1a186fbdef0d2982ad929fac256b130e448937d311" -> "sha256:d0c5d961a984e34c6e5d7e805ef7e0d1b373b8223c900bdae75ebcbe58c55820" [label=""];
  "sha256:d0c5d961a984e34c6e5d7e805ef7e0d1b373b8223c900bdae75ebcbe58c55820" -> "sha256:e01a0768aeb0c7f5e9062963cd8c289724b1a20a345245d7ae25ba49e11299ce" [label=""];
  "sha256:e01a0768aeb0c7f5e9062963cd8c289724b1a20a345245d7ae25ba49e11299ce" -> "sha256:ce8027284c30b3838981fb8466a0b010760eed6eee12091cf290dc71a3cfeb4d" [label=""];
  "sha256:ce8027284c30b3838981fb8466a0b010760eed6eee12091cf290dc71a3cfeb4d" -> "sha256:32e2d35b951b6065d218b4290e17ee68d1d6dfdafe2f4644a8befdb03cd4e2d9" [label=""];
  "sha256:32e2d35b951b6065d218b4290e17ee68d1d6dfdafe2f4644a8befdb03cd4e2d9" -> "sha256:b12fe36e9447ec08d9ab3e67a7789a3290c32020901f88e0ec876d2bdd5684c2" [label=""];
  "sha256:b12fe36e9447ec08d9ab3e67a7789a3290c32020901f88e0ec876d2bdd5684c2" -> "sha256:0c8067dfee7601673cffd1b40e0faadf0e595bb4a7cf407277fc03a5a2f372cd" [label=""];
  "sha256:0c8067dfee7601673cffd1b40e0faadf0e595bb4a7cf407277fc03a5a2f372cd" -> "sha256:d215360fe0712fe41685122b36d964ba74016104c7bfb771e3f1dbcc848855bf" [label=""];
  "sha256:d215360fe0712fe41685122b36d964ba74016104c7bfb771e3f1dbcc848855bf" -> "sha256:d9759550d12dab7fdb03acf3d021bc1af6f56bb708199f455ca7a7ef937cf588" [label=""];
  "sha256:d9759550d12dab7fdb03acf3d021bc1af6f56bb708199f455ca7a7ef937cf588" -> "sha256:b39368145c1873e3b7fffc64f3b56737cd32c9b6e59caccf8f406643ddbad24b" [label=""];
  "sha256:b39368145c1873e3b7fffc64f3b56737cd32c9b6e59caccf8f406643ddbad24b" -> "sha256:6c16a07d54c91d4b68a45874c7f668ada17f9a10e4d65aecfc2b3774d97823c2" [label=""];
  "sha256:6c16a07d54c91d4b68a45874c7f668ada17f9a10e4d65aecfc2b3774d97823c2" -> "sha256:840106011a5305001cc5bb8a6b0d9ece46f077dc6ab8570009b566533c7a72a5" [label=""];
  "sha256:840106011a5305001cc5bb8a6b0d9ece46f077dc6ab8570009b566533c7a72a5" -> "sha256:8d0c3208f809f0dba4118e3c6f31f3b63d3910626dc0408c27b3ff67c210d962" [label=""];
}

