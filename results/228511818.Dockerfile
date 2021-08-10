[app/sources/228511818.Dockerfile]
digraph {
  "sha256:bd0f39662ad82ce1e6034ccb2dd652a7901a06e88a3de6f1db7514da598efd9b" [label="docker-image://docker.io/envoyproxy/envoy-alpine:latest" shape="ellipse"];
  "sha256:211bb2294757409aba102c3daf7b8898a16ccb27899d5bb798934558484eec25" [label="/bin/sh -c apk update && apk add python3 bash" shape="box"];
  "sha256:4b39f7c02cc3b15087d59f0bb0dc57f4e8978f641c12df22b8c8a49bc3f43f9b" [label="/bin/sh -c python3 --version && pip3 --version" shape="box"];
  "sha256:e0aab8679b399b17265e4c9c0b809ce2c63e71badd55a1db685708484be00b6a" [label="/bin/sh -c pip3 install -q Flask==0.11.1 requests==2.18.4" shape="box"];
  "sha256:4ed8d10a773caabc8689e7ec874327000ba27314d9c8b7952797f80b963c5972" [label="/bin/sh -c mkdir /code" shape="box"];
  "sha256:432f88d9c6dbccf42b481c5dbdd70d36444a14328b0e4862da7a0fa240b623e6" [label="local://context" shape="ellipse"];
  "sha256:ebc6af7393c2ce772e709522e0769f344e7276e68a95affae35502d63a12ab77" [label="copy{src=/service.py, dest=/code}" shape="note"];
  "sha256:382f46e88f2667c648615d9651e02b75b555a07bf2642cc1099768f71ac8933e" [label="copy{src=/start_service.sh, dest=/usr/local/bin/start_service.sh}" shape="note"];
  "sha256:7ebc69c6a0889aff42ec787f64df0e1789d795d8ef05670c94d52ed65020da16" [label="/bin/sh -c chmod u+x /usr/local/bin/start_service.sh" shape="box"];
  "sha256:e0222c677d79f67d51d349073feed55948226862773f03a200b17306a7a931ca" [label="sha256:e0222c677d79f67d51d349073feed55948226862773f03a200b17306a7a931ca" shape="plaintext"];
  "sha256:bd0f39662ad82ce1e6034ccb2dd652a7901a06e88a3de6f1db7514da598efd9b" -> "sha256:211bb2294757409aba102c3daf7b8898a16ccb27899d5bb798934558484eec25" [label=""];
  "sha256:211bb2294757409aba102c3daf7b8898a16ccb27899d5bb798934558484eec25" -> "sha256:4b39f7c02cc3b15087d59f0bb0dc57f4e8978f641c12df22b8c8a49bc3f43f9b" [label=""];
  "sha256:4b39f7c02cc3b15087d59f0bb0dc57f4e8978f641c12df22b8c8a49bc3f43f9b" -> "sha256:e0aab8679b399b17265e4c9c0b809ce2c63e71badd55a1db685708484be00b6a" [label=""];
  "sha256:e0aab8679b399b17265e4c9c0b809ce2c63e71badd55a1db685708484be00b6a" -> "sha256:4ed8d10a773caabc8689e7ec874327000ba27314d9c8b7952797f80b963c5972" [label=""];
  "sha256:4ed8d10a773caabc8689e7ec874327000ba27314d9c8b7952797f80b963c5972" -> "sha256:ebc6af7393c2ce772e709522e0769f344e7276e68a95affae35502d63a12ab77" [label=""];
  "sha256:432f88d9c6dbccf42b481c5dbdd70d36444a14328b0e4862da7a0fa240b623e6" -> "sha256:ebc6af7393c2ce772e709522e0769f344e7276e68a95affae35502d63a12ab77" [label=""];
  "sha256:ebc6af7393c2ce772e709522e0769f344e7276e68a95affae35502d63a12ab77" -> "sha256:382f46e88f2667c648615d9651e02b75b555a07bf2642cc1099768f71ac8933e" [label=""];
  "sha256:432f88d9c6dbccf42b481c5dbdd70d36444a14328b0e4862da7a0fa240b623e6" -> "sha256:382f46e88f2667c648615d9651e02b75b555a07bf2642cc1099768f71ac8933e" [label=""];
  "sha256:382f46e88f2667c648615d9651e02b75b555a07bf2642cc1099768f71ac8933e" -> "sha256:7ebc69c6a0889aff42ec787f64df0e1789d795d8ef05670c94d52ed65020da16" [label=""];
  "sha256:7ebc69c6a0889aff42ec787f64df0e1789d795d8ef05670c94d52ed65020da16" -> "sha256:e0222c677d79f67d51d349073feed55948226862773f03a200b17306a7a931ca" [label=""];
}

