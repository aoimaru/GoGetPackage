[app/sources/331019150.Dockerfile]
digraph {
  "sha256:aded7d7eb3b3a3cf4962b2a9def01e163bb3608d7edfccd63d31bfe5535d1988" [label="docker-image://docker.io/library/cudabase:latest" shape="ellipse"];
  "sha256:df217d360c4e5b121175133fba8c7387b478c22facb9bafd55a65d4d0a7207f8" [label="/bin/sh -c apt-get update && apt-get install -y git pkg-config wget" shape="box"];
  "sha256:508e0c54da43203f6e229d875f6baacd35fbd82a7bbe9a1f37fab5c971c3d58b" [label="/bin/sh -c apt-get install -y libgtk2.0-dev pkg-config build-essential cmake libcanberra-gtk-module libcanberra-gtk3-module" shape="box"];
  "sha256:56aa20b9e9b92073c7e817688df17f536afcddd2e88eed57ad9f31822c6996ca" [label="/bin/sh -c git clone https://github.com/AlexanderRobles21/OpenCVTX2" shape="box"];
  "sha256:886610799b344e7bd49a53b0ec1fa17a22c461028a7be488622a8b45198eec82" [label="mkdir{path=/OpenCVTX2}" shape="note"];
  "sha256:c96af20568853e5a8a5fd6a76e1edda368fac31221ac33f9ccc1f4607936d2be" [label="/bin/sh -c sed -i '72i -D WITH_LIBV4L=ON \\\\' buildOpenCV.sh" shape="box"];
  "sha256:ac2f4b493c535ff8d84dcbda65976f7e091ac210f18a953ca2040be248e23290" [label="/bin/sh -c sh buildOpenCV.sh" shape="box"];
  "sha256:e06b4e4c3fff174fce344efb36d7d0a081095948acbb0a43d97680a4db0dab09" [label="mkdir{path=/root/opencv/build}" shape="note"];
  "sha256:3a583776bd0e5cc5836bdc38b14be20c55212bcf4be379ef781e8e7e684a9366" [label="/bin/sh -c make" shape="box"];
  "sha256:014c4f3e990bbd652343b9ea047c23d2175b03dc8ff2de29ede31a8b8d9be786" [label="/bin/sh -c sudo make install" shape="box"];
  "sha256:a3d949ca2125efe9e1680c57701d54e8e7f95af94c87263ed94ce893c90dc232" [label="/bin/sh -c git clone https://github.com/pjreddie/darknet.git" shape="box"];
  "sha256:8e66e97d69a735783c4cc7150e1e6409fc83d31eed5d4d0af991e25412985af1" [label="mkdir{path=/darknet}" shape="note"];
  "sha256:1034511f704244227260940c8df1dc910ce9010d54b93427473adc2905f8acfc" [label="local://context" shape="ellipse"];
  "sha256:9b517d7e330a275b56114ba56b56f29c4c4d2df80369cd22e26d161377ae9ba2" [label="copy{src=/Makefile, dest=/darknet/}" shape="note"];
  "sha256:3e6ff8ef00694965fb4c9b35a9496e7f149728617fa790364ff0ff62a578a467" [label="/bin/sh -c make -j4" shape="box"];
  "sha256:d469dc4cc60a8a88db447fff86f5e8692ae49976fd39d69b8a905a714549200a" [label="/bin/sh -c wget  https://pjreddie.com/media/files/yolov3.weights" shape="box"];
  "sha256:5efc8ded143a924e2cd5438390fd35f6f9323e3705e30394531a02dd3d77905e" [label="/bin/sh -c wget https://pjreddie.com/media/files/yolov3-tiny.weights" shape="box"];
  "sha256:dddf9166e7d54d8471b4919dfec9e38070c965d96ac4db8a4dc2518477254524" [label="sha256:dddf9166e7d54d8471b4919dfec9e38070c965d96ac4db8a4dc2518477254524" shape="plaintext"];
  "sha256:aded7d7eb3b3a3cf4962b2a9def01e163bb3608d7edfccd63d31bfe5535d1988" -> "sha256:df217d360c4e5b121175133fba8c7387b478c22facb9bafd55a65d4d0a7207f8" [label=""];
  "sha256:df217d360c4e5b121175133fba8c7387b478c22facb9bafd55a65d4d0a7207f8" -> "sha256:508e0c54da43203f6e229d875f6baacd35fbd82a7bbe9a1f37fab5c971c3d58b" [label=""];
  "sha256:508e0c54da43203f6e229d875f6baacd35fbd82a7bbe9a1f37fab5c971c3d58b" -> "sha256:56aa20b9e9b92073c7e817688df17f536afcddd2e88eed57ad9f31822c6996ca" [label=""];
  "sha256:56aa20b9e9b92073c7e817688df17f536afcddd2e88eed57ad9f31822c6996ca" -> "sha256:886610799b344e7bd49a53b0ec1fa17a22c461028a7be488622a8b45198eec82" [label=""];
  "sha256:886610799b344e7bd49a53b0ec1fa17a22c461028a7be488622a8b45198eec82" -> "sha256:c96af20568853e5a8a5fd6a76e1edda368fac31221ac33f9ccc1f4607936d2be" [label=""];
  "sha256:c96af20568853e5a8a5fd6a76e1edda368fac31221ac33f9ccc1f4607936d2be" -> "sha256:ac2f4b493c535ff8d84dcbda65976f7e091ac210f18a953ca2040be248e23290" [label=""];
  "sha256:ac2f4b493c535ff8d84dcbda65976f7e091ac210f18a953ca2040be248e23290" -> "sha256:e06b4e4c3fff174fce344efb36d7d0a081095948acbb0a43d97680a4db0dab09" [label=""];
  "sha256:e06b4e4c3fff174fce344efb36d7d0a081095948acbb0a43d97680a4db0dab09" -> "sha256:3a583776bd0e5cc5836bdc38b14be20c55212bcf4be379ef781e8e7e684a9366" [label=""];
  "sha256:3a583776bd0e5cc5836bdc38b14be20c55212bcf4be379ef781e8e7e684a9366" -> "sha256:014c4f3e990bbd652343b9ea047c23d2175b03dc8ff2de29ede31a8b8d9be786" [label=""];
  "sha256:014c4f3e990bbd652343b9ea047c23d2175b03dc8ff2de29ede31a8b8d9be786" -> "sha256:a3d949ca2125efe9e1680c57701d54e8e7f95af94c87263ed94ce893c90dc232" [label=""];
  "sha256:a3d949ca2125efe9e1680c57701d54e8e7f95af94c87263ed94ce893c90dc232" -> "sha256:8e66e97d69a735783c4cc7150e1e6409fc83d31eed5d4d0af991e25412985af1" [label=""];
  "sha256:8e66e97d69a735783c4cc7150e1e6409fc83d31eed5d4d0af991e25412985af1" -> "sha256:9b517d7e330a275b56114ba56b56f29c4c4d2df80369cd22e26d161377ae9ba2" [label=""];
  "sha256:1034511f704244227260940c8df1dc910ce9010d54b93427473adc2905f8acfc" -> "sha256:9b517d7e330a275b56114ba56b56f29c4c4d2df80369cd22e26d161377ae9ba2" [label=""];
  "sha256:9b517d7e330a275b56114ba56b56f29c4c4d2df80369cd22e26d161377ae9ba2" -> "sha256:3e6ff8ef00694965fb4c9b35a9496e7f149728617fa790364ff0ff62a578a467" [label=""];
  "sha256:3e6ff8ef00694965fb4c9b35a9496e7f149728617fa790364ff0ff62a578a467" -> "sha256:d469dc4cc60a8a88db447fff86f5e8692ae49976fd39d69b8a905a714549200a" [label=""];
  "sha256:d469dc4cc60a8a88db447fff86f5e8692ae49976fd39d69b8a905a714549200a" -> "sha256:5efc8ded143a924e2cd5438390fd35f6f9323e3705e30394531a02dd3d77905e" [label=""];
  "sha256:5efc8ded143a924e2cd5438390fd35f6f9323e3705e30394531a02dd3d77905e" -> "sha256:dddf9166e7d54d8471b4919dfec9e38070c965d96ac4db8a4dc2518477254524" [label=""];
}

