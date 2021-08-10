[app/sources/355001481.Dockerfile]
digraph {
  "sha256:06b28c0611a9f334927c202788aeb27b4e51e2cafe58015123faa382f5913fb7" [label="docker-image://docker.io/gabesullice/drocker-drupal-8:8.2" shape="ellipse"];
  "sha256:79b4f2fd3244f1f47bd2e5996ec24276ec12d3a1ba9eb4a6437a32caa3e1fe08" [label="/bin/sh -c ln -sf /var/www/files /var/www/html/sites/default/files" shape="box"];
  "sha256:8ca4c21865945d0077d0f2a19396888ce6b46effce86c9634182a793130ed8d8" [label="/bin/sh -c ln -sf /var/www/settings/settings.local.php /var/www/html/sites/default/settings.local.php" shape="box"];
  "sha256:1b69c940d45dfec379939a09b7b87941a0623e8871dd6d276aede7991667a57d" [label="local://context" shape="ellipse"];
  "sha256:7de0ab0f8def626b8a999d08a603597d040eba5df4edae505bc50a156f4c708b" [label="copy{src=/docroot/sites/default/settings.php, dest=/var/www/html/sites/default/settings.php}" shape="note"];
  "sha256:06c35d754cd4f30be419aef9b611276c87b8d4706a699ed4b2f97343827ec13b" [label="copy{src=/docroot/themes, dest=/var/www/html/themes}" shape="note"];
  "sha256:83488afd60993464ea08439cebd0910b7b10792256697fbb42e39ac58fa061b1" [label="copy{src=/docroot/modules, dest=/var/www/html/modules}" shape="note"];
  "sha256:27588397dd61fcb18600c8031606754c64f9fa1cd2ff8f69e12bc736b9201528" [label="copy{src=/config, dest=/var/www/config}" shape="note"];
  "sha256:57a5d5d56a2e94d0b22f8f74d72abb639d8be3266e50c20f4bdb85be5b1299d4" [label="sha256:57a5d5d56a2e94d0b22f8f74d72abb639d8be3266e50c20f4bdb85be5b1299d4" shape="plaintext"];
  "sha256:06b28c0611a9f334927c202788aeb27b4e51e2cafe58015123faa382f5913fb7" -> "sha256:79b4f2fd3244f1f47bd2e5996ec24276ec12d3a1ba9eb4a6437a32caa3e1fe08" [label=""];
  "sha256:79b4f2fd3244f1f47bd2e5996ec24276ec12d3a1ba9eb4a6437a32caa3e1fe08" -> "sha256:8ca4c21865945d0077d0f2a19396888ce6b46effce86c9634182a793130ed8d8" [label=""];
  "sha256:8ca4c21865945d0077d0f2a19396888ce6b46effce86c9634182a793130ed8d8" -> "sha256:7de0ab0f8def626b8a999d08a603597d040eba5df4edae505bc50a156f4c708b" [label=""];
  "sha256:1b69c940d45dfec379939a09b7b87941a0623e8871dd6d276aede7991667a57d" -> "sha256:7de0ab0f8def626b8a999d08a603597d040eba5df4edae505bc50a156f4c708b" [label=""];
  "sha256:7de0ab0f8def626b8a999d08a603597d040eba5df4edae505bc50a156f4c708b" -> "sha256:06c35d754cd4f30be419aef9b611276c87b8d4706a699ed4b2f97343827ec13b" [label=""];
  "sha256:1b69c940d45dfec379939a09b7b87941a0623e8871dd6d276aede7991667a57d" -> "sha256:06c35d754cd4f30be419aef9b611276c87b8d4706a699ed4b2f97343827ec13b" [label=""];
  "sha256:06c35d754cd4f30be419aef9b611276c87b8d4706a699ed4b2f97343827ec13b" -> "sha256:83488afd60993464ea08439cebd0910b7b10792256697fbb42e39ac58fa061b1" [label=""];
  "sha256:1b69c940d45dfec379939a09b7b87941a0623e8871dd6d276aede7991667a57d" -> "sha256:83488afd60993464ea08439cebd0910b7b10792256697fbb42e39ac58fa061b1" [label=""];
  "sha256:83488afd60993464ea08439cebd0910b7b10792256697fbb42e39ac58fa061b1" -> "sha256:27588397dd61fcb18600c8031606754c64f9fa1cd2ff8f69e12bc736b9201528" [label=""];
  "sha256:1b69c940d45dfec379939a09b7b87941a0623e8871dd6d276aede7991667a57d" -> "sha256:27588397dd61fcb18600c8031606754c64f9fa1cd2ff8f69e12bc736b9201528" [label=""];
  "sha256:27588397dd61fcb18600c8031606754c64f9fa1cd2ff8f69e12bc736b9201528" -> "sha256:57a5d5d56a2e94d0b22f8f74d72abb639d8be3266e50c20f4bdb85be5b1299d4" [label=""];
}

