[app/sources/442976664.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:17442c5ae8be5e63030e9aab5b137ff69c3e7a476d754cdf08c30647387f7180" [label="/bin/sh -c yum install -y perf traceroute wget curl iputils jq gdb sysstat procps htop vim emacs git findutils strace ltrace trace-cmd iftop iotop dstat git maven tcpdump mtr bind-utils tar zip nc" shape="box"];
  "sha256:e6b7aeda1d40d63a319e79d29fc2569eea67e845d09ec76cbd7efa423c784ea7" [label="/bin/sh -c git clone --depth 1 https://github.com/brendangregg/perf-tools /root/perf-tools" shape="box"];
  "sha256:d51fe332da35ede2578e334b45017f8ae9e21cc73bbc6a1716964fb042d784e0" [label="/bin/sh -c git clone --depth 1 https://github.com/feldoh/guano /root/guano" shape="box"];
  "sha256:bebdf738091bff2f82bd43708d47ebe310091f019e6c9399543406007532c874" [label="/bin/sh -c git clone --depth 1 https://github.com/brendangregg/FlameGraph /root/FlameGraph" shape="box"];
  "sha256:e191b942185db767e27068521d5548e3e241682dc1544530d91a80ab3885c2b3" [label="/bin/sh -c mvn package -f /root/guano/" shape="box"];
  "sha256:87b602d9b01eefe34acb2a38d7121ba91e36a1c39dbd2fce7d8ed90e43ee9a85" [label="/bin/sh -c find /root/perf-tools/** -executable -type f -exec cp {} /usr/local/bin/ \\;" shape="box"];
  "sha256:a34fe985ce41387c4804a4571315ee20917ae04dfcaf00acea092d741fe5b27e" [label="/bin/sh -c bash -c 'echo alias guano=\\\"java -jar /root/guano/target/guano-0.1a.jar\\\" >> /root/.bashrc'" shape="box"];
  "sha256:5666c52064fbfa635e79de82ee28e5e3a5a87a3114a323cfd19eb998e471da9b" [label="/bin/sh -c bash -c 'echo mount -t debugfs nodev /sys/kernel/debug >> /root/.bashrc'" shape="box"];
  "sha256:ae8c1f6c0eae2e21b0e9c988c05163d5e22ea566716c3b645fe9eb9a2885f9fb" [label="/bin/sh -c ln -s /media/root/opt/mesosphere/ /opt/mesosphere" shape="box"];
  "sha256:583ab2bae1a1f65a99677c7bfde412e577950be2c83193622f3218f355e80f1c" [label="local://context" shape="ellipse"];
  "sha256:682d8d46ea5c2e5da222fb323b199ab186d8dc6ba06e889ac3e7e1a973ba381a" [label="copy{src=/performance-guide.txt, dest=/root/}" shape="note"];
  "sha256:46300d49f4a701ccdab33d5ecb6e022a78d44cda3d61f827f6dae7bfeca264c9" [label="sha256:46300d49f4a701ccdab33d5ecb6e022a78d44cda3d61f827f6dae7bfeca264c9" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:17442c5ae8be5e63030e9aab5b137ff69c3e7a476d754cdf08c30647387f7180" [label=""];
  "sha256:17442c5ae8be5e63030e9aab5b137ff69c3e7a476d754cdf08c30647387f7180" -> "sha256:e6b7aeda1d40d63a319e79d29fc2569eea67e845d09ec76cbd7efa423c784ea7" [label=""];
  "sha256:e6b7aeda1d40d63a319e79d29fc2569eea67e845d09ec76cbd7efa423c784ea7" -> "sha256:d51fe332da35ede2578e334b45017f8ae9e21cc73bbc6a1716964fb042d784e0" [label=""];
  "sha256:d51fe332da35ede2578e334b45017f8ae9e21cc73bbc6a1716964fb042d784e0" -> "sha256:bebdf738091bff2f82bd43708d47ebe310091f019e6c9399543406007532c874" [label=""];
  "sha256:bebdf738091bff2f82bd43708d47ebe310091f019e6c9399543406007532c874" -> "sha256:e191b942185db767e27068521d5548e3e241682dc1544530d91a80ab3885c2b3" [label=""];
  "sha256:e191b942185db767e27068521d5548e3e241682dc1544530d91a80ab3885c2b3" -> "sha256:87b602d9b01eefe34acb2a38d7121ba91e36a1c39dbd2fce7d8ed90e43ee9a85" [label=""];
  "sha256:87b602d9b01eefe34acb2a38d7121ba91e36a1c39dbd2fce7d8ed90e43ee9a85" -> "sha256:a34fe985ce41387c4804a4571315ee20917ae04dfcaf00acea092d741fe5b27e" [label=""];
  "sha256:a34fe985ce41387c4804a4571315ee20917ae04dfcaf00acea092d741fe5b27e" -> "sha256:5666c52064fbfa635e79de82ee28e5e3a5a87a3114a323cfd19eb998e471da9b" [label=""];
  "sha256:5666c52064fbfa635e79de82ee28e5e3a5a87a3114a323cfd19eb998e471da9b" -> "sha256:ae8c1f6c0eae2e21b0e9c988c05163d5e22ea566716c3b645fe9eb9a2885f9fb" [label=""];
  "sha256:ae8c1f6c0eae2e21b0e9c988c05163d5e22ea566716c3b645fe9eb9a2885f9fb" -> "sha256:682d8d46ea5c2e5da222fb323b199ab186d8dc6ba06e889ac3e7e1a973ba381a" [label=""];
  "sha256:583ab2bae1a1f65a99677c7bfde412e577950be2c83193622f3218f355e80f1c" -> "sha256:682d8d46ea5c2e5da222fb323b199ab186d8dc6ba06e889ac3e7e1a973ba381a" [label=""];
  "sha256:682d8d46ea5c2e5da222fb323b199ab186d8dc6ba06e889ac3e7e1a973ba381a" -> "sha256:46300d49f4a701ccdab33d5ecb6e022a78d44cda3d61f827f6dae7bfeca264c9" [label=""];
}

