[app/sources/345362686.Dockerfile]
digraph {
  "sha256:9ff8440a90083bf4396b43986b0e4345e56ab6014c55bfad40713306b531df24" [label="docker-image://docker.io/balenalib/armv7hf-alpine:3.8-build" shape="ellipse"];
  "sha256:7af0a91ecd03fe299e91811596b375bbc2f119a5adeee66e5df8a5972ae706fc" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:144823f14ae7456fde51f37a87ea2dd9f0a59113dd9d73ffdabf80d09fedde4c" [label="sha256:144823f14ae7456fde51f37a87ea2dd9f0a59113dd9d73ffdabf80d09fedde4c" shape="plaintext"];
  "sha256:9ff8440a90083bf4396b43986b0e4345e56ab6014c55bfad40713306b531df24" -> "sha256:7af0a91ecd03fe299e91811596b375bbc2f119a5adeee66e5df8a5972ae706fc" [label=""];
  "sha256:7af0a91ecd03fe299e91811596b375bbc2f119a5adeee66e5df8a5972ae706fc" -> "sha256:144823f14ae7456fde51f37a87ea2dd9f0a59113dd9d73ffdabf80d09fedde4c" [label=""];
}

