[app/sources/178765319.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:c0123b78a22557a67045aa0ab12fd18149d478c14166909d505f1e492495314a" [label="/bin/sh -c yum update -y && yum install -y wget && wget https://mirror.its.sfu.ca/mirror/CentOS-Third-Party/NSG/common/x86_64/jre-7u80-linux-x64.rpm && yum localinstall -y /jre-7u80-linux-x64.rpm && rm -f /jre-7u80-linux-x64.rpm && rm -rf /var/cache/yum" shape="box"];
  "sha256:560bbe1ee709da04593183e320e72c833686a0adce254bc09a4da19699485041" [label="mkdir{path=/root}" shape="note"];
  "sha256:f72503b57c4c0bf36685413c9ce32aa022116bfd2ce466598e87282a05c2975c" [label="sha256:f72503b57c4c0bf36685413c9ce32aa022116bfd2ce466598e87282a05c2975c" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:c0123b78a22557a67045aa0ab12fd18149d478c14166909d505f1e492495314a" [label=""];
  "sha256:c0123b78a22557a67045aa0ab12fd18149d478c14166909d505f1e492495314a" -> "sha256:560bbe1ee709da04593183e320e72c833686a0adce254bc09a4da19699485041" [label=""];
  "sha256:560bbe1ee709da04593183e320e72c833686a0adce254bc09a4da19699485041" -> "sha256:f72503b57c4c0bf36685413c9ce32aa022116bfd2ce466598e87282a05c2975c" [label=""];
}

