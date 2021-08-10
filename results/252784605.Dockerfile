[app/sources/252784605.Dockerfile]
digraph {
  "sha256:a90731c1e851f83918bd367317951f4e94c44f737d6bcb508305c4dac9bb28b3" [label="local://context" shape="ellipse"];
  "sha256:24d3472d81629cb259462c4f169fcd9de99e558641bfc643a043fc59c2f1b6f6" [label="docker-image://docker.io/library/nginx:1.10.1-alpine" shape="ellipse"];
  "sha256:7eff92ea832f789c19b8bd31f2dc86b68858545561b35fc7c52dda32a1accc1b" [label="/bin/sh -c apk update && apk add \\--no-cache nodejs git python make g++" shape="box"];
  "sha256:c10659b179c90e10c27ce16d43ddccbf57c8f99f4586d046d8253fa5635299cb" [label="copy{src=/, dest=/tmp}" shape="note"];
  "sha256:51ea6f787246443f93da41308dcd29011ebf390deacbf24d8ca29919a5eca4a7" [label="/bin/sh -c cd /tmp && npm install && npm run build && cp -rf build/* /usr/share/nginx/html && cp nginx.conf /etc/nginx/conf.d/default.conf && rm -rf /tmp" shape="box"];
  "sha256:d1fe4e13312003e9e305cb7b4a289f15b1ef9380411066326b169ba3e83a9a5a" [label="sha256:d1fe4e13312003e9e305cb7b4a289f15b1ef9380411066326b169ba3e83a9a5a" shape="plaintext"];
  "sha256:24d3472d81629cb259462c4f169fcd9de99e558641bfc643a043fc59c2f1b6f6" -> "sha256:7eff92ea832f789c19b8bd31f2dc86b68858545561b35fc7c52dda32a1accc1b" [label=""];
  "sha256:7eff92ea832f789c19b8bd31f2dc86b68858545561b35fc7c52dda32a1accc1b" -> "sha256:c10659b179c90e10c27ce16d43ddccbf57c8f99f4586d046d8253fa5635299cb" [label=""];
  "sha256:a90731c1e851f83918bd367317951f4e94c44f737d6bcb508305c4dac9bb28b3" -> "sha256:c10659b179c90e10c27ce16d43ddccbf57c8f99f4586d046d8253fa5635299cb" [label=""];
  "sha256:c10659b179c90e10c27ce16d43ddccbf57c8f99f4586d046d8253fa5635299cb" -> "sha256:51ea6f787246443f93da41308dcd29011ebf390deacbf24d8ca29919a5eca4a7" [label=""];
  "sha256:51ea6f787246443f93da41308dcd29011ebf390deacbf24d8ca29919a5eca4a7" -> "sha256:d1fe4e13312003e9e305cb7b4a289f15b1ef9380411066326b169ba3e83a9a5a" [label=""];
}

