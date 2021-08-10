[app/sources/286241867.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:3315dc5b86cc1fc7f168c2b8f541568a708cc2dfbfcc2a678a078fd05f63c783" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 8AA7AF1F1091A5FD &&     echo 'deb http://repo.sawtooth.me/ubuntu/1.0/stable xenial universe' >> /etc/apt/sources.list &&     apt-get update" shape="box"];
  "sha256:95ff8038a357d1ab80a6cfcc8e5804c3c7cf8e4f66137be91f8e24c33e77c10c" [label="/bin/sh -c apt-get install -y -q python3-sawtooth-sdk" shape="box"];
  "sha256:d2532098c39f200ca6733908b421b0c9b807ff6a1537e68302354b8c1d69282f" [label="mkdir{path=/project/sawtooth-marketplace}" shape="note"];
  "sha256:2230945ecfc85928b8c486170871332b8237b4441bce5729104ffb9cf8e329de" [label="sha256:2230945ecfc85928b8c486170871332b8237b4441bce5729104ffb9cf8e329de" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:3315dc5b86cc1fc7f168c2b8f541568a708cc2dfbfcc2a678a078fd05f63c783" [label=""];
  "sha256:3315dc5b86cc1fc7f168c2b8f541568a708cc2dfbfcc2a678a078fd05f63c783" -> "sha256:95ff8038a357d1ab80a6cfcc8e5804c3c7cf8e4f66137be91f8e24c33e77c10c" [label=""];
  "sha256:95ff8038a357d1ab80a6cfcc8e5804c3c7cf8e4f66137be91f8e24c33e77c10c" -> "sha256:d2532098c39f200ca6733908b421b0c9b807ff6a1537e68302354b8c1d69282f" [label=""];
  "sha256:d2532098c39f200ca6733908b421b0c9b807ff6a1537e68302354b8c1d69282f" -> "sha256:2230945ecfc85928b8c486170871332b8237b4441bce5729104ffb9cf8e329de" [label=""];
}

