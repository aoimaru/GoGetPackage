[app/sources/273066147.Dockerfile]
digraph {
  "sha256:8a8dd296f937ca4e425adeb999e59b183020a915d2af22b09bf02d8be9f39738" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:0143ebc01fe5d2ee3562debebc66bc890774a72ab60aa6c29466f5a3d7625430" [label="/bin/sh -c apt update && apt upgrade -y" shape="box"];
  "sha256:2117d0449d7e5350624871db1475f1153899bedd2dd4b1f886713ecc51696648" [label="mkdir{path=/root}" shape="note"];
  "sha256:1f2b9faa75faee438528c6fe8cd457689ee52247266cda49e05d346de700aa7b" [label="copy{src=/requirements.txt, dest=/root/}" shape="note"];
  "sha256:98beb599d61187c1593d856e30af8c33ed9fd3194edaf8779d0258c0f38b8637" [label="/bin/sh -c apt install python2.7 python-virtualenv -y" shape="box"];
  "sha256:71cd64fc12676bd5df7856023a236ef0db67f6186f5033e403e2e1779a0abbac" [label="/bin/sh -c virtualenv venv" shape="box"];
  "sha256:29135e4d78e631cfb74cf7edebdca4cec28257aca9ea09803d735d82456a7622" [label="/bin/sh -c /root/venv/bin/pip install -r requirements.txt" shape="box"];
  "sha256:494a0d2470c07e85c59dc2155b9c5e1757e66ff5b8587985c6051263c189314e" [label="/bin/sh -c apt install git python-dev gcc -y" shape="box"];
  "sha256:84006e8cd53a55dcde347e0acec337949eec73fc32b03be9df1ba929755eb2ba" [label="/bin/sh -c /root/venv/bin/pip install -e git+https://github.com/geopython/pywps.git@5efa0513fe096b8eb3b3a0399b22403209623ff3#egg=pywps-dev" shape="box"];
  "sha256:31266648dec676e48309b699a7c588aaa94d1e18dafdb3e9164f25ea04060775" [label="/bin/sh -c /root/venv/bin/pip install flufl.enum pathlib" shape="box"];
  "sha256:6e3d8e411f10bcb7e2ffb2d829c9341f08446bc8291acc2ee5b77209b9ed4b27" [label="copy{src=/worker, dest=/root/worker/}" shape="note"];
  "sha256:1076267b6abd48cdd1f4b7fbc8a8b29e58658969a040c905fa521519fcca072f" [label="copy{src=/wait-service.sh, dest=/root/}" shape="note"];
  "sha256:c912653e1606c642c17b35786093f1c8a5c5b7a7b74808b7a208cc075aa70fa6" [label="/bin/sh -c mkdir /root/worker/processes/" shape="box"];
  "sha256:c757bc81f79b4e5b062086308380167d5793cc4f8b9f9575b0844e7e05bfda75" [label="/bin/sh -c mkdir /root/workdir/" shape="box"];
  "sha256:4651b23437e802338a2829a0f4b870997cf02c50fa30676aa1198aad0cd85ee1" [label="sha256:4651b23437e802338a2829a0f4b870997cf02c50fa30676aa1198aad0cd85ee1" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:0143ebc01fe5d2ee3562debebc66bc890774a72ab60aa6c29466f5a3d7625430" [label=""];
  "sha256:0143ebc01fe5d2ee3562debebc66bc890774a72ab60aa6c29466f5a3d7625430" -> "sha256:2117d0449d7e5350624871db1475f1153899bedd2dd4b1f886713ecc51696648" [label=""];
  "sha256:2117d0449d7e5350624871db1475f1153899bedd2dd4b1f886713ecc51696648" -> "sha256:1f2b9faa75faee438528c6fe8cd457689ee52247266cda49e05d346de700aa7b" [label=""];
  "sha256:8a8dd296f937ca4e425adeb999e59b183020a915d2af22b09bf02d8be9f39738" -> "sha256:1f2b9faa75faee438528c6fe8cd457689ee52247266cda49e05d346de700aa7b" [label=""];
  "sha256:1f2b9faa75faee438528c6fe8cd457689ee52247266cda49e05d346de700aa7b" -> "sha256:98beb599d61187c1593d856e30af8c33ed9fd3194edaf8779d0258c0f38b8637" [label=""];
  "sha256:98beb599d61187c1593d856e30af8c33ed9fd3194edaf8779d0258c0f38b8637" -> "sha256:71cd64fc12676bd5df7856023a236ef0db67f6186f5033e403e2e1779a0abbac" [label=""];
  "sha256:71cd64fc12676bd5df7856023a236ef0db67f6186f5033e403e2e1779a0abbac" -> "sha256:29135e4d78e631cfb74cf7edebdca4cec28257aca9ea09803d735d82456a7622" [label=""];
  "sha256:29135e4d78e631cfb74cf7edebdca4cec28257aca9ea09803d735d82456a7622" -> "sha256:494a0d2470c07e85c59dc2155b9c5e1757e66ff5b8587985c6051263c189314e" [label=""];
  "sha256:494a0d2470c07e85c59dc2155b9c5e1757e66ff5b8587985c6051263c189314e" -> "sha256:84006e8cd53a55dcde347e0acec337949eec73fc32b03be9df1ba929755eb2ba" [label=""];
  "sha256:84006e8cd53a55dcde347e0acec337949eec73fc32b03be9df1ba929755eb2ba" -> "sha256:31266648dec676e48309b699a7c588aaa94d1e18dafdb3e9164f25ea04060775" [label=""];
  "sha256:31266648dec676e48309b699a7c588aaa94d1e18dafdb3e9164f25ea04060775" -> "sha256:6e3d8e411f10bcb7e2ffb2d829c9341f08446bc8291acc2ee5b77209b9ed4b27" [label=""];
  "sha256:8a8dd296f937ca4e425adeb999e59b183020a915d2af22b09bf02d8be9f39738" -> "sha256:6e3d8e411f10bcb7e2ffb2d829c9341f08446bc8291acc2ee5b77209b9ed4b27" [label=""];
  "sha256:6e3d8e411f10bcb7e2ffb2d829c9341f08446bc8291acc2ee5b77209b9ed4b27" -> "sha256:1076267b6abd48cdd1f4b7fbc8a8b29e58658969a040c905fa521519fcca072f" [label=""];
  "sha256:8a8dd296f937ca4e425adeb999e59b183020a915d2af22b09bf02d8be9f39738" -> "sha256:1076267b6abd48cdd1f4b7fbc8a8b29e58658969a040c905fa521519fcca072f" [label=""];
  "sha256:1076267b6abd48cdd1f4b7fbc8a8b29e58658969a040c905fa521519fcca072f" -> "sha256:c912653e1606c642c17b35786093f1c8a5c5b7a7b74808b7a208cc075aa70fa6" [label=""];
  "sha256:c912653e1606c642c17b35786093f1c8a5c5b7a7b74808b7a208cc075aa70fa6" -> "sha256:c757bc81f79b4e5b062086308380167d5793cc4f8b9f9575b0844e7e05bfda75" [label=""];
  "sha256:c757bc81f79b4e5b062086308380167d5793cc4f8b9f9575b0844e7e05bfda75" -> "sha256:4651b23437e802338a2829a0f4b870997cf02c50fa30676aa1198aad0cd85ee1" [label=""];
}

