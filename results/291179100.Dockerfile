[app/sources/291179100.Dockerfile]
digraph {
  "sha256:8ead53ea134f22322d001fad2741efe19a1c7e3d6da2cbfc5a01e24ed04d67d6" [label="docker-image://docker.io/library/openjdk:13-ea-2-jdk-oraclelinux7" shape="ellipse"];
  "sha256:d2408ca770951a7ae7380f26157f15185a6e491f885c3d650f3da34b71c20236" [label="/bin/sh -c mkdir -p opt/dynamodb" shape="box"];
  "sha256:28fee3c95ad05e4e5b0aecd74da6ffcb653647ab9d3782dcd8bfb635b03eacf6" [label="mkdir{path=/opt/dynamodb}" shape="note"];
  "sha256:2e61994cb5cc2bdba36a6c0b5f83f691851a7bf4a1022201c768aa1056839ffb" [label="/bin/sh -c wget http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz -q -O - | tar -xz || curl -L http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz | tar xz" shape="box"];
  "sha256:720ce3dbe40e0383150aede20fafed2eab5c51c3c529ce5c6050ffb30e376024" [label="sha256:720ce3dbe40e0383150aede20fafed2eab5c51c3c529ce5c6050ffb30e376024" shape="plaintext"];
  "sha256:8ead53ea134f22322d001fad2741efe19a1c7e3d6da2cbfc5a01e24ed04d67d6" -> "sha256:d2408ca770951a7ae7380f26157f15185a6e491f885c3d650f3da34b71c20236" [label=""];
  "sha256:d2408ca770951a7ae7380f26157f15185a6e491f885c3d650f3da34b71c20236" -> "sha256:28fee3c95ad05e4e5b0aecd74da6ffcb653647ab9d3782dcd8bfb635b03eacf6" [label=""];
  "sha256:28fee3c95ad05e4e5b0aecd74da6ffcb653647ab9d3782dcd8bfb635b03eacf6" -> "sha256:2e61994cb5cc2bdba36a6c0b5f83f691851a7bf4a1022201c768aa1056839ffb" [label=""];
  "sha256:2e61994cb5cc2bdba36a6c0b5f83f691851a7bf4a1022201c768aa1056839ffb" -> "sha256:720ce3dbe40e0383150aede20fafed2eab5c51c3c529ce5c6050ffb30e376024" [label=""];
}

