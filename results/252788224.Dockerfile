[app/sources/252788224.Dockerfile]
digraph {
  "sha256:38deeb00a712774d334292224c362ac45af4434befbede91555a461d05e2b736" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:d2f2fbbb85a72b54fa1d2e2383b084d1b8e7b0b333725acd8cdc57a2b2e6e7e6" [label="/bin/sh -c apt-get update && apt-get install -y python python-pip cron && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ea2e2966a43866a8b366fd12faa4fe2d17569bf5511c1b60a67515a3d1998c4f" [label="/bin/sh -c pip install s3cmd" shape="box"];
  "sha256:1590f5c4bf70059bf5c771147354fd86f38dfdb89f1bd0ef4ee6922112f4d672" [label="copy{src=/s3cfg, dest=/root/.s3cfg}" shape="note"];
  "sha256:61f7a853deeacd95e6d949a3832e1d88227acbc3a9dc5c7e2985443cbd83ad4c" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:e78c202975e9c1312f78a25cf71a60b4703ba8714056896a4c7420d96bbfc384" [label="/bin/sh -c chmod +x /start.sh" shape="box"];
  "sha256:ef13cff4b7b460b12c91e7f177aa2f53c3dd6b02999be02bdbeb402215fd3565" [label="copy{src=/sync.sh, dest=/sync.sh}" shape="note"];
  "sha256:b43e580d384722243fc4d4cee25b4e75f3d1184d2fa2ea15003a2a4240cd33d5" [label="/bin/sh -c chmod +x /sync.sh" shape="box"];
  "sha256:12f4c6f6503f4d5a593f8064327a734afb3afe0997006344c876b8a7c44e50df" [label="copy{src=/get.sh, dest=/get.sh}" shape="note"];
  "sha256:7f9470d08ccc78872a51e68f49955d6e3d5767ac44d7a39b8af6997849e7d933" [label="/bin/sh -c chmod +x /get.sh" shape="box"];
  "sha256:d77a593970a849747b34549031343ade5e2cd715a4cea707dec79072fbe6f100" [label="sha256:d77a593970a849747b34549031343ade5e2cd715a4cea707dec79072fbe6f100" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:d2f2fbbb85a72b54fa1d2e2383b084d1b8e7b0b333725acd8cdc57a2b2e6e7e6" [label=""];
  "sha256:d2f2fbbb85a72b54fa1d2e2383b084d1b8e7b0b333725acd8cdc57a2b2e6e7e6" -> "sha256:ea2e2966a43866a8b366fd12faa4fe2d17569bf5511c1b60a67515a3d1998c4f" [label=""];
  "sha256:ea2e2966a43866a8b366fd12faa4fe2d17569bf5511c1b60a67515a3d1998c4f" -> "sha256:1590f5c4bf70059bf5c771147354fd86f38dfdb89f1bd0ef4ee6922112f4d672" [label=""];
  "sha256:38deeb00a712774d334292224c362ac45af4434befbede91555a461d05e2b736" -> "sha256:1590f5c4bf70059bf5c771147354fd86f38dfdb89f1bd0ef4ee6922112f4d672" [label=""];
  "sha256:1590f5c4bf70059bf5c771147354fd86f38dfdb89f1bd0ef4ee6922112f4d672" -> "sha256:61f7a853deeacd95e6d949a3832e1d88227acbc3a9dc5c7e2985443cbd83ad4c" [label=""];
  "sha256:38deeb00a712774d334292224c362ac45af4434befbede91555a461d05e2b736" -> "sha256:61f7a853deeacd95e6d949a3832e1d88227acbc3a9dc5c7e2985443cbd83ad4c" [label=""];
  "sha256:61f7a853deeacd95e6d949a3832e1d88227acbc3a9dc5c7e2985443cbd83ad4c" -> "sha256:e78c202975e9c1312f78a25cf71a60b4703ba8714056896a4c7420d96bbfc384" [label=""];
  "sha256:e78c202975e9c1312f78a25cf71a60b4703ba8714056896a4c7420d96bbfc384" -> "sha256:ef13cff4b7b460b12c91e7f177aa2f53c3dd6b02999be02bdbeb402215fd3565" [label=""];
  "sha256:38deeb00a712774d334292224c362ac45af4434befbede91555a461d05e2b736" -> "sha256:ef13cff4b7b460b12c91e7f177aa2f53c3dd6b02999be02bdbeb402215fd3565" [label=""];
  "sha256:ef13cff4b7b460b12c91e7f177aa2f53c3dd6b02999be02bdbeb402215fd3565" -> "sha256:b43e580d384722243fc4d4cee25b4e75f3d1184d2fa2ea15003a2a4240cd33d5" [label=""];
  "sha256:b43e580d384722243fc4d4cee25b4e75f3d1184d2fa2ea15003a2a4240cd33d5" -> "sha256:12f4c6f6503f4d5a593f8064327a734afb3afe0997006344c876b8a7c44e50df" [label=""];
  "sha256:38deeb00a712774d334292224c362ac45af4434befbede91555a461d05e2b736" -> "sha256:12f4c6f6503f4d5a593f8064327a734afb3afe0997006344c876b8a7c44e50df" [label=""];
  "sha256:12f4c6f6503f4d5a593f8064327a734afb3afe0997006344c876b8a7c44e50df" -> "sha256:7f9470d08ccc78872a51e68f49955d6e3d5767ac44d7a39b8af6997849e7d933" [label=""];
  "sha256:7f9470d08ccc78872a51e68f49955d6e3d5767ac44d7a39b8af6997849e7d933" -> "sha256:d77a593970a849747b34549031343ade5e2cd715a4cea707dec79072fbe6f100" [label=""];
}

