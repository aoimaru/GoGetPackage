[app/sources/181503595.Dockerfile]
digraph {
  "sha256:5fac703122b6b81d26791eab563dd0ed1bbfabf71b9fb7c8ceb346207fef443b" [label="docker-image://docker.io/library/groovy:2.4.11-alpine" shape="ellipse"];
  "sha256:05b0ab0cd4d84fcf273521d37a5b21449d28f65fe9f5e1d533a4402f86c8ca04" [label="local://context" shape="ellipse"];
  "sha256:5edcc7cdb3e5739ba841c3602b5c59082666562b002aed4cbe47850c37bb7482" [label="copy{src=/raffler.groovy, dest=/tmp/}" shape="note"];
  "sha256:52d4118f22393b3e8943e21b1e57e0f6a74f72ac3241ee576550c593c12135f5" [label="sha256:52d4118f22393b3e8943e21b1e57e0f6a74f72ac3241ee576550c593c12135f5" shape="plaintext"];
  "sha256:5fac703122b6b81d26791eab563dd0ed1bbfabf71b9fb7c8ceb346207fef443b" -> "sha256:5edcc7cdb3e5739ba841c3602b5c59082666562b002aed4cbe47850c37bb7482" [label=""];
  "sha256:05b0ab0cd4d84fcf273521d37a5b21449d28f65fe9f5e1d533a4402f86c8ca04" -> "sha256:5edcc7cdb3e5739ba841c3602b5c59082666562b002aed4cbe47850c37bb7482" [label=""];
  "sha256:5edcc7cdb3e5739ba841c3602b5c59082666562b002aed4cbe47850c37bb7482" -> "sha256:52d4118f22393b3e8943e21b1e57e0f6a74f72ac3241ee576550c593c12135f5" [label=""];
}

