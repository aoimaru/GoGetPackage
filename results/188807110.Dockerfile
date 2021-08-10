[app/sources/188807110.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:af36c29f6db564db7c03016525c1ab1a2463cb6e38b6b3efdfd18a451dd1ff38" [label="/bin/sh -c apt-get update &&     apt-get install mysql-client cron bzip2 -y &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* &&     mkdir /backups" shape="box"];
  "sha256:7c63c9918f425668cfcac94b0e2817d5185ac6d751a00bfc71b882221f9d1202" [label="local://context" shape="ellipse"];
  "sha256:9d0fbb4f995d29b7db2458b39f5124f415e6c69043969aa428b69a4706b32358" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:24113b85a7ef3495addf47f2692e56d5b3f08a0d28d644ce4126eecff60bbd2c" [label="copy{src=/backup, dest=/bin/},copy{src=/restore, dest=/bin/}" shape="note"];
  "sha256:2c4c6739632b16cf31a1b539d18235fd0a82d17cac873bdf19a7a6dae79271ea" [label="sha256:2c4c6739632b16cf31a1b539d18235fd0a82d17cac873bdf19a7a6dae79271ea" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:af36c29f6db564db7c03016525c1ab1a2463cb6e38b6b3efdfd18a451dd1ff38" [label=""];
  "sha256:af36c29f6db564db7c03016525c1ab1a2463cb6e38b6b3efdfd18a451dd1ff38" -> "sha256:9d0fbb4f995d29b7db2458b39f5124f415e6c69043969aa428b69a4706b32358" [label=""];
  "sha256:7c63c9918f425668cfcac94b0e2817d5185ac6d751a00bfc71b882221f9d1202" -> "sha256:9d0fbb4f995d29b7db2458b39f5124f415e6c69043969aa428b69a4706b32358" [label=""];
  "sha256:9d0fbb4f995d29b7db2458b39f5124f415e6c69043969aa428b69a4706b32358" -> "sha256:24113b85a7ef3495addf47f2692e56d5b3f08a0d28d644ce4126eecff60bbd2c" [label=""];
  "sha256:7c63c9918f425668cfcac94b0e2817d5185ac6d751a00bfc71b882221f9d1202" -> "sha256:24113b85a7ef3495addf47f2692e56d5b3f08a0d28d644ce4126eecff60bbd2c" [label=""];
  "sha256:24113b85a7ef3495addf47f2692e56d5b3f08a0d28d644ce4126eecff60bbd2c" -> "sha256:2c4c6739632b16cf31a1b539d18235fd0a82d17cac873bdf19a7a6dae79271ea" [label=""];
}

