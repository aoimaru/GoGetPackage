[app/sources/266809364.Dockerfile]
digraph {
  "sha256:ba8f7abf75e387644eaf4cb6cc101b10ebe20c4aa07e23f1eb71c21f41753cb3" [label="docker-image://docker.io/openhorizon/jetson-tx1:latest" shape="ellipse"];
  "sha256:eba86c42be82d52e8c80e1c69a3c871fcce2bb66a0149be8c48ecb874901602a" [label="local://context" shape="ellipse"];
  "sha256:8cd0f2ed8f096eb7b4811e482b733826ecba27e4ac46e2288184d4e11e879f0a" [label="copy{src=/cuda-8-0-local.list, dest=/etc/apt/sources.list.d/}" shape="note"];
  "sha256:054b3ceb885dd5d7faba24b22190f4040e6ebe8e342f305f6d27bc87c084d46f" [label="/bin/sh -c cp -p /etc/apt/trusted.gpg /etc/apt/trusted.gpg.orig" shape="box"];
  "sha256:bfd33b768a8c614dc86825a922dd9abfb61e0e05d70dfd660b26cc72f0f33a78" [label="copy{src=/trusted.gpg, dest=/etc/apt/}" shape="note"];
  "sha256:79adf6d72bf0b96f4910163ba1af7a87dd999968e49d1e3e1446ecf3bc7d5c71" [label="mkdir{path=/var}" shape="note"];
  "sha256:b5c49465ed36786f68731802267e169b704b129165738ba342019e48ba623c0f" [label="/bin/sh -c curl http://AFED.http.sjc01.cdn.softlayer.net/jetson/cuda-repo-8-0-local.tgz | tar zxv" shape="box"];
  "sha256:f3558a7e61fd0b12ee02ed70f11d30f84a23bf0e1065e2297aafe3b081be3e2f" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:f0d5ab0c48d5ecec639864e6f71aab1bf31263b966fea215fa838b31c1a5ed52" [label="/bin/sh -c apt-get install -y cuda-core-8-0" shape="box"];
  "sha256:8ee4d740f466fb1af5c58bab0ea0d21a7df1f6da47fa815317322f58109da8c9" [label="/bin/sh -c ln -s /usr/lib/aarch64-linux-gnu/tegra/libcuda.so.1.1 /usr/lib/aarch64-linux-gnu/tegra/libcuda.so.1" shape="box"];
  "sha256:32cc41c3bf3d3e4a877b6413bace35583b00fd690490cbc7135c712c0207d273" [label="/bin/sh -c echo \"export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/aarch64-linux-gnu/tegra\" >> /root/.bashrc" shape="box"];
  "sha256:dc26e03858e33fc97c869c69ccde527f62c3484bc99df581f908c4b9fbe9e571" [label="/bin/sh -c rm -fr /tmp/*" shape="box"];
  "sha256:c31e19859fe74a11716a5f1f017d5276b31ec0e295300c3796ec975bbd7e6545" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:aca342d8c5a9dd7637b4680e938eec5655d61d92efaca7c7dc9d1a84981d9050" [label="/bin/sh -c rm -fr /var/cuda-repo-8-0-local" shape="box"];
  "sha256:26ae33ced49f9c02e4256cf30b296ca2d7f6ec2d3c69cf66d7e157701a2738ee" [label="/bin/sh -c rm /etc/apt/sources.list.d/cuda-8-0-local.list" shape="box"];
  "sha256:f72eaadb099b354aaee7b2bd22fa6ab4550b4994556c83d645148b9ab7d41691" [label="/bin/sh -c cp -p /etc/apt/trusted.gpg.orig /etc/apt/trusted.gpg && rm /etc/apt/trusted.gpg.orig" shape="box"];
  "sha256:0c4f6f90ad5d53ccc9a36c4f039f4660acdae8dc0debe91463af01914c7bdef9" [label="sha256:0c4f6f90ad5d53ccc9a36c4f039f4660acdae8dc0debe91463af01914c7bdef9" shape="plaintext"];
  "sha256:ba8f7abf75e387644eaf4cb6cc101b10ebe20c4aa07e23f1eb71c21f41753cb3" -> "sha256:8cd0f2ed8f096eb7b4811e482b733826ecba27e4ac46e2288184d4e11e879f0a" [label=""];
  "sha256:eba86c42be82d52e8c80e1c69a3c871fcce2bb66a0149be8c48ecb874901602a" -> "sha256:8cd0f2ed8f096eb7b4811e482b733826ecba27e4ac46e2288184d4e11e879f0a" [label=""];
  "sha256:8cd0f2ed8f096eb7b4811e482b733826ecba27e4ac46e2288184d4e11e879f0a" -> "sha256:054b3ceb885dd5d7faba24b22190f4040e6ebe8e342f305f6d27bc87c084d46f" [label=""];
  "sha256:054b3ceb885dd5d7faba24b22190f4040e6ebe8e342f305f6d27bc87c084d46f" -> "sha256:bfd33b768a8c614dc86825a922dd9abfb61e0e05d70dfd660b26cc72f0f33a78" [label=""];
  "sha256:eba86c42be82d52e8c80e1c69a3c871fcce2bb66a0149be8c48ecb874901602a" -> "sha256:bfd33b768a8c614dc86825a922dd9abfb61e0e05d70dfd660b26cc72f0f33a78" [label=""];
  "sha256:bfd33b768a8c614dc86825a922dd9abfb61e0e05d70dfd660b26cc72f0f33a78" -> "sha256:79adf6d72bf0b96f4910163ba1af7a87dd999968e49d1e3e1446ecf3bc7d5c71" [label=""];
  "sha256:79adf6d72bf0b96f4910163ba1af7a87dd999968e49d1e3e1446ecf3bc7d5c71" -> "sha256:b5c49465ed36786f68731802267e169b704b129165738ba342019e48ba623c0f" [label=""];
  "sha256:b5c49465ed36786f68731802267e169b704b129165738ba342019e48ba623c0f" -> "sha256:f3558a7e61fd0b12ee02ed70f11d30f84a23bf0e1065e2297aafe3b081be3e2f" [label=""];
  "sha256:f3558a7e61fd0b12ee02ed70f11d30f84a23bf0e1065e2297aafe3b081be3e2f" -> "sha256:f0d5ab0c48d5ecec639864e6f71aab1bf31263b966fea215fa838b31c1a5ed52" [label=""];
  "sha256:f0d5ab0c48d5ecec639864e6f71aab1bf31263b966fea215fa838b31c1a5ed52" -> "sha256:8ee4d740f466fb1af5c58bab0ea0d21a7df1f6da47fa815317322f58109da8c9" [label=""];
  "sha256:8ee4d740f466fb1af5c58bab0ea0d21a7df1f6da47fa815317322f58109da8c9" -> "sha256:32cc41c3bf3d3e4a877b6413bace35583b00fd690490cbc7135c712c0207d273" [label=""];
  "sha256:32cc41c3bf3d3e4a877b6413bace35583b00fd690490cbc7135c712c0207d273" -> "sha256:dc26e03858e33fc97c869c69ccde527f62c3484bc99df581f908c4b9fbe9e571" [label=""];
  "sha256:dc26e03858e33fc97c869c69ccde527f62c3484bc99df581f908c4b9fbe9e571" -> "sha256:c31e19859fe74a11716a5f1f017d5276b31ec0e295300c3796ec975bbd7e6545" [label=""];
  "sha256:c31e19859fe74a11716a5f1f017d5276b31ec0e295300c3796ec975bbd7e6545" -> "sha256:aca342d8c5a9dd7637b4680e938eec5655d61d92efaca7c7dc9d1a84981d9050" [label=""];
  "sha256:aca342d8c5a9dd7637b4680e938eec5655d61d92efaca7c7dc9d1a84981d9050" -> "sha256:26ae33ced49f9c02e4256cf30b296ca2d7f6ec2d3c69cf66d7e157701a2738ee" [label=""];
  "sha256:26ae33ced49f9c02e4256cf30b296ca2d7f6ec2d3c69cf66d7e157701a2738ee" -> "sha256:f72eaadb099b354aaee7b2bd22fa6ab4550b4994556c83d645148b9ab7d41691" [label=""];
  "sha256:f72eaadb099b354aaee7b2bd22fa6ab4550b4994556c83d645148b9ab7d41691" -> "sha256:0c4f6f90ad5d53ccc9a36c4f039f4660acdae8dc0debe91463af01914c7bdef9" [label=""];
}

