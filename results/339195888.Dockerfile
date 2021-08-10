[app/sources/339195888.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:ccbed0dbbe550cdf393931ed4a06ebff8cb88b90203e519655df654ce264010d" [label="/bin/sh -c apk --update --no-cache add         bash         curl         device-mapper         py-pip         iptables         ca-certificates         &&     apk upgrade &&     curl -fL \"https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz\" | tar zx &&     mv /docker/* /bin/ && chmod +x /bin/docker* &&     pip install docker-compose==${DOCKER_COMPOSE_VERSION} &&     curl -fL \"https://github.com/jwilder/docker-squash/releases/download/v${DOCKER_SQUASH}/docker-squash-linux-amd64-v${DOCKER_SQUASH}.tar.gz\" | tar zx &&     mv /docker-squash* /bin/ && chmod +x /bin/docker-squash* &&     rm -rf /var/cache/apk/* &&     rm -rf /root/.cache" shape="box"];
  "sha256:b81c867fc6baed65064b4b6d387c7967cdbfaccafed1ac737eeed8ff93ae74f8" [label="local://context" shape="ellipse"];
  "sha256:9c6640aa874257d3ff36d226940be527bb1e264fa3528314a9bb324339c6c00a" [label="copy{src=/entrypoint.sh, dest=/bin/entrypoint.sh}" shape="note"];
  "sha256:da20308d4651a3518ed2d8ff44b54ccdc927d38e6f0f3452008997d8a523cad0" [label="sha256:da20308d4651a3518ed2d8ff44b54ccdc927d38e6f0f3452008997d8a523cad0" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:ccbed0dbbe550cdf393931ed4a06ebff8cb88b90203e519655df654ce264010d" [label=""];
  "sha256:ccbed0dbbe550cdf393931ed4a06ebff8cb88b90203e519655df654ce264010d" -> "sha256:9c6640aa874257d3ff36d226940be527bb1e264fa3528314a9bb324339c6c00a" [label=""];
  "sha256:b81c867fc6baed65064b4b6d387c7967cdbfaccafed1ac737eeed8ff93ae74f8" -> "sha256:9c6640aa874257d3ff36d226940be527bb1e264fa3528314a9bb324339c6c00a" [label=""];
  "sha256:9c6640aa874257d3ff36d226940be527bb1e264fa3528314a9bb324339c6c00a" -> "sha256:da20308d4651a3518ed2d8ff44b54ccdc927d38e6f0f3452008997d8a523cad0" [label=""];
}

