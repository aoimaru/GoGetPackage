[app/sources/358673255.Dockerfile]
digraph {
  "sha256:b36c190f3c5880a8141ff8dd8bf23f225f4da1b0d14c32b23494ed3b532ef2b1" [label="docker-image://docker.io/biocontainers/biocontainers:v1.0.0_cv4@sha256:586c2bfecebee37ccef5db40d6c91483178ab04fea775bdbada179d9631e956f" shape="ellipse"];
  "sha256:9139b456643ec0abf2d33ec9edd40e5086c966ffd9761699c541f0c61034ce2a" [label="/bin/sh -c apt-get update &&     apt-get install -y       liblwp-protocol-https-perl &&     apt-get clean &&     apt-get purge &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:867e3901b89d915981ab40ce0b30b551055c7b35d436bd0e469f2809baceee2e" [label="/bin/sh -c cd $DST && \twget $URL/$ZIP -O $DST/$ZIP && \ttar xzfv $DST/$ZIP -C $DST && \tmv $DST/$FOLDER/* /home/biodocker/bin/ && \trm -rf $DST/$FOLDER" shape="box"];
  "sha256:08953483ae9074944756f63d60ee456dde35470570e4a19082c5acb67b3f3d77" [label="mkdir{path=/data}" shape="note"];
  "sha256:18ce54687ee5a9fbd7de3fd9af41d37422b434571d9e27250d6a763b5bee06bf" [label="sha256:18ce54687ee5a9fbd7de3fd9af41d37422b434571d9e27250d6a763b5bee06bf" shape="plaintext"];
  "sha256:b36c190f3c5880a8141ff8dd8bf23f225f4da1b0d14c32b23494ed3b532ef2b1" -> "sha256:9139b456643ec0abf2d33ec9edd40e5086c966ffd9761699c541f0c61034ce2a" [label=""];
  "sha256:9139b456643ec0abf2d33ec9edd40e5086c966ffd9761699c541f0c61034ce2a" -> "sha256:867e3901b89d915981ab40ce0b30b551055c7b35d436bd0e469f2809baceee2e" [label=""];
  "sha256:867e3901b89d915981ab40ce0b30b551055c7b35d436bd0e469f2809baceee2e" -> "sha256:08953483ae9074944756f63d60ee456dde35470570e4a19082c5acb67b3f3d77" [label=""];
  "sha256:08953483ae9074944756f63d60ee456dde35470570e4a19082c5acb67b3f3d77" -> "sha256:18ce54687ee5a9fbd7de3fd9af41d37422b434571d9e27250d6a763b5bee06bf" [label=""];
}

