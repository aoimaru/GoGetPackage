[app/sources/475342802.Dockerfile]
digraph {
  "sha256:104ead44baf63ed5dc19b5b736e1eb701a1c4156842a79a68cf592a94cc892fb" [label="docker-image://docker.io/library/fedora:29" shape="ellipse"];
  "sha256:9bcbfcacb9401b74a457b42a9c727d31084fbd122249efbe2ef13313ba727eb3" [label="/bin/sh -c dnf -y install --allowerasing wget curl xterm gcc git xz make diffutils findutils expect valgrind valgrind-devel ccache dtc openssl-devel" shape="box"];
  "sha256:88189aca9fa31c27cee51784965240517b756b1aca96888f18f1737c0d570697" [label="/bin/sh -c dnf -y install gcc-powerpc64-linux-gnu" shape="box"];
  "sha256:de54fbad3118116e1c2ccd06e94cfc92bf61324a1f0f5ee3662308a2573f008a" [label="/bin/sh -c dnf -y install flex bison" shape="box"];
  "sha256:964b5422cffad7920f43d1f54417bd1456913c7668e056af9c2990d4413224dc" [label="/bin/sh -c if [ `arch` = \"x86_64\" ]; then dnf -y install http://public.dhe.ibm.com/software/server/powerfuncsim/p9/packages/v1.1-0/systemsim-p9-1.1-0.f22.x86_64.rpm; fi" shape="box"];
  "sha256:b204e33db8b7f4c041029388aa191f655627597cfb45f3095b6544c1a2c07609" [label="local://context" shape="ellipse"];
  "sha256:5aaa881608f89bfc52583b19eba104b38b0a4b9841d3ff6d13e12dff340644bb" [label="copy{src=/, dest=/build/}" shape="note"];
  "sha256:70bba8324df261e3f83c60f7bc5f611efd6202d69039ee06d3ce953fda8397a0" [label="mkdir{path=/build}" shape="note"];
  "sha256:4efff576b685a3505b07e7c267ca7e578cec103c223e322b01a5d86140b1633c" [label="sha256:4efff576b685a3505b07e7c267ca7e578cec103c223e322b01a5d86140b1633c" shape="plaintext"];
  "sha256:104ead44baf63ed5dc19b5b736e1eb701a1c4156842a79a68cf592a94cc892fb" -> "sha256:9bcbfcacb9401b74a457b42a9c727d31084fbd122249efbe2ef13313ba727eb3" [label=""];
  "sha256:9bcbfcacb9401b74a457b42a9c727d31084fbd122249efbe2ef13313ba727eb3" -> "sha256:88189aca9fa31c27cee51784965240517b756b1aca96888f18f1737c0d570697" [label=""];
  "sha256:88189aca9fa31c27cee51784965240517b756b1aca96888f18f1737c0d570697" -> "sha256:de54fbad3118116e1c2ccd06e94cfc92bf61324a1f0f5ee3662308a2573f008a" [label=""];
  "sha256:de54fbad3118116e1c2ccd06e94cfc92bf61324a1f0f5ee3662308a2573f008a" -> "sha256:964b5422cffad7920f43d1f54417bd1456913c7668e056af9c2990d4413224dc" [label=""];
  "sha256:964b5422cffad7920f43d1f54417bd1456913c7668e056af9c2990d4413224dc" -> "sha256:5aaa881608f89bfc52583b19eba104b38b0a4b9841d3ff6d13e12dff340644bb" [label=""];
  "sha256:b204e33db8b7f4c041029388aa191f655627597cfb45f3095b6544c1a2c07609" -> "sha256:5aaa881608f89bfc52583b19eba104b38b0a4b9841d3ff6d13e12dff340644bb" [label=""];
  "sha256:5aaa881608f89bfc52583b19eba104b38b0a4b9841d3ff6d13e12dff340644bb" -> "sha256:70bba8324df261e3f83c60f7bc5f611efd6202d69039ee06d3ce953fda8397a0" [label=""];
  "sha256:70bba8324df261e3f83c60f7bc5f611efd6202d69039ee06d3ce953fda8397a0" -> "sha256:4efff576b685a3505b07e7c267ca7e578cec103c223e322b01a5d86140b1633c" [label=""];
}

