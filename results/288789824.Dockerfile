[app/sources/288789824.Dockerfile]
digraph {
  "sha256:ba9e3589471bc9e554bc1ddbc723f6650dc8b956a60dd62b93d812b392bb4344" [label="docker-image://docker.io/rocker/tensorflow-gpu:3.6.0" shape="ellipse"];
  "sha256:a6403aa8e0fd2d5bb580c369c7629389dd23b20ea1f702a6da45af115c3b0f6d" [label="/bin/sh -c pip3 install     wheel==0.33.0     setuptools==40.8.0     scipy==1.2.1 \t--no-cache-dir" shape="box"];
  "sha256:f848236f830b0ae0f2e12fd551488ed8890ac3e2d28513fc0f91607f1b5632a9" [label="/bin/sh -c apt-get update && apt-get -y install wget &&   wget https://s3-us-west-2.amazonaws.com/xgboost-wheels/xgboost-0.81-py2.py3-none-manylinux1_x86_64.whl &&   pip3 install  xgboost-0.81-py2.py3-none-manylinux1_x86_64.whl &&   rm xgboost-0.81-py2.py3-none-manylinux1_x86_64.whl &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5270eecad707952c98c371e604d9c65eeff1668c85f1ca451b3838fcbfd240d8" [label="docker-image://docker.io/rocker/cuda-dev:3.6.0" shape="ellipse"];
  "sha256:693edb91c6dc3e4afd6b4744022bf28542d0e149cdb33ad9d87132ea67770343" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     wget cmake &&     git clone --recursive --branch v0.81 https://github.com/dmlc/xgboost &&     mkdir -p xgboost/build && cd xgboost/build &&     cmake .. -DUSE_CUDA=ON -DR_LIB=ON -DUSE_NCCL=ON &&     make install -j$(nproc)" shape="box"];
  "sha256:f13368bd5dff96551e19cf6dabd547614e8c9f159513b9846863568de58cd3bd" [label="copy{src=/usr/local/lib/R/site-library/xgboost, dest=/usr/local/lib/R/site-library/xgboost}" shape="note"];
  "sha256:e5a7d85797484fd90558a72595aa424d10fb63ef2eb979d40f0b3165b1e22cb5" [label="/bin/sh -c apt-get update -qq &&     apt-get -y --no-install-recommends install       default-jdk       default-jre &&   \tR CMD javareconf" shape="box"];
  "sha256:9c621c620287fe53d89987b6fbff15cb258b6772cf75a3ae0d0d3cf51006e1e3" [label="/bin/sh -c install2.r h2o" shape="box"];
  "sha256:841a31fab261cffa49b25491bdee0084a94effead76ae547fe1044d2369d68e3" [label="/bin/sh -c install2.r greta" shape="box"];
  "sha256:0adece1711bcc5b6b8013d88358089517f229f939c72f57d5b77f23f7caed629" [label="copy{src=/usr/local/cuda-9.0, dest=/usr/local/cuda-9.0}" shape="note"];
  "sha256:99c54dda5f58b7ebf7bbfb732d4005a96dfad508009860b6d2bbb85ed4eb5c97" [label="sha256:99c54dda5f58b7ebf7bbfb732d4005a96dfad508009860b6d2bbb85ed4eb5c97" shape="plaintext"];
  "sha256:ba9e3589471bc9e554bc1ddbc723f6650dc8b956a60dd62b93d812b392bb4344" -> "sha256:a6403aa8e0fd2d5bb580c369c7629389dd23b20ea1f702a6da45af115c3b0f6d" [label=""];
  "sha256:a6403aa8e0fd2d5bb580c369c7629389dd23b20ea1f702a6da45af115c3b0f6d" -> "sha256:f848236f830b0ae0f2e12fd551488ed8890ac3e2d28513fc0f91607f1b5632a9" [label=""];
  "sha256:5270eecad707952c98c371e604d9c65eeff1668c85f1ca451b3838fcbfd240d8" -> "sha256:693edb91c6dc3e4afd6b4744022bf28542d0e149cdb33ad9d87132ea67770343" [label=""];
  "sha256:f848236f830b0ae0f2e12fd551488ed8890ac3e2d28513fc0f91607f1b5632a9" -> "sha256:f13368bd5dff96551e19cf6dabd547614e8c9f159513b9846863568de58cd3bd" [label=""];
  "sha256:693edb91c6dc3e4afd6b4744022bf28542d0e149cdb33ad9d87132ea67770343" -> "sha256:f13368bd5dff96551e19cf6dabd547614e8c9f159513b9846863568de58cd3bd" [label=""];
  "sha256:f13368bd5dff96551e19cf6dabd547614e8c9f159513b9846863568de58cd3bd" -> "sha256:e5a7d85797484fd90558a72595aa424d10fb63ef2eb979d40f0b3165b1e22cb5" [label=""];
  "sha256:e5a7d85797484fd90558a72595aa424d10fb63ef2eb979d40f0b3165b1e22cb5" -> "sha256:9c621c620287fe53d89987b6fbff15cb258b6772cf75a3ae0d0d3cf51006e1e3" [label=""];
  "sha256:9c621c620287fe53d89987b6fbff15cb258b6772cf75a3ae0d0d3cf51006e1e3" -> "sha256:841a31fab261cffa49b25491bdee0084a94effead76ae547fe1044d2369d68e3" [label=""];
  "sha256:841a31fab261cffa49b25491bdee0084a94effead76ae547fe1044d2369d68e3" -> "sha256:0adece1711bcc5b6b8013d88358089517f229f939c72f57d5b77f23f7caed629" [label=""];
  "sha256:693edb91c6dc3e4afd6b4744022bf28542d0e149cdb33ad9d87132ea67770343" -> "sha256:0adece1711bcc5b6b8013d88358089517f229f939c72f57d5b77f23f7caed629" [label=""];
  "sha256:0adece1711bcc5b6b8013d88358089517f229f939c72f57d5b77f23f7caed629" -> "sha256:99c54dda5f58b7ebf7bbfb732d4005a96dfad508009860b6d2bbb85ed4eb5c97" [label=""];
}

