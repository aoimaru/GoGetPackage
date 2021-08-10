[app/sources/337127642.Dockerfile]
digraph {
  "sha256:d7600537f603dea2251208fff2d5e833f29c7851362691b0bcb6a213395d9a2a" [label="docker-image://docker.io/openrasp/php5.4:latest" shape="ellipse"];
  "sha256:c8ab0bf71f92dec2f62e31d76f61ddd498f3d8d2e54a0a27d35c6cf58b6a5ad5" [label="/bin/sh -c rm -rf \"$install_path\" \t&& curl \"$install_url\" -o package.zip \t&& unzip -o -q package.zip \t&& rm -f package.zip \t&& mv mallbuilderv5.8 \"$install_path\" \t&& touch \"$install_path\"/install/install.lock \t&& chmod 777 -R \"$install_path\"" shape="box"];
  "sha256:c599fe6113833f393dbf4746edb9fb30e7826e4953468ec4b6ac8b870ced4053" [label="local://context" shape="ellipse"];
  "sha256:833cbb589dc28ba66aa075b9b74e8eec00e72ca5a0427ba0bca60a28875fd8e0" [label="copy{src=/config/*, dest=/var/www/html/config/}" shape="note"];
  "sha256:f91c19e2424ee91abf2988d6db6c940f045901645e64d74dda59a6c492f46904" [label="copy{src=/mysql.tar.bz2, dest=/tmp/}" shape="note"];
  "sha256:37c4041a911d0f2147628f9577f1ce1251b73dc67495c6e534fd7471d3982c51" [label="/bin/sh -c tar -xf /tmp/mysql.tar.bz2 -C /var/lib/mysql \t&& chown mysql -R /var/lib/mysql \t&& rm -f /tmp/mysql.tar.bz2" shape="box"];
  "sha256:615ba943e4a9884d12735a53f54e14df3357db278357593ab2179f2f146e0137" [label="sha256:615ba943e4a9884d12735a53f54e14df3357db278357593ab2179f2f146e0137" shape="plaintext"];
  "sha256:d7600537f603dea2251208fff2d5e833f29c7851362691b0bcb6a213395d9a2a" -> "sha256:c8ab0bf71f92dec2f62e31d76f61ddd498f3d8d2e54a0a27d35c6cf58b6a5ad5" [label=""];
  "sha256:c8ab0bf71f92dec2f62e31d76f61ddd498f3d8d2e54a0a27d35c6cf58b6a5ad5" -> "sha256:833cbb589dc28ba66aa075b9b74e8eec00e72ca5a0427ba0bca60a28875fd8e0" [label=""];
  "sha256:c599fe6113833f393dbf4746edb9fb30e7826e4953468ec4b6ac8b870ced4053" -> "sha256:833cbb589dc28ba66aa075b9b74e8eec00e72ca5a0427ba0bca60a28875fd8e0" [label=""];
  "sha256:833cbb589dc28ba66aa075b9b74e8eec00e72ca5a0427ba0bca60a28875fd8e0" -> "sha256:f91c19e2424ee91abf2988d6db6c940f045901645e64d74dda59a6c492f46904" [label=""];
  "sha256:c599fe6113833f393dbf4746edb9fb30e7826e4953468ec4b6ac8b870ced4053" -> "sha256:f91c19e2424ee91abf2988d6db6c940f045901645e64d74dda59a6c492f46904" [label=""];
  "sha256:f91c19e2424ee91abf2988d6db6c940f045901645e64d74dda59a6c492f46904" -> "sha256:37c4041a911d0f2147628f9577f1ce1251b73dc67495c6e534fd7471d3982c51" [label=""];
  "sha256:37c4041a911d0f2147628f9577f1ce1251b73dc67495c6e534fd7471d3982c51" -> "sha256:615ba943e4a9884d12735a53f54e14df3357db278357593ab2179f2f146e0137" [label=""];
}

