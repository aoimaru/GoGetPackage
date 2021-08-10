[app/sources/264585558.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:f7012461ed21f025e4bbd48a880a19a9cb1cd2627bf7587745170a40f393a2e6" [label="/bin/sh -c sudo apt-get update -y && sudo apt-get install python-pip socat -y" shape="box"];
  "sha256:8621e7cbe33a40e67f2271350b67ec9b6d8356a6c6c7bdd86f737da502d247ff" [label="local://context" shape="ellipse"];
  "sha256:690758a9dc96924b91e05e6340ebbfa5b90f6c67a58e38db1ad6182a9c83b7bc" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:8df40f740238d613f5560c1c37339c369e8b38f59ad4bf8043de8099536a1458" [label="mkdir{path=/app}" shape="note"];
  "sha256:730d59753883d9b983ddfa95a23a13dfccdd0a148d1e34792039f15cde9ddc94" [label="/bin/sh -c chmod +x serve.sh" shape="box"];
  "sha256:60d1196d5442403bcd7cfb6239a060530419f129efcd14b24f6d2346fdbe0da6" [label="sha256:60d1196d5442403bcd7cfb6239a060530419f129efcd14b24f6d2346fdbe0da6" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:f7012461ed21f025e4bbd48a880a19a9cb1cd2627bf7587745170a40f393a2e6" [label=""];
  "sha256:f7012461ed21f025e4bbd48a880a19a9cb1cd2627bf7587745170a40f393a2e6" -> "sha256:690758a9dc96924b91e05e6340ebbfa5b90f6c67a58e38db1ad6182a9c83b7bc" [label=""];
  "sha256:8621e7cbe33a40e67f2271350b67ec9b6d8356a6c6c7bdd86f737da502d247ff" -> "sha256:690758a9dc96924b91e05e6340ebbfa5b90f6c67a58e38db1ad6182a9c83b7bc" [label=""];
  "sha256:690758a9dc96924b91e05e6340ebbfa5b90f6c67a58e38db1ad6182a9c83b7bc" -> "sha256:8df40f740238d613f5560c1c37339c369e8b38f59ad4bf8043de8099536a1458" [label=""];
  "sha256:8df40f740238d613f5560c1c37339c369e8b38f59ad4bf8043de8099536a1458" -> "sha256:730d59753883d9b983ddfa95a23a13dfccdd0a148d1e34792039f15cde9ddc94" [label=""];
  "sha256:730d59753883d9b983ddfa95a23a13dfccdd0a148d1e34792039f15cde9ddc94" -> "sha256:60d1196d5442403bcd7cfb6239a060530419f129efcd14b24f6d2346fdbe0da6" [label=""];
}

