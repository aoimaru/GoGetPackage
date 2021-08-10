[app/sources/216240955.Dockerfile]
digraph {
  "sha256:b252a41255fb389ec1af866b9fa09d8db30cefdb36661e680c3c3b327b420233" [label="local://context" shape="ellipse"];
  "sha256:ab15cbb73ffcb10fc260e4482f325e6f56427c262f54ade9b595b9cc7e1df14e" [label="docker-image://docker.io/library/python:3.5.1" shape="ellipse"];
  "sha256:2d2f5201134858a7b7d95de494c6ca97b2e8984625ee20bd9375b5874c00f2c8" [label="mkdir{path=/project}" shape="note"];
  "sha256:8867678b6a42486f14bdabef364bc24a6b73bb1ffe30886f86d822e2d19ce8b0" [label="copy{src=/requirements.txt, dest=/project/requirements.txt}" shape="note"];
  "sha256:7fb76cb40bbbde50e1bee290d2d9f27921d4d7d7da7ec32708a1178ebd6e0425" [label="/bin/sh -c pip3 install -r /project/requirements.txt" shape="box"];
  "sha256:9b67425298703f6ae1a702becdad5cbe9601e9f119b228a65932ae05c353e170" [label="copy{src=/, dest=/project}" shape="note"];
  "sha256:19d2a70f26423e4fef7e134e7f5c70d5b54d08757b9f6a56cb48b877b2224ae3" [label="sha256:19d2a70f26423e4fef7e134e7f5c70d5b54d08757b9f6a56cb48b877b2224ae3" shape="plaintext"];
  "sha256:ab15cbb73ffcb10fc260e4482f325e6f56427c262f54ade9b595b9cc7e1df14e" -> "sha256:2d2f5201134858a7b7d95de494c6ca97b2e8984625ee20bd9375b5874c00f2c8" [label=""];
  "sha256:2d2f5201134858a7b7d95de494c6ca97b2e8984625ee20bd9375b5874c00f2c8" -> "sha256:8867678b6a42486f14bdabef364bc24a6b73bb1ffe30886f86d822e2d19ce8b0" [label=""];
  "sha256:b252a41255fb389ec1af866b9fa09d8db30cefdb36661e680c3c3b327b420233" -> "sha256:8867678b6a42486f14bdabef364bc24a6b73bb1ffe30886f86d822e2d19ce8b0" [label=""];
  "sha256:8867678b6a42486f14bdabef364bc24a6b73bb1ffe30886f86d822e2d19ce8b0" -> "sha256:7fb76cb40bbbde50e1bee290d2d9f27921d4d7d7da7ec32708a1178ebd6e0425" [label=""];
  "sha256:7fb76cb40bbbde50e1bee290d2d9f27921d4d7d7da7ec32708a1178ebd6e0425" -> "sha256:9b67425298703f6ae1a702becdad5cbe9601e9f119b228a65932ae05c353e170" [label=""];
  "sha256:b252a41255fb389ec1af866b9fa09d8db30cefdb36661e680c3c3b327b420233" -> "sha256:9b67425298703f6ae1a702becdad5cbe9601e9f119b228a65932ae05c353e170" [label=""];
  "sha256:9b67425298703f6ae1a702becdad5cbe9601e9f119b228a65932ae05c353e170" -> "sha256:19d2a70f26423e4fef7e134e7f5c70d5b54d08757b9f6a56cb48b877b2224ae3" [label=""];
}

