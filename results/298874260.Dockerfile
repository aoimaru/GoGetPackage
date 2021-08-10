[app/sources/298874260.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:8914ed800eada6a42504e3a403cbcbe773e7cd6fae7894cbd0a8e7c6d5411813" [label="/bin/sh -c adduser --disabled-password --gecos '' ctf" shape="box"];
  "sha256:86b1a102ebbaf98ffc0c1bc90a37f58411d87be204a7d6083d517e2864c23a51" [label="/bin/sh -c apt-get update && apt-get install -y xinetd gcc make libc6-dev-i386 libssl-dev coreutils" shape="box"];
  "sha256:e3a43f00db241283a472ec007eab74f531723f81e028d848203548571c894d00" [label="mkdir{path=/home/ctf}" shape="note"];
  "sha256:c5698b8d946a2bc5e4b729eff2f09e9590e84ed19f2ad7008d3b71220326e97e" [label="local://context" shape="ellipse"];
  "sha256:de8cc351d93315aa36f78736daf9333795de79364da51d585d8099864acfe622" [label="copy{src=/src/*, dest=/home/ctf/}" shape="note"];
  "sha256:d84dce8160ca243ff4d674f5f3d859e4a7403bc362c5edcc8b431f52a49a20fa" [label="/bin/sh -c make" shape="box"];
  "sha256:4892563d51d30c9d857977e970f59f67a8d652140817b4103de5de17205b6b8e" [label="/bin/sh -c chown -R root:root ." shape="box"];
  "sha256:9d66dc449c66e45cb85a0a54ac01e58149aeb1478e008a2d0c589d5abefacb09" [label="copy{src=/xinetd.conf, dest=/etc/xinetd.conf}" shape="note"];
  "sha256:c11afd8ac4e88cbc072142d514335062eb3a293c7214eef9a3cc72a2c382329a" [label="/bin/sh -c mkdir /var/log/xinetd/" shape="box"];
  "sha256:88094da666304081aee68e9eff4572550b419b45b8f9401bacac432859540c51" [label="copy{src=/readmem.xinetd, dest=/etc/xinetd.d/readmem}" shape="note"];
  "sha256:071598b0ff620ecfa86acf1a48b20e58e8d2ec983a730c269a7b4e71c7c7e491" [label="sha256:071598b0ff620ecfa86acf1a48b20e58e8d2ec983a730c269a7b4e71c7c7e491" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:8914ed800eada6a42504e3a403cbcbe773e7cd6fae7894cbd0a8e7c6d5411813" [label=""];
  "sha256:8914ed800eada6a42504e3a403cbcbe773e7cd6fae7894cbd0a8e7c6d5411813" -> "sha256:86b1a102ebbaf98ffc0c1bc90a37f58411d87be204a7d6083d517e2864c23a51" [label=""];
  "sha256:86b1a102ebbaf98ffc0c1bc90a37f58411d87be204a7d6083d517e2864c23a51" -> "sha256:e3a43f00db241283a472ec007eab74f531723f81e028d848203548571c894d00" [label=""];
  "sha256:e3a43f00db241283a472ec007eab74f531723f81e028d848203548571c894d00" -> "sha256:de8cc351d93315aa36f78736daf9333795de79364da51d585d8099864acfe622" [label=""];
  "sha256:c5698b8d946a2bc5e4b729eff2f09e9590e84ed19f2ad7008d3b71220326e97e" -> "sha256:de8cc351d93315aa36f78736daf9333795de79364da51d585d8099864acfe622" [label=""];
  "sha256:de8cc351d93315aa36f78736daf9333795de79364da51d585d8099864acfe622" -> "sha256:d84dce8160ca243ff4d674f5f3d859e4a7403bc362c5edcc8b431f52a49a20fa" [label=""];
  "sha256:d84dce8160ca243ff4d674f5f3d859e4a7403bc362c5edcc8b431f52a49a20fa" -> "sha256:4892563d51d30c9d857977e970f59f67a8d652140817b4103de5de17205b6b8e" [label=""];
  "sha256:4892563d51d30c9d857977e970f59f67a8d652140817b4103de5de17205b6b8e" -> "sha256:9d66dc449c66e45cb85a0a54ac01e58149aeb1478e008a2d0c589d5abefacb09" [label=""];
  "sha256:c5698b8d946a2bc5e4b729eff2f09e9590e84ed19f2ad7008d3b71220326e97e" -> "sha256:9d66dc449c66e45cb85a0a54ac01e58149aeb1478e008a2d0c589d5abefacb09" [label=""];
  "sha256:9d66dc449c66e45cb85a0a54ac01e58149aeb1478e008a2d0c589d5abefacb09" -> "sha256:c11afd8ac4e88cbc072142d514335062eb3a293c7214eef9a3cc72a2c382329a" [label=""];
  "sha256:c11afd8ac4e88cbc072142d514335062eb3a293c7214eef9a3cc72a2c382329a" -> "sha256:88094da666304081aee68e9eff4572550b419b45b8f9401bacac432859540c51" [label=""];
  "sha256:c5698b8d946a2bc5e4b729eff2f09e9590e84ed19f2ad7008d3b71220326e97e" -> "sha256:88094da666304081aee68e9eff4572550b419b45b8f9401bacac432859540c51" [label=""];
  "sha256:88094da666304081aee68e9eff4572550b419b45b8f9401bacac432859540c51" -> "sha256:071598b0ff620ecfa86acf1a48b20e58e8d2ec983a730c269a7b4e71c7c7e491" [label=""];
}

