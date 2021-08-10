[app/sources/476472765.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:cf7acf2275b7a34b9e46314ec10690091b2edbc4870f684cfc789644573eeee1" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends         build-essential ruby-dev rpm zip dos2unix libgmp3-dev &&     gem install fpm" shape="box"];
  "sha256:4e918b0da0f481bdc05918e9d2222fe118f2906b9f3c4d91ede281d177ffb184" [label="sha256:4e918b0da0f481bdc05918e9d2222fe118f2906b9f3c4d91ede281d177ffb184" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:cf7acf2275b7a34b9e46314ec10690091b2edbc4870f684cfc789644573eeee1" [label=""];
  "sha256:cf7acf2275b7a34b9e46314ec10690091b2edbc4870f684cfc789644573eeee1" -> "sha256:4e918b0da0f481bdc05918e9d2222fe118f2906b9f3c4d91ede281d177ffb184" [label=""];
}

