[app/sources/208068728.Dockerfile]
digraph {
  "sha256:e74dc0ec2fa069531e4c2cfde1eb8d90dabc3df75afe0168d00b240eed678738" [label="docker-image://docker.io/floydhub/dl-docker:cpu@sha256:377e9443b323ff2346d33b096f3bd4b7ae0a707823dd8430e093cccf59e021e9" shape="ellipse"];
  "sha256:9043781ebb2796ad01db3d8960e8822a9eab8c4839020244dfe97197de23edf4" [label="/bin/sh -c apt-get update -qq &&   apt-get install -y                      lsb-release &&   echo \"deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) multiverse\\n\"       >> /etc/apt/sources.list.d/added_repos.list &&   echo \"deb http://cran.cnr.berkeley.edu/bin/linux/ubuntu $(lsb_release -sc)/\"       >> /etc/apt/sources.list.d/added_repos.list &&   apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9 &&   apt-get update -qq &&   apt-get install -y                      aptdaemon                      ed                      git          mercurial          libcairo-dev          libedit-dev          python3          python3-pip          r-base          r-base-dev          sudo          wget &&  rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ed6a5419e9f94e34d7b6bd7d6a88acbbebb708bdf5672f3c0deb823096eccadb" [label="/bin/sh -c echo \"rPython\\n        randomForestSRC\" > rpacks.txt &&   R -e 'install.packages(sub(\"(.+)\\\\\\\\n\",\"\\\\1\", scan(\"rpacks.txt\", \"character\")), repos=\"http://cran.cnr.Berkeley.edu\")' &&   rm rpacks.txt" shape="box"];
  "sha256:20ca1ff181e9e1c6d738f9246baf5161fcc456fd1e0076876971525b4be0c472" [label="/bin/sh -c echo \"h5py==2.7.0\\n        lifelines==0.9.4\\n        logger==1.4\\n        tensorboard-logger==0.0.3\\n        numpy>=1.9.0\\n        matplotlib==2.0.0\\n        rpy2==2.8.3\" > /requirements.txt &&   pip install -r /requirements.txt" shape="box"];
  "sha256:3301b64de465bc6215ba662cb40fc141d1832cd20322eab111c736a7b2111d33" [label="local://context" shape="ellipse"];
  "sha256:8d648fb0036b77378f0d090ef30dfdc41c4bb0681d65d80cbf18836f226f36ea" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:137035b705cdc90f063598c38a973aaf5bd52f0a8b636e65ba81a9f78b8e9997" [label="sha256:137035b705cdc90f063598c38a973aaf5bd52f0a8b636e65ba81a9f78b8e9997" shape="plaintext"];
  "sha256:e74dc0ec2fa069531e4c2cfde1eb8d90dabc3df75afe0168d00b240eed678738" -> "sha256:9043781ebb2796ad01db3d8960e8822a9eab8c4839020244dfe97197de23edf4" [label=""];
  "sha256:9043781ebb2796ad01db3d8960e8822a9eab8c4839020244dfe97197de23edf4" -> "sha256:ed6a5419e9f94e34d7b6bd7d6a88acbbebb708bdf5672f3c0deb823096eccadb" [label=""];
  "sha256:ed6a5419e9f94e34d7b6bd7d6a88acbbebb708bdf5672f3c0deb823096eccadb" -> "sha256:20ca1ff181e9e1c6d738f9246baf5161fcc456fd1e0076876971525b4be0c472" [label=""];
  "sha256:20ca1ff181e9e1c6d738f9246baf5161fcc456fd1e0076876971525b4be0c472" -> "sha256:8d648fb0036b77378f0d090ef30dfdc41c4bb0681d65d80cbf18836f226f36ea" [label=""];
  "sha256:3301b64de465bc6215ba662cb40fc141d1832cd20322eab111c736a7b2111d33" -> "sha256:8d648fb0036b77378f0d090ef30dfdc41c4bb0681d65d80cbf18836f226f36ea" [label=""];
  "sha256:8d648fb0036b77378f0d090ef30dfdc41c4bb0681d65d80cbf18836f226f36ea" -> "sha256:137035b705cdc90f063598c38a973aaf5bd52f0a8b636e65ba81a9f78b8e9997" [label=""];
}

