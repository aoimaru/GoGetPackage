[app/sources/210888176.Dockerfile]
digraph {
  "sha256:5400564884d1c79efa2edc772b87235918bc941cc8be201ddb092b542a152a1c" [label="docker-image://docker.io/microsoft/dotnet:latest" shape="ellipse"];
  "sha256:5f1d82b5529cbe8ea07aa0d350ad72216ad2718f1493f712636998780e90fad2" [label="local://context" shape="ellipse"];
  "sha256:4c2ba3c0902ec54750d46fdb4959e24c266c104aa4d7462317d73643efc6a149" [label="copy{src=/AspNetCore1, dest=/src}" shape="note"];
  "sha256:18578f854ac1b7d8d8c28405f63dc0166f028f94e2036a796f79a03fa3b73abb" [label="/bin/sh -c cd /src && dotnet restore" shape="box"];
  "sha256:08005047c95fcc0d023cd473aae38ef434eab95b7e050efacaf9b7987ad6ac7a" [label="mkdir{path=/src}" shape="note"];
  "sha256:97d3783c68776ad6886d4a3f7672eaaf681b627b4e3f01640d636c17ba1bf3f1" [label="sha256:97d3783c68776ad6886d4a3f7672eaaf681b627b4e3f01640d636c17ba1bf3f1" shape="plaintext"];
  "sha256:5400564884d1c79efa2edc772b87235918bc941cc8be201ddb092b542a152a1c" -> "sha256:4c2ba3c0902ec54750d46fdb4959e24c266c104aa4d7462317d73643efc6a149" [label=""];
  "sha256:5f1d82b5529cbe8ea07aa0d350ad72216ad2718f1493f712636998780e90fad2" -> "sha256:4c2ba3c0902ec54750d46fdb4959e24c266c104aa4d7462317d73643efc6a149" [label=""];
  "sha256:4c2ba3c0902ec54750d46fdb4959e24c266c104aa4d7462317d73643efc6a149" -> "sha256:18578f854ac1b7d8d8c28405f63dc0166f028f94e2036a796f79a03fa3b73abb" [label=""];
  "sha256:18578f854ac1b7d8d8c28405f63dc0166f028f94e2036a796f79a03fa3b73abb" -> "sha256:08005047c95fcc0d023cd473aae38ef434eab95b7e050efacaf9b7987ad6ac7a" [label=""];
  "sha256:08005047c95fcc0d023cd473aae38ef434eab95b7e050efacaf9b7987ad6ac7a" -> "sha256:97d3783c68776ad6886d4a3f7672eaaf681b627b4e3f01640d636c17ba1bf3f1" [label=""];
}

