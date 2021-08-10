[app/sources/345356150.Dockerfile]
digraph {
  "sha256:e725ec94dc7eae5330d15a019e65ab37094d77ee21860fba01be01d7ef71c384" [label="docker-image://docker.io/balenalib/armv7hf-ubuntu:cosmic-run@sha256:025099d5733fe455f584e6afd6815aa8b854905a18f39f7e9a7174437e692e35" shape="ellipse"];
  "sha256:d54670e7a0df6104ba16e7372fd31769caa7338f32cf0cbe9e1b723d35dd2b9b" [label="/bin/sh -c echo \"deb [arch=armhf] http://repos.rcn-ee.net/ubuntu/ cosmic main\" >> /etc/apt/sources.list \t&& apt-key adv --keyserver keyserver.ubuntu.com --recv-key D284E608A4C46402" shape="box"];
  "sha256:7f47dd7a11f70a62e901afa1bdc07af02c3d9b02858301c84ac617b835ee4887" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f18befa72f9ee9663a263fbb2b04c8fd6670e2ca4c97f4414771ef654f34fd62" [label="sha256:f18befa72f9ee9663a263fbb2b04c8fd6670e2ca4c97f4414771ef654f34fd62" shape="plaintext"];
  "sha256:e725ec94dc7eae5330d15a019e65ab37094d77ee21860fba01be01d7ef71c384" -> "sha256:d54670e7a0df6104ba16e7372fd31769caa7338f32cf0cbe9e1b723d35dd2b9b" [label=""];
  "sha256:d54670e7a0df6104ba16e7372fd31769caa7338f32cf0cbe9e1b723d35dd2b9b" -> "sha256:7f47dd7a11f70a62e901afa1bdc07af02c3d9b02858301c84ac617b835ee4887" [label=""];
  "sha256:7f47dd7a11f70a62e901afa1bdc07af02c3d9b02858301c84ac617b835ee4887" -> "sha256:f18befa72f9ee9663a263fbb2b04c8fd6670e2ca4c97f4414771ef654f34fd62" [label=""];
}

