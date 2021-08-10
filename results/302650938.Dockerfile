[app/sources/302650938.Dockerfile]
digraph {
  "sha256:f16b398bd2c4a3ffeb3b3d4574d09d81843cda5dad734a4ab0fea5f0d6ad8f7a" [label="docker-image://docker.io/library/aerospike:3.9.0" shape="ellipse"];
  "sha256:d847a0fdad1fce7e84e31b4c06aaad6e4c3605790e73ba8651d6f034a66f18ec" [label="/bin/sh -c apt-get update && apt-get install -y netcat" shape="box"];
  "sha256:2739e6a8d5e0367e3479cf09f07881ab46e8538f2d7c4b09d5c815eac1a037a6" [label="sha256:2739e6a8d5e0367e3479cf09f07881ab46e8538f2d7c4b09d5c815eac1a037a6" shape="plaintext"];
  "sha256:f16b398bd2c4a3ffeb3b3d4574d09d81843cda5dad734a4ab0fea5f0d6ad8f7a" -> "sha256:d847a0fdad1fce7e84e31b4c06aaad6e4c3605790e73ba8651d6f034a66f18ec" [label=""];
  "sha256:d847a0fdad1fce7e84e31b4c06aaad6e4c3605790e73ba8651d6f034a66f18ec" -> "sha256:2739e6a8d5e0367e3479cf09f07881ab46e8538f2d7c4b09d5c815eac1a037a6" [label=""];
}

