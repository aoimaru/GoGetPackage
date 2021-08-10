[app/sources/384113182.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:b53b6b1fb40558c6a35d40d4f83ed5786cffb61e799ec2839cff9aeb4ffa0395" [label="/bin/sh -c sudo apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF" shape="box"];
  "sha256:112aeeb5d9462ed8a9226a6bdba0d398df915974d4d9bade8c72fc7bbf14fada" [label="/bin/sh -c echo \"deb http://repos.mesosphere.io/ubuntu trusty main\" | sudo tee /etc/apt/sources.list.d/mesosphere.list" shape="box"];
  "sha256:360f2c4c930717a90d7afd6852a19b3dd6c319769d6f95cd971e1344afd2990e" [label="/bin/sh -c cat /etc/apt/sources.list.d/mesosphere.list" shape="box"];
  "sha256:c850df03c9cabc57f4577ce721a4aee7fad181ade6676fea2982854d8f259f73" [label="/bin/sh -c apt-get update -q" shape="box"];
  "sha256:4978642588759e5aa75edb5ee479be8e5f45124aba15ad34533a63959ef53135" [label="/bin/sh -c apt-get -qy install             ca-certificates       build-essential                 git           make                            mesos         wget          openjdk-6-jre-headless      --no-install-recommends" shape="box"];
  "sha256:567866f258fb981dfbdbf182682058b3681002dc29fbdd71a5ebc9b664a48714" [label="/bin/sh -c wget https://dl.bintray.com/sbt/debian/sbt-0.13.7.deb" shape="box"];
  "sha256:12c7d283c6c71846e5d5221a46b74c5cf0fed2976c9feaad769e33b350d25226" [label="/bin/sh -c dpkg -i sbt-0.13.7.deb" shape="box"];
  "sha256:cbf3a42d88fc5294a08d440a589087c6fc8ca4430d58b8877dd82c073eea6a4f" [label="/bin/sh -c git clone https://github.com/mesosphere/mesosaurus.git" shape="box"];
  "sha256:d1d731be3dd2cf513ddaa73258f8972351d003f9a12b7a49291dce2eb748ba9d" [label="mkdir{path=/mesosaurus}" shape="note"];
  "sha256:5b41df0d5ea8ae5da76d1c979f730e32ef85f1e74a4187e773138407780c6786" [label="/bin/sh -c cd task && make" shape="box"];
  "sha256:108d3c1cd800b24e6456112db8b77a22ef4067af6e68fc8240c150cce4d0b225" [label="/bin/sh -c sbt compile" shape="box"];
  "sha256:ea7ffa118103dd1678ae8e292f7f88414b81338bd252efeef9385acc1be0662e" [label="sha256:ea7ffa118103dd1678ae8e292f7f88414b81338bd252efeef9385acc1be0662e" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:b53b6b1fb40558c6a35d40d4f83ed5786cffb61e799ec2839cff9aeb4ffa0395" [label=""];
  "sha256:b53b6b1fb40558c6a35d40d4f83ed5786cffb61e799ec2839cff9aeb4ffa0395" -> "sha256:112aeeb5d9462ed8a9226a6bdba0d398df915974d4d9bade8c72fc7bbf14fada" [label=""];
  "sha256:112aeeb5d9462ed8a9226a6bdba0d398df915974d4d9bade8c72fc7bbf14fada" -> "sha256:360f2c4c930717a90d7afd6852a19b3dd6c319769d6f95cd971e1344afd2990e" [label=""];
  "sha256:360f2c4c930717a90d7afd6852a19b3dd6c319769d6f95cd971e1344afd2990e" -> "sha256:c850df03c9cabc57f4577ce721a4aee7fad181ade6676fea2982854d8f259f73" [label=""];
  "sha256:c850df03c9cabc57f4577ce721a4aee7fad181ade6676fea2982854d8f259f73" -> "sha256:4978642588759e5aa75edb5ee479be8e5f45124aba15ad34533a63959ef53135" [label=""];
  "sha256:4978642588759e5aa75edb5ee479be8e5f45124aba15ad34533a63959ef53135" -> "sha256:567866f258fb981dfbdbf182682058b3681002dc29fbdd71a5ebc9b664a48714" [label=""];
  "sha256:567866f258fb981dfbdbf182682058b3681002dc29fbdd71a5ebc9b664a48714" -> "sha256:12c7d283c6c71846e5d5221a46b74c5cf0fed2976c9feaad769e33b350d25226" [label=""];
  "sha256:12c7d283c6c71846e5d5221a46b74c5cf0fed2976c9feaad769e33b350d25226" -> "sha256:cbf3a42d88fc5294a08d440a589087c6fc8ca4430d58b8877dd82c073eea6a4f" [label=""];
  "sha256:cbf3a42d88fc5294a08d440a589087c6fc8ca4430d58b8877dd82c073eea6a4f" -> "sha256:d1d731be3dd2cf513ddaa73258f8972351d003f9a12b7a49291dce2eb748ba9d" [label=""];
  "sha256:d1d731be3dd2cf513ddaa73258f8972351d003f9a12b7a49291dce2eb748ba9d" -> "sha256:5b41df0d5ea8ae5da76d1c979f730e32ef85f1e74a4187e773138407780c6786" [label=""];
  "sha256:5b41df0d5ea8ae5da76d1c979f730e32ef85f1e74a4187e773138407780c6786" -> "sha256:108d3c1cd800b24e6456112db8b77a22ef4067af6e68fc8240c150cce4d0b225" [label=""];
  "sha256:108d3c1cd800b24e6456112db8b77a22ef4067af6e68fc8240c150cce4d0b225" -> "sha256:ea7ffa118103dd1678ae8e292f7f88414b81338bd252efeef9385acc1be0662e" [label=""];
}

