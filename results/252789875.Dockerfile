[app/sources/252789875.Dockerfile]
digraph {
  "sha256:3aee4a83c2c9bcdf1c90d1d732a4312c198dec7df9080089c384d9894cceb811" [label="docker-image://docker.io/library/php:5.6.31-apache" shape="ellipse"];
  "sha256:054c7e83ba1ac9459e3991d561995be032d17ea532889832dfe058f8fada17ef" [label="/bin/sh -c docker-php-ext-install mysql" shape="box"];
  "sha256:27dab52213a583d0e4df6d66e2f93640dc663043f7a26c1f6a39016795dbd01e" [label="sha256:27dab52213a583d0e4df6d66e2f93640dc663043f7a26c1f6a39016795dbd01e" shape="plaintext"];
  "sha256:3aee4a83c2c9bcdf1c90d1d732a4312c198dec7df9080089c384d9894cceb811" -> "sha256:054c7e83ba1ac9459e3991d561995be032d17ea532889832dfe058f8fada17ef" [label=""];
  "sha256:054c7e83ba1ac9459e3991d561995be032d17ea532889832dfe058f8fada17ef" -> "sha256:27dab52213a583d0e4df6d66e2f93640dc663043f7a26c1f6a39016795dbd01e" [label=""];
}

