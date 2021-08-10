[app/sources/252787303.Dockerfile]
digraph {
  "sha256:f76512dfd3504d05968f511282959e096d4373cdf5b9fed73f0e67794dd69d9a" [label="docker-image://docker.io/rocker/r-base:latest" shape="ellipse"];
  "sha256:71f50417e74e34a99d04c3c01065e9be50f6d018879af1b28e4159c6a868a4d0" [label="/bin/sh -c apt-get update && apt-get install -y libxml2-dev libcurl4-gnutls-dev" shape="box"];
  "sha256:55b87fd0079479fa05a3909876354252155a0708917a4e492755022ee74b67af" [label="local://context" shape="ellipse"];
  "sha256:1390fb6f86f392919c81531bca9b21b83960c35fa2d918cbc37e16b8e572a9e0" [label="copy{src=/mlb-analytics-engine.R, dest=/}" shape="note"];
  "sha256:2e8ed2aedbda1ab09ac10cdeaad6e4e4006bb533f61aa98b3c712f82ceeac7ca" [label="sha256:2e8ed2aedbda1ab09ac10cdeaad6e4e4006bb533f61aa98b3c712f82ceeac7ca" shape="plaintext"];
  "sha256:f76512dfd3504d05968f511282959e096d4373cdf5b9fed73f0e67794dd69d9a" -> "sha256:71f50417e74e34a99d04c3c01065e9be50f6d018879af1b28e4159c6a868a4d0" [label=""];
  "sha256:71f50417e74e34a99d04c3c01065e9be50f6d018879af1b28e4159c6a868a4d0" -> "sha256:1390fb6f86f392919c81531bca9b21b83960c35fa2d918cbc37e16b8e572a9e0" [label=""];
  "sha256:55b87fd0079479fa05a3909876354252155a0708917a4e492755022ee74b67af" -> "sha256:1390fb6f86f392919c81531bca9b21b83960c35fa2d918cbc37e16b8e572a9e0" [label=""];
  "sha256:1390fb6f86f392919c81531bca9b21b83960c35fa2d918cbc37e16b8e572a9e0" -> "sha256:2e8ed2aedbda1ab09ac10cdeaad6e4e4006bb533f61aa98b3c712f82ceeac7ca" [label=""];
}

