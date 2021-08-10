[app/sources/198439339.Dockerfile]
digraph {
  "sha256:b4b3b149b208029a6e7afa3b18f9722bc155c5fdcff80fcd2830c3fd2fd2e9e5" [label="local://context" shape="ellipse"];
  "sha256:5d08b3bad70e80952538251a2016ebe349683d884da0583272fd18f0340c6369" [label="docker-image://docker.io/anapsix/alpine-java:jre8@sha256:7cb97a356efb433fbf85153af4b0e56e3527baeac59a5c3fc5b2d5cdd06b5674" shape="ellipse"];
  "sha256:bc67c3716985d9fcbe89fa962cc14c57b05d80bcc6f00d487a40858650bf0dca" [label="/bin/sh -c mkdir /build" shape="box"];
  "sha256:734863b5e1511496a49e92349ef559fe11de70a049e49e7dc2ae2441236027e6" [label="copy{src=/build/libs/turbine-service-0.0.1-SNAPSHOT.jar, dest=/build/turbine-service-0.0.1-SNAPSHOT.jar}" shape="note"];
  "sha256:8878191c5b808886225b1ab800208bfecb9cd0ecf3a49c790d2738fe0adc2b9f" [label="/bin/sh -c bash -c 'touch /turbine-service-0.0.1-SNAPSHOT.jar'" shape="box"];
  "sha256:903fdb634498d6b3c80724fbd259d4b231ccfa831cf0ca098d3b219fb3594b08" [label="sha256:903fdb634498d6b3c80724fbd259d4b231ccfa831cf0ca098d3b219fb3594b08" shape="plaintext"];
  "sha256:5d08b3bad70e80952538251a2016ebe349683d884da0583272fd18f0340c6369" -> "sha256:bc67c3716985d9fcbe89fa962cc14c57b05d80bcc6f00d487a40858650bf0dca" [label=""];
  "sha256:bc67c3716985d9fcbe89fa962cc14c57b05d80bcc6f00d487a40858650bf0dca" -> "sha256:734863b5e1511496a49e92349ef559fe11de70a049e49e7dc2ae2441236027e6" [label=""];
  "sha256:b4b3b149b208029a6e7afa3b18f9722bc155c5fdcff80fcd2830c3fd2fd2e9e5" -> "sha256:734863b5e1511496a49e92349ef559fe11de70a049e49e7dc2ae2441236027e6" [label=""];
  "sha256:734863b5e1511496a49e92349ef559fe11de70a049e49e7dc2ae2441236027e6" -> "sha256:8878191c5b808886225b1ab800208bfecb9cd0ecf3a49c790d2738fe0adc2b9f" [label=""];
  "sha256:8878191c5b808886225b1ab800208bfecb9cd0ecf3a49c790d2738fe0adc2b9f" -> "sha256:903fdb634498d6b3c80724fbd259d4b231ccfa831cf0ca098d3b219fb3594b08" [label=""];
}

