[app/sources/252773439.Dockerfile]
digraph {
  "sha256:1964eb42f25d0cc4f0a5b0c2109402bbaecaafc6286297c5a51f7b91bf899239" [label="docker-image://docker.io/library/php:7" shape="ellipse"];
  "sha256:e91c861928620483871d457c45cd195064023df0d0a56987c738926ad2a754c4" [label="/bin/sh -c docker-php-ext-install mysqli" shape="box"];
  "sha256:c122743ab644c5564898b0aa70143a56c3dfe0b325a08aa46cdbf7ca093998b1" [label="sha256:c122743ab644c5564898b0aa70143a56c3dfe0b325a08aa46cdbf7ca093998b1" shape="plaintext"];
  "sha256:1964eb42f25d0cc4f0a5b0c2109402bbaecaafc6286297c5a51f7b91bf899239" -> "sha256:e91c861928620483871d457c45cd195064023df0d0a56987c738926ad2a754c4" [label=""];
  "sha256:e91c861928620483871d457c45cd195064023df0d0a56987c738926ad2a754c4" -> "sha256:c122743ab644c5564898b0aa70143a56c3dfe0b325a08aa46cdbf7ca093998b1" [label=""];
}

