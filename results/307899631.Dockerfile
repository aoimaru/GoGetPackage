[app/sources/307899631.Dockerfile]
digraph {
  "sha256:2a07ac73bce574be43ccf30170ec5b30af856e874f42fb2ef5c545c394c1e1aa" [label="docker-image://docker.io/continuumio/miniconda3:latest" shape="ellipse"];
  "sha256:7fcdf6ae4bc08752fd3ae629cd06c0fbe197410d5b530c67eee6ff926cdd9c4f" [label="/bin/sh -c echo \"deb http://http.debian.net/debian jessie-backports main\" >> /etc/apt/sources.list" shape="box"];
  "sha256:a4ee496a1b0fa7ad7940927d5e25817bc46b209664c10226ac868c1d2258e6f4" [label="/bin/sh -c apt-get update && apt-get install -y \tg++ \topenjdk-8-jre-headless \tlibpng-dev     libfreetype6-dev" shape="box"];
  "sha256:5f72af6d764915d3230acc4f7f12862bcf5f1c24e64e52074dfe0f5444330401" [label="local://context" shape="ellipse"];
  "sha256:a9e1e1b55aee9c88a8d8a535f05b174e7cab4a3074aba7dbf383e2026b08b55f" [label="copy{src=/scripts/bayesianpy, dest=/scripts/bayesianpy}" shape="note"];
  "sha256:5c96190e66b81135f150d9a0c5c1f29140172ebc08b9e0e85c07872a8f47f897" [label="mkdir{path=/scripts/bayesianpy}" shape="note"];
  "sha256:79155756950fccacb572229a6a876293a6575dd4accc9909395654012c1578b4" [label="/bin/sh -c pip install -e ." shape="box"];
  "sha256:4e9cc44847a6617d5f862eec0ac1400e67a11e74903ab551333b7fecb3cb9e8b" [label="sha256:4e9cc44847a6617d5f862eec0ac1400e67a11e74903ab551333b7fecb3cb9e8b" shape="plaintext"];
  "sha256:2a07ac73bce574be43ccf30170ec5b30af856e874f42fb2ef5c545c394c1e1aa" -> "sha256:7fcdf6ae4bc08752fd3ae629cd06c0fbe197410d5b530c67eee6ff926cdd9c4f" [label=""];
  "sha256:7fcdf6ae4bc08752fd3ae629cd06c0fbe197410d5b530c67eee6ff926cdd9c4f" -> "sha256:a4ee496a1b0fa7ad7940927d5e25817bc46b209664c10226ac868c1d2258e6f4" [label=""];
  "sha256:a4ee496a1b0fa7ad7940927d5e25817bc46b209664c10226ac868c1d2258e6f4" -> "sha256:a9e1e1b55aee9c88a8d8a535f05b174e7cab4a3074aba7dbf383e2026b08b55f" [label=""];
  "sha256:5f72af6d764915d3230acc4f7f12862bcf5f1c24e64e52074dfe0f5444330401" -> "sha256:a9e1e1b55aee9c88a8d8a535f05b174e7cab4a3074aba7dbf383e2026b08b55f" [label=""];
  "sha256:a9e1e1b55aee9c88a8d8a535f05b174e7cab4a3074aba7dbf383e2026b08b55f" -> "sha256:5c96190e66b81135f150d9a0c5c1f29140172ebc08b9e0e85c07872a8f47f897" [label=""];
  "sha256:5c96190e66b81135f150d9a0c5c1f29140172ebc08b9e0e85c07872a8f47f897" -> "sha256:79155756950fccacb572229a6a876293a6575dd4accc9909395654012c1578b4" [label=""];
  "sha256:79155756950fccacb572229a6a876293a6575dd4accc9909395654012c1578b4" -> "sha256:4e9cc44847a6617d5f862eec0ac1400e67a11e74903ab551333b7fecb3cb9e8b" [label=""];
}

