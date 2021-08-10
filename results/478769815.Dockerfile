[app/sources/478769815.Dockerfile]
digraph {
  "sha256:05f53ec2abcb97e0d359437b51ac9b87f148c73247d98c741f5c00c6be577db3" [label="docker-image://docker.io/circleci/node:latest-browsers@sha256:e8bb6a2130402e585573319698b93d344dea8901256f56591512b1af9eb2dc24" shape="ellipse"];
  "sha256:c282f0356a893346c4fd57d71a556a70ae19307f0c2be7d38c96f419846b8106" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:7b5bbf1431bdff7a0c079137288131cdf64e8b2e90cf519f3faae0748bba2c04" [label="local://context" shape="ellipse"];
  "sha256:77c2c42ee8009358dfae5f6c0f33db3154920f32d8a8f874956c115f2c3eecf3" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:7874e9dd4b6ac9d9c13f405a0c0d9aa0418e61fde23d156e6c0d27f15ff20924" [label="/bin/sh -c yarn" shape="box"];
  "sha256:bd64cfd6cc5f98de16c1e2f811b73973f797ff3b38078b93ade50ff7c34137e3" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:73de81126255f9dd03cfdca658da8c3d90ad801625619b9bd32458786cd38358" [label="/bin/sh -c npm run test:all" shape="box"];
  "sha256:feba889d6d9d63d303ac1a098b29c634c0996537d8a170e70cd28ddf66dc57c7" [label="sha256:feba889d6d9d63d303ac1a098b29c634c0996537d8a170e70cd28ddf66dc57c7" shape="plaintext"];
  "sha256:05f53ec2abcb97e0d359437b51ac9b87f148c73247d98c741f5c00c6be577db3" -> "sha256:c282f0356a893346c4fd57d71a556a70ae19307f0c2be7d38c96f419846b8106" [label=""];
  "sha256:c282f0356a893346c4fd57d71a556a70ae19307f0c2be7d38c96f419846b8106" -> "sha256:77c2c42ee8009358dfae5f6c0f33db3154920f32d8a8f874956c115f2c3eecf3" [label=""];
  "sha256:7b5bbf1431bdff7a0c079137288131cdf64e8b2e90cf519f3faae0748bba2c04" -> "sha256:77c2c42ee8009358dfae5f6c0f33db3154920f32d8a8f874956c115f2c3eecf3" [label=""];
  "sha256:77c2c42ee8009358dfae5f6c0f33db3154920f32d8a8f874956c115f2c3eecf3" -> "sha256:7874e9dd4b6ac9d9c13f405a0c0d9aa0418e61fde23d156e6c0d27f15ff20924" [label=""];
  "sha256:7874e9dd4b6ac9d9c13f405a0c0d9aa0418e61fde23d156e6c0d27f15ff20924" -> "sha256:bd64cfd6cc5f98de16c1e2f811b73973f797ff3b38078b93ade50ff7c34137e3" [label=""];
  "sha256:7b5bbf1431bdff7a0c079137288131cdf64e8b2e90cf519f3faae0748bba2c04" -> "sha256:bd64cfd6cc5f98de16c1e2f811b73973f797ff3b38078b93ade50ff7c34137e3" [label=""];
  "sha256:bd64cfd6cc5f98de16c1e2f811b73973f797ff3b38078b93ade50ff7c34137e3" -> "sha256:73de81126255f9dd03cfdca658da8c3d90ad801625619b9bd32458786cd38358" [label=""];
  "sha256:73de81126255f9dd03cfdca658da8c3d90ad801625619b9bd32458786cd38358" -> "sha256:feba889d6d9d63d303ac1a098b29c634c0996537d8a170e70cd28ddf66dc57c7" [label=""];
}

