[app/sources/181377811.Dockerfile]
digraph {
  "sha256:20f193af2b0e97103d19d24a9e931f0a8bfb35ecfcb9fc5b57978a44cf012edb" [label="local://context" shape="ellipse"];
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" [label="docker-image://docker.io/library/debian:wheezy" shape="ellipse"];
  "sha256:57b14953ce84c6894477e3ef66de572148ce88fc8f36dcb51951103cce22362d" [label="/bin/sh -c apt-get update && apt-get upgrade -y &&     apt-get install -y -q  --no-install-recommends         sudo openjdk-6-jre openjdk-6-jdk unzip wget &&     apt-get clean" shape="box"];
  "sha256:741474f4b382bb9df3d3fdeb10aea11702cd6a881591405e5956182a59e18f12" [label="/bin/sh -c wget http://dl.google.com/android/android-sdk_r23-linux.tgz" shape="box"];
  "sha256:22406a73b46b82f8aca9e81b09e08fbfdd19da3b914e4cfc3ef5eca59c1d1d0c" [label="/bin/sh -c tar xvf android-sdk_r23-linux.tgz" shape="box"];
  "sha256:06e8b5319ba1e175d9dca3b4bea89ab004f928addfecc97b2785ec64283fd114" [label="/bin/sh -c echo \"y\" | android update sdk --no-ui --filter platform-tool" shape="box"];
  "sha256:2e8826df70c3fdf1e4e23be6d5bb04e00c61d9ea29ea32b26b94d4166dae00a9" [label="/bin/sh -c echo \"y\" | android update sdk --no-ui --filter tools" shape="box"];
  "sha256:ae78eae911d981bee0b8d66fa821f198310c1df8ec42627d65b8256574a1edf2" [label="/bin/sh -c rm -rf /android-sdk-linux/tools" shape="box"];
  "sha256:c135247db1a81df569376cfb98924e96e68f3d6404ff240047d3a7fd7af1135e" [label="/bin/sh -c unzip /android-sdk-linux/temp/tools_*-linux.zip -d /android-sdk-linux" shape="box"];
  "sha256:22e407a65ea1a58c052ffea3738c3300b0cfb6817485b6dbac5c3e7e64ce0f27" [label="copy{src=/shipshape/androidlint_analyzer/androidlint/android_lint_service, dest=/android_lint_service}" shape="note"];
  "sha256:ddbbe162ead7ae83877a27cf14db94b98023c1c0f0a0a35aedd344675eb261f3" [label="copy{src=/shipshape/androidlint_analyzer/docker/endpoint.sh, dest=/endpoint.sh}" shape="note"];
  "sha256:d40aa62e783c96c841402546b8da427b6c019eadd185612e4f915f5399d9d602" [label="sha256:d40aa62e783c96c841402546b8da427b6c019eadd185612e4f915f5399d9d602" shape="plaintext"];
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" -> "sha256:57b14953ce84c6894477e3ef66de572148ce88fc8f36dcb51951103cce22362d" [label=""];
  "sha256:57b14953ce84c6894477e3ef66de572148ce88fc8f36dcb51951103cce22362d" -> "sha256:741474f4b382bb9df3d3fdeb10aea11702cd6a881591405e5956182a59e18f12" [label=""];
  "sha256:741474f4b382bb9df3d3fdeb10aea11702cd6a881591405e5956182a59e18f12" -> "sha256:22406a73b46b82f8aca9e81b09e08fbfdd19da3b914e4cfc3ef5eca59c1d1d0c" [label=""];
  "sha256:22406a73b46b82f8aca9e81b09e08fbfdd19da3b914e4cfc3ef5eca59c1d1d0c" -> "sha256:06e8b5319ba1e175d9dca3b4bea89ab004f928addfecc97b2785ec64283fd114" [label=""];
  "sha256:06e8b5319ba1e175d9dca3b4bea89ab004f928addfecc97b2785ec64283fd114" -> "sha256:2e8826df70c3fdf1e4e23be6d5bb04e00c61d9ea29ea32b26b94d4166dae00a9" [label=""];
  "sha256:2e8826df70c3fdf1e4e23be6d5bb04e00c61d9ea29ea32b26b94d4166dae00a9" -> "sha256:ae78eae911d981bee0b8d66fa821f198310c1df8ec42627d65b8256574a1edf2" [label=""];
  "sha256:ae78eae911d981bee0b8d66fa821f198310c1df8ec42627d65b8256574a1edf2" -> "sha256:c135247db1a81df569376cfb98924e96e68f3d6404ff240047d3a7fd7af1135e" [label=""];
  "sha256:c135247db1a81df569376cfb98924e96e68f3d6404ff240047d3a7fd7af1135e" -> "sha256:22e407a65ea1a58c052ffea3738c3300b0cfb6817485b6dbac5c3e7e64ce0f27" [label=""];
  "sha256:20f193af2b0e97103d19d24a9e931f0a8bfb35ecfcb9fc5b57978a44cf012edb" -> "sha256:22e407a65ea1a58c052ffea3738c3300b0cfb6817485b6dbac5c3e7e64ce0f27" [label=""];
  "sha256:22e407a65ea1a58c052ffea3738c3300b0cfb6817485b6dbac5c3e7e64ce0f27" -> "sha256:ddbbe162ead7ae83877a27cf14db94b98023c1c0f0a0a35aedd344675eb261f3" [label=""];
  "sha256:20f193af2b0e97103d19d24a9e931f0a8bfb35ecfcb9fc5b57978a44cf012edb" -> "sha256:ddbbe162ead7ae83877a27cf14db94b98023c1c0f0a0a35aedd344675eb261f3" [label=""];
  "sha256:ddbbe162ead7ae83877a27cf14db94b98023c1c0f0a0a35aedd344675eb261f3" -> "sha256:d40aa62e783c96c841402546b8da427b6c019eadd185612e4f915f5399d9d602" [label=""];
}

