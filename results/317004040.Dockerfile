[app/sources/317004040.Dockerfile]
digraph {
  "sha256:80c37fc5947755f3c7ddb3e31898c09315e9dacca1e538f958b84dde4cb67b7e" [label="docker-image://100.125.0.198:20202/hwcse/dockerhub-java:8-jre-alpine" shape="ellipse"];
  "sha256:911e7246f32f924f0e5e92cdd799aac971f0e61f1cb8f767395631d917a0d5d7" [label="/bin/sh -c mkdir -p /home/apps/server" shape="box"];
  "sha256:9d5befd671aabe6cd9b5cad189c119ce1eed964293d2d88aa5c3ccf794e32adf" [label="/bin/sh -c mkdir -p /home/apps/server/webapp" shape="box"];
  "sha256:0d7047a297d5346b879d5afdefa1e54f41a4ae2da0fd90618639b3d6945da9c7" [label="local://context" shape="ellipse"];
  "sha256:c5969ae45285b42140ce6931428f89569441daa9e0a92be6d067be27f35f15d4" [label="copy{src=/porter-gateway-service-0.0.1-SNAPSHOT.jar, dest=/home/apps/server}" shape="note"];
  "sha256:31bc9266beaa04da8b1db9f8f188c8a49d1ee700719dddf1afa10fa8a8f8d500" [label="copy{src=/ui, dest=/home/apps/server/webapp/ui}" shape="note"];
  "sha256:1ddfb1512f06863b1d40808c1ded347978ffbb48a94712a586bd5a80e866fa72" [label="mkdir{path=/home/apps/server}" shape="note"];
  "sha256:546cf99bda8a2d9f17be4e569c882d604461396b54cb478bd37e958637fad8fe" [label="sha256:546cf99bda8a2d9f17be4e569c882d604461396b54cb478bd37e958637fad8fe" shape="plaintext"];
  "sha256:80c37fc5947755f3c7ddb3e31898c09315e9dacca1e538f958b84dde4cb67b7e" -> "sha256:911e7246f32f924f0e5e92cdd799aac971f0e61f1cb8f767395631d917a0d5d7" [label=""];
  "sha256:911e7246f32f924f0e5e92cdd799aac971f0e61f1cb8f767395631d917a0d5d7" -> "sha256:9d5befd671aabe6cd9b5cad189c119ce1eed964293d2d88aa5c3ccf794e32adf" [label=""];
  "sha256:9d5befd671aabe6cd9b5cad189c119ce1eed964293d2d88aa5c3ccf794e32adf" -> "sha256:c5969ae45285b42140ce6931428f89569441daa9e0a92be6d067be27f35f15d4" [label=""];
  "sha256:0d7047a297d5346b879d5afdefa1e54f41a4ae2da0fd90618639b3d6945da9c7" -> "sha256:c5969ae45285b42140ce6931428f89569441daa9e0a92be6d067be27f35f15d4" [label=""];
  "sha256:c5969ae45285b42140ce6931428f89569441daa9e0a92be6d067be27f35f15d4" -> "sha256:31bc9266beaa04da8b1db9f8f188c8a49d1ee700719dddf1afa10fa8a8f8d500" [label=""];
  "sha256:0d7047a297d5346b879d5afdefa1e54f41a4ae2da0fd90618639b3d6945da9c7" -> "sha256:31bc9266beaa04da8b1db9f8f188c8a49d1ee700719dddf1afa10fa8a8f8d500" [label=""];
  "sha256:31bc9266beaa04da8b1db9f8f188c8a49d1ee700719dddf1afa10fa8a8f8d500" -> "sha256:1ddfb1512f06863b1d40808c1ded347978ffbb48a94712a586bd5a80e866fa72" [label=""];
  "sha256:1ddfb1512f06863b1d40808c1ded347978ffbb48a94712a586bd5a80e866fa72" -> "sha256:546cf99bda8a2d9f17be4e569c882d604461396b54cb478bd37e958637fad8fe" [label=""];
}

