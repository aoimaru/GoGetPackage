[app/sources/364817655.Dockerfile]
digraph {
  "sha256:609025b505a92fdc4c4bdde03a217fb1a8fe19a39fd2eb6368734f9691744327" [label="docker-image://docker.io/webcenter/rancher-stack-base:latest" shape="ellipse"];
  "sha256:5d70a2645dbbd362ec7b2646350ea1a50d218463dc7930cd947a10135a4fa7d5" [label="/bin/sh -c add-apt-repository -y ppa:gluster/glusterfs-3.7 &&     apt-get update &&     apt-get install -y glusterfs-server glusterfs-client" shape="box"];
  "sha256:6ad2f586a43d854899668d95ac8f4f6311a883373ec28d5856fcfc73838fb876" [label="/bin/sh -c mkdir /data" shape="box"];
  "sha256:5a78291594208f3b14149d986a7e3d822009e252ed9f0e2dfb72305090efd2ab" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:1d481ba155a17715c5176cacc2902eed1901d6a08bbf1d0c336747f2e5acaf01" [label="/bin/sh -c git clone https://github.com/disaster37/python-gluster.git" shape="box"];
  "sha256:05ce469883ac86cf5ece9fbeb27df86e189a232e2597e551204186d1019b353e" [label="mkdir{path=/usr/src/python-gluster}" shape="note"];
  "sha256:9cca4936a1ed71e5af465c0b315a64d1cf09f9bfe3f0e61daa113ef47684380b" [label="/bin/sh -c python setup.py install" shape="box"];
  "sha256:cff14358b2ebfe0e7d10c717fff524aa087ae50aa5650829975f95f84d2c153b" [label="/bin/sh -c pip install rancher_metadata" shape="box"];
  "sha256:e7693b1400dc9a3265ef21a126763e7191706c6a28ca5ef836d3245f64ae406f" [label="local://context" shape="ellipse"];
  "sha256:516dd17ee9a93fde0e84ff550d6b83238c9fcaad438cb29064925f6f100efe25" [label="copy{src=/assets/init.py, dest=/app/}" shape="note"];
  "sha256:8358474c5f57fd738af5d8d40417b5a10cda470049f963ac9c8997604bda16ec" [label="/bin/sh -c chmod +x /app/init.py" shape="box"];
  "sha256:39fb3c33b987f57668289317cac62f3fca1fc4d1aabc374c3cb9dd538747abba" [label="copy{src=/assets/run, dest=/app/}" shape="note"];
  "sha256:ca7ab2f6245b963f1efe317e3dae061031d64c72ebb0c3581e73c336596f1c45" [label="/bin/sh -c chmod +x /app/run" shape="box"];
  "sha256:8f0d8f5302bc2e302fc1d206b40c2929a63d74cd66341cbc095fe4367f44cdda" [label="mkdir{path=/app}" shape="note"];
  "sha256:eae793eca257f7856ea05cb92c92c999287f53c0fe00ff20081aff1c22f85774" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:08cb6a8f3a42a376d2da51e817d7d0cc75812c080472a9fc617cba23c60f771e" [label="sha256:08cb6a8f3a42a376d2da51e817d7d0cc75812c080472a9fc617cba23c60f771e" shape="plaintext"];
  "sha256:609025b505a92fdc4c4bdde03a217fb1a8fe19a39fd2eb6368734f9691744327" -> "sha256:5d70a2645dbbd362ec7b2646350ea1a50d218463dc7930cd947a10135a4fa7d5" [label=""];
  "sha256:5d70a2645dbbd362ec7b2646350ea1a50d218463dc7930cd947a10135a4fa7d5" -> "sha256:6ad2f586a43d854899668d95ac8f4f6311a883373ec28d5856fcfc73838fb876" [label=""];
  "sha256:6ad2f586a43d854899668d95ac8f4f6311a883373ec28d5856fcfc73838fb876" -> "sha256:5a78291594208f3b14149d986a7e3d822009e252ed9f0e2dfb72305090efd2ab" [label=""];
  "sha256:5a78291594208f3b14149d986a7e3d822009e252ed9f0e2dfb72305090efd2ab" -> "sha256:1d481ba155a17715c5176cacc2902eed1901d6a08bbf1d0c336747f2e5acaf01" [label=""];
  "sha256:1d481ba155a17715c5176cacc2902eed1901d6a08bbf1d0c336747f2e5acaf01" -> "sha256:05ce469883ac86cf5ece9fbeb27df86e189a232e2597e551204186d1019b353e" [label=""];
  "sha256:05ce469883ac86cf5ece9fbeb27df86e189a232e2597e551204186d1019b353e" -> "sha256:9cca4936a1ed71e5af465c0b315a64d1cf09f9bfe3f0e61daa113ef47684380b" [label=""];
  "sha256:9cca4936a1ed71e5af465c0b315a64d1cf09f9bfe3f0e61daa113ef47684380b" -> "sha256:cff14358b2ebfe0e7d10c717fff524aa087ae50aa5650829975f95f84d2c153b" [label=""];
  "sha256:cff14358b2ebfe0e7d10c717fff524aa087ae50aa5650829975f95f84d2c153b" -> "sha256:516dd17ee9a93fde0e84ff550d6b83238c9fcaad438cb29064925f6f100efe25" [label=""];
  "sha256:e7693b1400dc9a3265ef21a126763e7191706c6a28ca5ef836d3245f64ae406f" -> "sha256:516dd17ee9a93fde0e84ff550d6b83238c9fcaad438cb29064925f6f100efe25" [label=""];
  "sha256:516dd17ee9a93fde0e84ff550d6b83238c9fcaad438cb29064925f6f100efe25" -> "sha256:8358474c5f57fd738af5d8d40417b5a10cda470049f963ac9c8997604bda16ec" [label=""];
  "sha256:8358474c5f57fd738af5d8d40417b5a10cda470049f963ac9c8997604bda16ec" -> "sha256:39fb3c33b987f57668289317cac62f3fca1fc4d1aabc374c3cb9dd538747abba" [label=""];
  "sha256:e7693b1400dc9a3265ef21a126763e7191706c6a28ca5ef836d3245f64ae406f" -> "sha256:39fb3c33b987f57668289317cac62f3fca1fc4d1aabc374c3cb9dd538747abba" [label=""];
  "sha256:39fb3c33b987f57668289317cac62f3fca1fc4d1aabc374c3cb9dd538747abba" -> "sha256:ca7ab2f6245b963f1efe317e3dae061031d64c72ebb0c3581e73c336596f1c45" [label=""];
  "sha256:ca7ab2f6245b963f1efe317e3dae061031d64c72ebb0c3581e73c336596f1c45" -> "sha256:8f0d8f5302bc2e302fc1d206b40c2929a63d74cd66341cbc095fe4367f44cdda" [label=""];
  "sha256:8f0d8f5302bc2e302fc1d206b40c2929a63d74cd66341cbc095fe4367f44cdda" -> "sha256:eae793eca257f7856ea05cb92c92c999287f53c0fe00ff20081aff1c22f85774" [label=""];
  "sha256:eae793eca257f7856ea05cb92c92c999287f53c0fe00ff20081aff1c22f85774" -> "sha256:08cb6a8f3a42a376d2da51e817d7d0cc75812c080472a9fc617cba23c60f771e" [label=""];
}

