[app/sources/154035225.Dockerfile]
digraph {
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" [label="docker-image://docker.io/library/ubuntu:precise" shape="ellipse"];
  "sha256:5721eb477b3db27b3f8fb7f4c6bbfbd3ddd294acea56e770b2770400c0832ad1" [label="/bin/sh -c apt-get update && apt-get install -y -q lsb-release python-software-properties" shape="box"];
  "sha256:64097a478222489a149590434db9ca74f2a8b08063ecda1bbdc431281f23d285" [label="/bin/sh -c add-apt-repository \"deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe\"" shape="box"];
  "sha256:b6bc1d0dd92c3e21b711a0c7a2bd2f72f4cea22ef224c27fdaa456adf4295910" [label="/bin/sh -c add-apt-repository -y ppa:nginx/stable" shape="box"];
  "sha256:e126c2cb6f3f507c52694e99e3d08ba0dc015d3610c9708155dda505d9758b89" [label="/bin/sh -c apt-get update && apt-get install -y -q sudo curl git libpq-dev nodejs nginx" shape="box"];
  "sha256:3d25ba7d332473e97833faf281a0993a4c5c4ec170c4b9ab969274e3e44afe46" [label="local://context" shape="ellipse"];
  "sha256:f778efb717789882113f4a243ef460a8328bd85747a8464b172f8f093cf465c4" [label="copy{src=/web_conf, dest=/}" shape="note"];
  "sha256:8bb04121e1df49fb623f8e720187be9948eae654f8c226a837e85a8610fc3ec5" [label="copy{src=/dot_ssh, dest=/root/.ssh}" shape="note"];
  "sha256:0cbaadc59d9a8b589e42d09a303a9c87fe0b12d3becac9d3161c95d2a0694e8c" [label="/bin/sh -c touch /root/.ssh/id_rsa && chmod 600 /root/.ssh/id_rsa && chmod 700 /root/.ssh" shape="box"];
  "sha256:47fc2cdac4507a81a97325583edccfa916b13a8cf761ba336f6b2d4191ae9e8f" [label="/bin/sh -c curl -L https://get.rvm.io | sudo bash -s stable --ruby=2.0" shape="box"];
  "sha256:c4516f4f3495d4d7f582c7c76fdc609bd54217ffff7f38bf6a19fe1b1ab585b8" [label="/bin/sh -c su root -c 'source /etc/profile.d/rvm.sh && rvm use 2.0 --default'" shape="box"];
  "sha256:52b218682a8d6ac1eacc47b7df6f32f7a72e0595b41d071b6677eedddc970262" [label="sha256:52b218682a8d6ac1eacc47b7df6f32f7a72e0595b41d071b6677eedddc970262" shape="plaintext"];
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" -> "sha256:5721eb477b3db27b3f8fb7f4c6bbfbd3ddd294acea56e770b2770400c0832ad1" [label=""];
  "sha256:5721eb477b3db27b3f8fb7f4c6bbfbd3ddd294acea56e770b2770400c0832ad1" -> "sha256:64097a478222489a149590434db9ca74f2a8b08063ecda1bbdc431281f23d285" [label=""];
  "sha256:64097a478222489a149590434db9ca74f2a8b08063ecda1bbdc431281f23d285" -> "sha256:b6bc1d0dd92c3e21b711a0c7a2bd2f72f4cea22ef224c27fdaa456adf4295910" [label=""];
  "sha256:b6bc1d0dd92c3e21b711a0c7a2bd2f72f4cea22ef224c27fdaa456adf4295910" -> "sha256:e126c2cb6f3f507c52694e99e3d08ba0dc015d3610c9708155dda505d9758b89" [label=""];
  "sha256:e126c2cb6f3f507c52694e99e3d08ba0dc015d3610c9708155dda505d9758b89" -> "sha256:f778efb717789882113f4a243ef460a8328bd85747a8464b172f8f093cf465c4" [label=""];
  "sha256:3d25ba7d332473e97833faf281a0993a4c5c4ec170c4b9ab969274e3e44afe46" -> "sha256:f778efb717789882113f4a243ef460a8328bd85747a8464b172f8f093cf465c4" [label=""];
  "sha256:f778efb717789882113f4a243ef460a8328bd85747a8464b172f8f093cf465c4" -> "sha256:8bb04121e1df49fb623f8e720187be9948eae654f8c226a837e85a8610fc3ec5" [label=""];
  "sha256:3d25ba7d332473e97833faf281a0993a4c5c4ec170c4b9ab969274e3e44afe46" -> "sha256:8bb04121e1df49fb623f8e720187be9948eae654f8c226a837e85a8610fc3ec5" [label=""];
  "sha256:8bb04121e1df49fb623f8e720187be9948eae654f8c226a837e85a8610fc3ec5" -> "sha256:0cbaadc59d9a8b589e42d09a303a9c87fe0b12d3becac9d3161c95d2a0694e8c" [label=""];
  "sha256:0cbaadc59d9a8b589e42d09a303a9c87fe0b12d3becac9d3161c95d2a0694e8c" -> "sha256:47fc2cdac4507a81a97325583edccfa916b13a8cf761ba336f6b2d4191ae9e8f" [label=""];
  "sha256:47fc2cdac4507a81a97325583edccfa916b13a8cf761ba336f6b2d4191ae9e8f" -> "sha256:c4516f4f3495d4d7f582c7c76fdc609bd54217ffff7f38bf6a19fe1b1ab585b8" [label=""];
  "sha256:c4516f4f3495d4d7f582c7c76fdc609bd54217ffff7f38bf6a19fe1b1ab585b8" -> "sha256:52b218682a8d6ac1eacc47b7df6f32f7a72e0595b41d071b6677eedddc970262" [label=""];
}

