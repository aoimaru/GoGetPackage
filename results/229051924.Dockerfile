[app/sources/229051924.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:1d38d8f6852743a2412d59cd3769ed390ad99b6da7424ac25836786c38bf35cd" [label="/bin/sh -c apt-get update && apt-get install -y \tpython \tbuild-essential \tpython-dev \tpython-pip \tgit \twget         openjdk-7-jre         libblas-dev liblapack-dev" shape="box"];
  "sha256:60c0973137d17cc691b96db3b85f725d01be399dcac7f827bffb1eae5a3cfc96" [label="mkdir{path=/home}" shape="note"];
  "sha256:96d554073437f9bedcdfef6a85c1a324ad4bef0cb611babb9e33d540972cce7d" [label="/bin/sh -c wget \"https://download.elasticsearch.org/elasticsearch/release/org/elasticsearch/distribution/deb/elasticsearch/2.2.0/elasticsearch-2.2.0.deb\" -O elasticsearch-2.2.0.deb &&   dpkg -i elasticsearch-2.2.0.deb" shape="box"];
  "sha256:a4c399bfdf9fbf4c3262f232833e9204458b63efdf4ecdde143f38a300dc43ac" [label="/bin/sh -c git clone https://github.com/vlall/darksearch" shape="box"];
  "sha256:6277f8269176125face20977e0f8fa6b7ffbaaec205aefe579fdc9081231494c" [label="/bin/sh -c pip install -r /home/darksearch/requirements.txt" shape="box"];
  "sha256:add265a60aec737a202aeecad80d41307a44c9183428098fe6a87e071bf6a75d" [label="sha256:add265a60aec737a202aeecad80d41307a44c9183428098fe6a87e071bf6a75d" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:1d38d8f6852743a2412d59cd3769ed390ad99b6da7424ac25836786c38bf35cd" [label=""];
  "sha256:1d38d8f6852743a2412d59cd3769ed390ad99b6da7424ac25836786c38bf35cd" -> "sha256:60c0973137d17cc691b96db3b85f725d01be399dcac7f827bffb1eae5a3cfc96" [label=""];
  "sha256:60c0973137d17cc691b96db3b85f725d01be399dcac7f827bffb1eae5a3cfc96" -> "sha256:96d554073437f9bedcdfef6a85c1a324ad4bef0cb611babb9e33d540972cce7d" [label=""];
  "sha256:96d554073437f9bedcdfef6a85c1a324ad4bef0cb611babb9e33d540972cce7d" -> "sha256:a4c399bfdf9fbf4c3262f232833e9204458b63efdf4ecdde143f38a300dc43ac" [label=""];
  "sha256:a4c399bfdf9fbf4c3262f232833e9204458b63efdf4ecdde143f38a300dc43ac" -> "sha256:6277f8269176125face20977e0f8fa6b7ffbaaec205aefe579fdc9081231494c" [label=""];
  "sha256:6277f8269176125face20977e0f8fa6b7ffbaaec205aefe579fdc9081231494c" -> "sha256:add265a60aec737a202aeecad80d41307a44c9183428098fe6a87e071bf6a75d" [label=""];
}

