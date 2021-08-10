[app/sources/466810331.Dockerfile]
digraph {
  "sha256:cc4bb19216e47aeaea0e0119848e5b5912f2ec4adfd29aafc4ac5f71a67a5163" [label="local://context" shape="ellipse"];
  "sha256:09d4b800532f93fac4376c65bf6b30a6455757f7bd775329eaedff0f03acbb9b" [label="docker-image://docker.io/fabric8/java-centos-openjdk8-jdk:latest" shape="ellipse"];
  "sha256:b8845eddfba884318500184a0acd6b64195112d128f2949032b52985872cc268" [label="copy{src=/target/*.jar, dest=/deployments}" shape="note"];
  "sha256:30951c6cb0f8c264b3442080dbb742a7f75cf3b871ef83c6e50851a80193cd1a" [label="sha256:30951c6cb0f8c264b3442080dbb742a7f75cf3b871ef83c6e50851a80193cd1a" shape="plaintext"];
  "sha256:09d4b800532f93fac4376c65bf6b30a6455757f7bd775329eaedff0f03acbb9b" -> "sha256:b8845eddfba884318500184a0acd6b64195112d128f2949032b52985872cc268" [label=""];
  "sha256:cc4bb19216e47aeaea0e0119848e5b5912f2ec4adfd29aafc4ac5f71a67a5163" -> "sha256:b8845eddfba884318500184a0acd6b64195112d128f2949032b52985872cc268" [label=""];
  "sha256:b8845eddfba884318500184a0acd6b64195112d128f2949032b52985872cc268" -> "sha256:30951c6cb0f8c264b3442080dbb742a7f75cf3b871ef83c6e50851a80193cd1a" [label=""];
}

