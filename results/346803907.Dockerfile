[app/sources/346803907.Dockerfile]
digraph {
  "sha256:87acc3184083a4445abac2cdc7fb238ef2860a7d70454c089f2fe2cdec72c8c3" [label="docker-image://docker.io/prestashop/base:7.1-apache" shape="ellipse"];
  "sha256:975d130ea3d9e2f71e63048939f1be4d0148f69be7eab416f817a79a07e9c588" [label="docker-image://docker.io/google/cloud-sdk:latest" shape="ellipse"];
  "sha256:b6b6e5ed5591f00627fa0785253db67bb2a990777cee0b66f0840521bb37f767" [label="/bin/sh -c gsutil cp `gsutil ls gs://prestashop-core-nightly/ | grep -E 'develop.+\\.zip$' | tail -1` /tmp/prestashop.zip" shape="box"];
  "sha256:3522e813a3ad010c09a006ee2da9f942340f831d09ac9e33655e124d521a1226" [label="copy{src=/tmp/prestashop.zip, dest=/tmp/prestashop.zip}" shape="note"];
  "sha256:71b6e9ebb8ae1b5f16cf0fd228ff6623d318d353964c9e16bdc41706337c0691" [label="/bin/sh -c mkdir -p /tmp/data-ps \t&& unzip -q /tmp/prestashop.zip -d /tmp/data-ps/ \t&& bash /tmp/ps-extractor.sh /tmp/data-ps \t&& rm /tmp/prestashop.zip" shape="box"];
  "sha256:6d1f51b4aa102cbcd8a28bd12b91ea353155169df3b165f6152e128038fdedd0" [label="sha256:6d1f51b4aa102cbcd8a28bd12b91ea353155169df3b165f6152e128038fdedd0" shape="plaintext"];
  "sha256:975d130ea3d9e2f71e63048939f1be4d0148f69be7eab416f817a79a07e9c588" -> "sha256:b6b6e5ed5591f00627fa0785253db67bb2a990777cee0b66f0840521bb37f767" [label=""];
  "sha256:87acc3184083a4445abac2cdc7fb238ef2860a7d70454c089f2fe2cdec72c8c3" -> "sha256:3522e813a3ad010c09a006ee2da9f942340f831d09ac9e33655e124d521a1226" [label=""];
  "sha256:b6b6e5ed5591f00627fa0785253db67bb2a990777cee0b66f0840521bb37f767" -> "sha256:3522e813a3ad010c09a006ee2da9f942340f831d09ac9e33655e124d521a1226" [label=""];
  "sha256:3522e813a3ad010c09a006ee2da9f942340f831d09ac9e33655e124d521a1226" -> "sha256:71b6e9ebb8ae1b5f16cf0fd228ff6623d318d353964c9e16bdc41706337c0691" [label=""];
  "sha256:71b6e9ebb8ae1b5f16cf0fd228ff6623d318d353964c9e16bdc41706337c0691" -> "sha256:6d1f51b4aa102cbcd8a28bd12b91ea353155169df3b165f6152e128038fdedd0" [label=""];
}

