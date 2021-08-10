[app/sources/166100596.Dockerfile]
digraph {
  "sha256:a2ee2b563f72d08a80b1057cce0fd71ae31a2514b78648a1c446c823bc6dc736" [label="docker-image://docker.io/library/debian:stable" shape="ellipse"];
  "sha256:bcd52eb432baf544747343989700d2558fec8ebe09bd1f86622bdcecb20f7f07" [label="/bin/sh -c mkdir /var/run/sshd" shape="box"];
  "sha256:d8b567786c8561ee9544f9e1df1db555ecd4a43bdd71324f5d600facef168693" [label="/bin/sh -c apt-get update && apt-get install -y openssh-server sudo" shape="box"];
  "sha256:e04a027f5e9987dfd41fecfa44d5d6d0fa1d7553ff5a144bef1132a9dac171f2" [label="/bin/sh -c useradd vagrant --create-home --user-group --groups sudo" shape="box"];
  "sha256:5a876afebe49f4ac9371fb95dfaa56b14649d060d4495fa8e9aff659f0dd3104" [label="/bin/sh -c echo 'vagrant:vagrant' | chpasswd" shape="box"];
  "sha256:b124783a72a1d5ad62fccd10a7b4c71830fdf7f3f8be142bdd9bd8458f170f50" [label="/bin/sh -c echo root:vagrant' | chpasswd" shape="box"];
  "sha256:c4ac43082606e12646fb02cab5a67ac9553d2dcd06dbdcf2bb403378a153219b" [label="sha256:c4ac43082606e12646fb02cab5a67ac9553d2dcd06dbdcf2bb403378a153219b" shape="plaintext"];
  "sha256:a2ee2b563f72d08a80b1057cce0fd71ae31a2514b78648a1c446c823bc6dc736" -> "sha256:bcd52eb432baf544747343989700d2558fec8ebe09bd1f86622bdcecb20f7f07" [label=""];
  "sha256:bcd52eb432baf544747343989700d2558fec8ebe09bd1f86622bdcecb20f7f07" -> "sha256:d8b567786c8561ee9544f9e1df1db555ecd4a43bdd71324f5d600facef168693" [label=""];
  "sha256:d8b567786c8561ee9544f9e1df1db555ecd4a43bdd71324f5d600facef168693" -> "sha256:e04a027f5e9987dfd41fecfa44d5d6d0fa1d7553ff5a144bef1132a9dac171f2" [label=""];
  "sha256:e04a027f5e9987dfd41fecfa44d5d6d0fa1d7553ff5a144bef1132a9dac171f2" -> "sha256:5a876afebe49f4ac9371fb95dfaa56b14649d060d4495fa8e9aff659f0dd3104" [label=""];
  "sha256:5a876afebe49f4ac9371fb95dfaa56b14649d060d4495fa8e9aff659f0dd3104" -> "sha256:b124783a72a1d5ad62fccd10a7b4c71830fdf7f3f8be142bdd9bd8458f170f50" [label=""];
  "sha256:b124783a72a1d5ad62fccd10a7b4c71830fdf7f3f8be142bdd9bd8458f170f50" -> "sha256:c4ac43082606e12646fb02cab5a67ac9553d2dcd06dbdcf2bb403378a153219b" [label=""];
}

