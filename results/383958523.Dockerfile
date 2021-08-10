[app/sources/383958523.Dockerfile]
digraph {
  "sha256:a2d939784fcdbbbabc3b4d7924a65b69b069322e0defbff15037543e4b0f8687" [label="docker-image://docker.io/codingtony/java:latest" shape="ellipse"];
  "sha256:76aa891b6ed3c21c87d08fa4745559886204df45ca8303a103ce87c5d29151f0" [label="/bin/sh -c apt-get update && apt-get install -y unzip" shape="box"];
  "sha256:e28d9c8167dd81dec8d9ea5e00715605dff78466ce2004ffb57d70753578b62f" [label="/bin/sh -c wget --content-disposition http://dl.bintray.com/jfrog/artifactory/artifactory-3.4.0.zip" shape="box"];
  "sha256:e22f1d992e2a1bfb28059fa836ce1da4072b11a23ebf60143a646b0f5249af6a" [label="/bin/sh -c cd /opt && unzip ~/artifactory-3.4.0.zip" shape="box"];
  "sha256:31db762a81b099918e52d0668529e2c019d70ad2909d1ae9e95d0cf7568661bf" [label="/bin/sh -c mv /opt/artifactory-3.4.0 /opt/artifactory" shape="box"];
  "sha256:ff50dc1861e2fa834615b7a25fd2185a02f0158c30083e0b79e9f1c8c906e19a" [label="/bin/sh -c rm ~/artifactory-3.4.0.zip" shape="box"];
  "sha256:926267018a1f58eb7c9616cfbf0785829d50ce66e3751d824ff884088021d07d" [label="/bin/sh -c mkdir /opt/artifactory/data" shape="box"];
  "sha256:3c2f0a7bfcc2c10eccfbfa641102d79f18f2709df09d995f8e958d9b68cd834c" [label="sha256:3c2f0a7bfcc2c10eccfbfa641102d79f18f2709df09d995f8e958d9b68cd834c" shape="plaintext"];
  "sha256:a2d939784fcdbbbabc3b4d7924a65b69b069322e0defbff15037543e4b0f8687" -> "sha256:76aa891b6ed3c21c87d08fa4745559886204df45ca8303a103ce87c5d29151f0" [label=""];
  "sha256:76aa891b6ed3c21c87d08fa4745559886204df45ca8303a103ce87c5d29151f0" -> "sha256:e28d9c8167dd81dec8d9ea5e00715605dff78466ce2004ffb57d70753578b62f" [label=""];
  "sha256:e28d9c8167dd81dec8d9ea5e00715605dff78466ce2004ffb57d70753578b62f" -> "sha256:e22f1d992e2a1bfb28059fa836ce1da4072b11a23ebf60143a646b0f5249af6a" [label=""];
  "sha256:e22f1d992e2a1bfb28059fa836ce1da4072b11a23ebf60143a646b0f5249af6a" -> "sha256:31db762a81b099918e52d0668529e2c019d70ad2909d1ae9e95d0cf7568661bf" [label=""];
  "sha256:31db762a81b099918e52d0668529e2c019d70ad2909d1ae9e95d0cf7568661bf" -> "sha256:ff50dc1861e2fa834615b7a25fd2185a02f0158c30083e0b79e9f1c8c906e19a" [label=""];
  "sha256:ff50dc1861e2fa834615b7a25fd2185a02f0158c30083e0b79e9f1c8c906e19a" -> "sha256:926267018a1f58eb7c9616cfbf0785829d50ce66e3751d824ff884088021d07d" [label=""];
  "sha256:926267018a1f58eb7c9616cfbf0785829d50ce66e3751d824ff884088021d07d" -> "sha256:3c2f0a7bfcc2c10eccfbfa641102d79f18f2709df09d995f8e958d9b68cd834c" [label=""];
}

