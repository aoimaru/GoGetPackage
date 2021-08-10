[app/sources/337039576.Dockerfile]
digraph {
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" [label="docker-image://docker.io/frolvlad/alpine-oraclejdk8:slim" shape="ellipse"];
  "sha256:33d480106d4d9e3ded7345ffd8932fccda2e4c01dc3bff5bcab85f2d94d5eb40" [label="local://context" shape="ellipse"];
  "sha256:fafe352226ab02805cedc9b265ebdd048ac21ef74f950c36e7c534b0ab440e08" [label="copy{src=/target/hystrix-dashboard-0.0.1-SNAPSHOT-exec.jar, dest=/app.jar}" shape="note"];
  "sha256:c19c46cee5470702a8b520bf6a5a7e1f4b1278ad4f443d6e79258d98f5353596" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:d2a4a30b7a30933b0bd1fa9c24b05388f9b7fce3f97a83819e451c7727e1fea9" [label="sha256:d2a4a30b7a30933b0bd1fa9c24b05388f9b7fce3f97a83819e451c7727e1fea9" shape="plaintext"];
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" -> "sha256:fafe352226ab02805cedc9b265ebdd048ac21ef74f950c36e7c534b0ab440e08" [label=""];
  "sha256:33d480106d4d9e3ded7345ffd8932fccda2e4c01dc3bff5bcab85f2d94d5eb40" -> "sha256:fafe352226ab02805cedc9b265ebdd048ac21ef74f950c36e7c534b0ab440e08" [label=""];
  "sha256:fafe352226ab02805cedc9b265ebdd048ac21ef74f950c36e7c534b0ab440e08" -> "sha256:c19c46cee5470702a8b520bf6a5a7e1f4b1278ad4f443d6e79258d98f5353596" [label=""];
  "sha256:c19c46cee5470702a8b520bf6a5a7e1f4b1278ad4f443d6e79258d98f5353596" -> "sha256:d2a4a30b7a30933b0bd1fa9c24b05388f9b7fce3f97a83819e451c7727e1fea9" [label=""];
}

