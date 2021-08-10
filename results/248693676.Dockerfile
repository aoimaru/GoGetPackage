[app/sources/248693676.Dockerfile]
digraph {
  "sha256:719535bf562b0bd8141149049aea95ade017b8314fb2bed33cd9eba99275c77d" [label="local://context" shape="ellipse"];
  "sha256:227371bd1847b3949bff47a990e80d1e40387009f9cda87dc0b4a0e1fb3bb573" [label="docker-image://docker.io/envoyproxy/envoy-alpine-dev:latest@sha256:cd5ea487c935cbc1eb4def73e089c82878c97bbc9390485db3cea54f53294a77" shape="ellipse"];
  "sha256:0714396aa2ceb08bae631c3e29314870e4d75806aef6137aeae0b129f62a0fb5" [label="/bin/sh -c apk update && apk add python3 bash curl" shape="box"];
  "sha256:bd3fefbe9893bd1e4467920300c170f4a7d8746259999d3334a3d8046617a241" [label="/bin/sh -c pip3 install -q Flask==0.11.1 requests==2.18.4" shape="box"];
  "sha256:2ffd48e624205635f0662791ee55ec1b2bddc5c7ce6e23ae58e6364e6ef67fd5" [label="/bin/sh -c mkdir /code" shape="box"];
  "sha256:87ba2fd3f84239e6ce5d9edc291da5ce4b120783b4fa7e82e2258ed6f736f733" [label="copy{src=/service.py, dest=/code}" shape="note"];
  "sha256:1f719957caec2a09ecad69aeeead62048787d5a1d8139f26338725b0f24c4f3a" [label="copy{src=/start_service.sh, dest=/usr/local/bin/start_service.sh}" shape="note"];
  "sha256:04da56e8a2246749d6cac0a407d2f0ba472c4afbf5361e6a3116cb51168b6cfc" [label="/bin/sh -c chmod u+x /usr/local/bin/start_service.sh" shape="box"];
  "sha256:f77b4fd5b41187d14b199e1a9697d0ecec8b0ad61e9bd76c098778da76ea239f" [label="sha256:f77b4fd5b41187d14b199e1a9697d0ecec8b0ad61e9bd76c098778da76ea239f" shape="plaintext"];
  "sha256:227371bd1847b3949bff47a990e80d1e40387009f9cda87dc0b4a0e1fb3bb573" -> "sha256:0714396aa2ceb08bae631c3e29314870e4d75806aef6137aeae0b129f62a0fb5" [label=""];
  "sha256:0714396aa2ceb08bae631c3e29314870e4d75806aef6137aeae0b129f62a0fb5" -> "sha256:bd3fefbe9893bd1e4467920300c170f4a7d8746259999d3334a3d8046617a241" [label=""];
  "sha256:bd3fefbe9893bd1e4467920300c170f4a7d8746259999d3334a3d8046617a241" -> "sha256:2ffd48e624205635f0662791ee55ec1b2bddc5c7ce6e23ae58e6364e6ef67fd5" [label=""];
  "sha256:2ffd48e624205635f0662791ee55ec1b2bddc5c7ce6e23ae58e6364e6ef67fd5" -> "sha256:87ba2fd3f84239e6ce5d9edc291da5ce4b120783b4fa7e82e2258ed6f736f733" [label=""];
  "sha256:719535bf562b0bd8141149049aea95ade017b8314fb2bed33cd9eba99275c77d" -> "sha256:87ba2fd3f84239e6ce5d9edc291da5ce4b120783b4fa7e82e2258ed6f736f733" [label=""];
  "sha256:87ba2fd3f84239e6ce5d9edc291da5ce4b120783b4fa7e82e2258ed6f736f733" -> "sha256:1f719957caec2a09ecad69aeeead62048787d5a1d8139f26338725b0f24c4f3a" [label=""];
  "sha256:719535bf562b0bd8141149049aea95ade017b8314fb2bed33cd9eba99275c77d" -> "sha256:1f719957caec2a09ecad69aeeead62048787d5a1d8139f26338725b0f24c4f3a" [label=""];
  "sha256:1f719957caec2a09ecad69aeeead62048787d5a1d8139f26338725b0f24c4f3a" -> "sha256:04da56e8a2246749d6cac0a407d2f0ba472c4afbf5361e6a3116cb51168b6cfc" [label=""];
  "sha256:04da56e8a2246749d6cac0a407d2f0ba472c4afbf5361e6a3116cb51168b6cfc" -> "sha256:f77b4fd5b41187d14b199e1a9697d0ecec8b0ad61e9bd76c098778da76ea239f" [label=""];
}

