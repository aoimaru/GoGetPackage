[app/sources/252797167.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:54eeb1685a5774323777ebfec01c6e6c9bc9dd79594b4de02f3df005263b6f77" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends git nodejs ca-certificates && ln -s /usr/bin/nodejs /usr/bin/node && apt-get clean" shape="box"];
  "sha256:1af184d697c9b5e0d34a129a16672e01c951c6866c840f458edf3a5b51bb38d1" [label="/bin/sh -c git clone $GIT_REPO /lb && cp /lb/contrib/config.js.example /lb/config.js && rm -rf /lb/.git" shape="box"];
  "sha256:d30c6a0f856bb1c9607fd7aca538dc4e9f24466617d3eb23294e24fb7de608e4" [label="mkdir{path=/lb}" shape="note"];
  "sha256:0f45ff99157e16abb3978695b9d8d782c4670973eaca0285d928659708b71953" [label="sha256:0f45ff99157e16abb3978695b9d8d782c4670973eaca0285d928659708b71953" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:54eeb1685a5774323777ebfec01c6e6c9bc9dd79594b4de02f3df005263b6f77" [label=""];
  "sha256:54eeb1685a5774323777ebfec01c6e6c9bc9dd79594b4de02f3df005263b6f77" -> "sha256:1af184d697c9b5e0d34a129a16672e01c951c6866c840f458edf3a5b51bb38d1" [label=""];
  "sha256:1af184d697c9b5e0d34a129a16672e01c951c6866c840f458edf3a5b51bb38d1" -> "sha256:d30c6a0f856bb1c9607fd7aca538dc4e9f24466617d3eb23294e24fb7de608e4" [label=""];
  "sha256:d30c6a0f856bb1c9607fd7aca538dc4e9f24466617d3eb23294e24fb7de608e4" -> "sha256:0f45ff99157e16abb3978695b9d8d782c4670973eaca0285d928659708b71953" [label=""];
}

