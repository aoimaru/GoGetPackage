[app/sources/365198307.Dockerfile]
digraph {
  "sha256:e063b832779ce539c878edce4b7806daa720aca0bdae089d197cd841f8805294" [label="local://context" shape="ellipse"];
  "sha256:fb3e9c548cad755dbe6b51d5ae04ace1f38638b4a3df691e7d4c3e9acad303eb" [label="docker-image://docker.io/library/ubuntu:trusty@sha256:43cb19408de1e0ecf3ba5b5372ec98978963d6d0be42d0ad825e77a3bd16b5f7" shape="ellipse"];
  "sha256:dee489ed8f564b6214a3f0fa5bb1459cdf4a4e9399f02125445580262ee55bbb" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:5d303df9290d885a9abaec5a6a5488a92f71b59a101cdb1cce03cab4156cf9af" [label="/bin/sh -c apt-get install ruby-dev -y" shape="box"];
  "sha256:ab18aadbd2e3f014a7c61794ee102487cf16eee6315a3f3505c72b88026ba322" [label="/bin/sh -c apt-get install make zlib1g-dev -y" shape="box"];
  "sha256:09bd77e655fa74cbcf0c1339119b2367b9d77f016a33987fecb4900f57dd5243" [label="/bin/sh -c gem install github-pages" shape="box"];
  "sha256:3de81a3cef3c0c7d71de39bb8669588ded00fab6f4f6ef56e4de354445fff085" [label="copy{src=/, dest=/site}" shape="note"];
  "sha256:db2068b00caea507c357563ba7795dfdd1577ff272a36c51b52b93c33a149d8e" [label="mkdir{path=/site}" shape="note"];
  "sha256:cb663fb85ee41bda442262c16a6ef28b172ab30c7eb6ef05f1681f4ea16cf13b" [label="/bin/sh -c jekyll build" shape="box"];
  "sha256:10969470150d92e6259fb67e26b586661835a4be56566ebea4d6f3755d34c42a" [label="sha256:10969470150d92e6259fb67e26b586661835a4be56566ebea4d6f3755d34c42a" shape="plaintext"];
  "sha256:fb3e9c548cad755dbe6b51d5ae04ace1f38638b4a3df691e7d4c3e9acad303eb" -> "sha256:dee489ed8f564b6214a3f0fa5bb1459cdf4a4e9399f02125445580262ee55bbb" [label=""];
  "sha256:dee489ed8f564b6214a3f0fa5bb1459cdf4a4e9399f02125445580262ee55bbb" -> "sha256:5d303df9290d885a9abaec5a6a5488a92f71b59a101cdb1cce03cab4156cf9af" [label=""];
  "sha256:5d303df9290d885a9abaec5a6a5488a92f71b59a101cdb1cce03cab4156cf9af" -> "sha256:ab18aadbd2e3f014a7c61794ee102487cf16eee6315a3f3505c72b88026ba322" [label=""];
  "sha256:ab18aadbd2e3f014a7c61794ee102487cf16eee6315a3f3505c72b88026ba322" -> "sha256:09bd77e655fa74cbcf0c1339119b2367b9d77f016a33987fecb4900f57dd5243" [label=""];
  "sha256:09bd77e655fa74cbcf0c1339119b2367b9d77f016a33987fecb4900f57dd5243" -> "sha256:3de81a3cef3c0c7d71de39bb8669588ded00fab6f4f6ef56e4de354445fff085" [label=""];
  "sha256:e063b832779ce539c878edce4b7806daa720aca0bdae089d197cd841f8805294" -> "sha256:3de81a3cef3c0c7d71de39bb8669588ded00fab6f4f6ef56e4de354445fff085" [label=""];
  "sha256:3de81a3cef3c0c7d71de39bb8669588ded00fab6f4f6ef56e4de354445fff085" -> "sha256:db2068b00caea507c357563ba7795dfdd1577ff272a36c51b52b93c33a149d8e" [label=""];
  "sha256:db2068b00caea507c357563ba7795dfdd1577ff272a36c51b52b93c33a149d8e" -> "sha256:cb663fb85ee41bda442262c16a6ef28b172ab30c7eb6ef05f1681f4ea16cf13b" [label=""];
  "sha256:cb663fb85ee41bda442262c16a6ef28b172ab30c7eb6ef05f1681f4ea16cf13b" -> "sha256:10969470150d92e6259fb67e26b586661835a4be56566ebea4d6f3755d34c42a" [label=""];
}

