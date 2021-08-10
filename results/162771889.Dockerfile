[app/sources/162771889.Dockerfile]
digraph {
  "sha256:d353e9be6780a97224a716fa2fb56ff83a5e65b2cacac68ca7d6a7eae7352a41" [label="docker-image://docker.io/library/opensuse:leap" shape="ellipse"];
  "sha256:4a030c4f65db53a84bda4e53226bfb35c0baa1bcd4cc634ae724830b13fabbc9" [label="/bin/sh -c zypper ar -Gf http://download.opensuse.org/repositories/Virtualization:/containers/openSUSE_Leap_42.2/ containers &&     zypper ref &&     zypper -n in etcd &&     zypper clean -a" shape="box"];
  "sha256:438ef4df8f2ca77baf6a561c2a854ce4451e879f33b644f397385506a7cbc003" [label="sha256:438ef4df8f2ca77baf6a561c2a854ce4451e879f33b644f397385506a7cbc003" shape="plaintext"];
  "sha256:d353e9be6780a97224a716fa2fb56ff83a5e65b2cacac68ca7d6a7eae7352a41" -> "sha256:4a030c4f65db53a84bda4e53226bfb35c0baa1bcd4cc634ae724830b13fabbc9" [label=""];
  "sha256:4a030c4f65db53a84bda4e53226bfb35c0baa1bcd4cc634ae724830b13fabbc9" -> "sha256:438ef4df8f2ca77baf6a561c2a854ce4451e879f33b644f397385506a7cbc003" [label=""];
}

