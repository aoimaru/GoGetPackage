[app/sources/201039028.Dockerfile]
digraph {
  "sha256:588b8a4ae41e4badce2e42f2807091d1bb2e419b5322bcfe2837b0ab0da99f45" [label="docker-image://docker.io/cloudsuite/java:latest" shape="ellipse"];
  "sha256:12d987456905abe21b0f0440ebb1ce029d29b100c451be6d31abd5a8c6f6eeae" [label="/bin/sh -c apt-get update  && apt-get install software-properties-common wget -y  && buildDeps='python'  && set -x  && apt-get install -y $buildDeps --no-install-recommends  && apt-get autoremove && apt-get clean && apt-get upgrade -y  && groupadd -r cassandra && useradd -r -g cassandra cassandra" shape="box"];
  "sha256:336670656370e664250f7af681b45b547d5f69398bef4b52f2f8aac8ca23a2e5" [label="/bin/sh -c wget -q https://github.com/brianfrankcooper/YCSB/releases/download/0.3.0/ycsb-0.3.0.tar.gz -O /ycsb-0.3.0.tar.gz  && tar -xzf /ycsb-0.3.0.tar.gz && rm /ycsb-0.3.0.tar.gz && mv /ycsb-0.3.0 /ycsb  && chown cassandra:cassandra -R /ycsb/workloads" shape="box"];
  "sha256:e25af5d15589d68f6b1effc9212fa2e4986303e06be1129df3c2fad20945d71f" [label="local://context" shape="ellipse"];
  "sha256:2e3d249523922fe86bffd6fcdbe4e76364b203aa60048aee40c5f9e9578a027d" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:e68ff39d24139287a6e79cb8b8ff868add7ef07332f94385a8b6ba6de177aa22" [label="/bin/sh -c chmod +x /docker-entrypoint.sh" shape="box"];
  "sha256:185dc08fc62dcfd035b34bf0f645bd5811f89201cda139f068f2c622d0da2511" [label="sha256:185dc08fc62dcfd035b34bf0f645bd5811f89201cda139f068f2c622d0da2511" shape="plaintext"];
  "sha256:588b8a4ae41e4badce2e42f2807091d1bb2e419b5322bcfe2837b0ab0da99f45" -> "sha256:12d987456905abe21b0f0440ebb1ce029d29b100c451be6d31abd5a8c6f6eeae" [label=""];
  "sha256:12d987456905abe21b0f0440ebb1ce029d29b100c451be6d31abd5a8c6f6eeae" -> "sha256:336670656370e664250f7af681b45b547d5f69398bef4b52f2f8aac8ca23a2e5" [label=""];
  "sha256:336670656370e664250f7af681b45b547d5f69398bef4b52f2f8aac8ca23a2e5" -> "sha256:2e3d249523922fe86bffd6fcdbe4e76364b203aa60048aee40c5f9e9578a027d" [label=""];
  "sha256:e25af5d15589d68f6b1effc9212fa2e4986303e06be1129df3c2fad20945d71f" -> "sha256:2e3d249523922fe86bffd6fcdbe4e76364b203aa60048aee40c5f9e9578a027d" [label=""];
  "sha256:2e3d249523922fe86bffd6fcdbe4e76364b203aa60048aee40c5f9e9578a027d" -> "sha256:e68ff39d24139287a6e79cb8b8ff868add7ef07332f94385a8b6ba6de177aa22" [label=""];
  "sha256:e68ff39d24139287a6e79cb8b8ff868add7ef07332f94385a8b6ba6de177aa22" -> "sha256:185dc08fc62dcfd035b34bf0f645bd5811f89201cda139f068f2c622d0da2511" [label=""];
}

