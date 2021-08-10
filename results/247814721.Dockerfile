[app/sources/247814721.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:cb3e155e82320fe545f69df40faac76d6390eebc5787dc0bf8c276e95b6c7ef0" [label="/bin/sh -c apt-get update &&   apt-get install -y expect wget net-tools iproute ipppd iptables ssh curl &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c8b82c6046f3dba12cf681f14ac5e77aecbd9f58212e094e2edafaa8102e7f9a" [label="mkdir{path=/root}" shape="note"];
  "sha256:caea9cc67cbaa5a5ed2d24966129d20134da011e40794dea33d2e3630cdb3e7f" [label="/bin/sh -c wget 'https://hadler.me/files/forticlient-sslvpn_4.4.2329-1_amd64.deb' -O forticlient-sslvpn_amd64.deb" shape="box"];
  "sha256:672b60ab6bc48d8c77e5a86c3bd0bb28cc9406a313915a0462e70c0fb71024d8" [label="/bin/sh -c dpkg -x forticlient-sslvpn_amd64.deb /usr/share/forticlient" shape="box"];
  "sha256:42a2e9b74ad5cf50e1f9c548600cdfec5940ab4662bfddafbec9d19cd87891e7" [label="/bin/sh -c /usr/share/forticlient/opt/forticlient-sslvpn/64bit/helper/setup.linux.sh 2" shape="box"];
  "sha256:b7247b4d1cbc1277b22ef52a3eb2a551a9d18cb070542b80e7aa600861024fda" [label="local://context" shape="ellipse"];
  "sha256:a7547b4e640a5b786a3466d8a87fc83f73cdbf77ea750d3c22c831e3582493a4" [label="copy{src=/forticlient, dest=/usr/bin/forticlient}" shape="note"];
  "sha256:7272e3b8a1fc444a24dfb3d053b354a32f0547958b109d3453622821d17e3713" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:56e83e204f52acc4c66fcd2e3253c63f804761c3f99ce08f14662c28f425c509" [label="sha256:56e83e204f52acc4c66fcd2e3253c63f804761c3f99ce08f14662c28f425c509" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:cb3e155e82320fe545f69df40faac76d6390eebc5787dc0bf8c276e95b6c7ef0" [label=""];
  "sha256:cb3e155e82320fe545f69df40faac76d6390eebc5787dc0bf8c276e95b6c7ef0" -> "sha256:c8b82c6046f3dba12cf681f14ac5e77aecbd9f58212e094e2edafaa8102e7f9a" [label=""];
  "sha256:c8b82c6046f3dba12cf681f14ac5e77aecbd9f58212e094e2edafaa8102e7f9a" -> "sha256:caea9cc67cbaa5a5ed2d24966129d20134da011e40794dea33d2e3630cdb3e7f" [label=""];
  "sha256:caea9cc67cbaa5a5ed2d24966129d20134da011e40794dea33d2e3630cdb3e7f" -> "sha256:672b60ab6bc48d8c77e5a86c3bd0bb28cc9406a313915a0462e70c0fb71024d8" [label=""];
  "sha256:672b60ab6bc48d8c77e5a86c3bd0bb28cc9406a313915a0462e70c0fb71024d8" -> "sha256:42a2e9b74ad5cf50e1f9c548600cdfec5940ab4662bfddafbec9d19cd87891e7" [label=""];
  "sha256:42a2e9b74ad5cf50e1f9c548600cdfec5940ab4662bfddafbec9d19cd87891e7" -> "sha256:a7547b4e640a5b786a3466d8a87fc83f73cdbf77ea750d3c22c831e3582493a4" [label=""];
  "sha256:b7247b4d1cbc1277b22ef52a3eb2a551a9d18cb070542b80e7aa600861024fda" -> "sha256:a7547b4e640a5b786a3466d8a87fc83f73cdbf77ea750d3c22c831e3582493a4" [label=""];
  "sha256:a7547b4e640a5b786a3466d8a87fc83f73cdbf77ea750d3c22c831e3582493a4" -> "sha256:7272e3b8a1fc444a24dfb3d053b354a32f0547958b109d3453622821d17e3713" [label=""];
  "sha256:b7247b4d1cbc1277b22ef52a3eb2a551a9d18cb070542b80e7aa600861024fda" -> "sha256:7272e3b8a1fc444a24dfb3d053b354a32f0547958b109d3453622821d17e3713" [label=""];
  "sha256:7272e3b8a1fc444a24dfb3d053b354a32f0547958b109d3453622821d17e3713" -> "sha256:56e83e204f52acc4c66fcd2e3253c63f804761c3f99ce08f14662c28f425c509" [label=""];
}

