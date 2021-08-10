[app/sources/458320706.Dockerfile]
digraph {
  "sha256:0728f8531b0721277aed2525f021cee42eab07b609130f7a236067d2b2648b5c" [label="docker-image://docker.io/library/php:latest" shape="ellipse"];
  "sha256:aa124ab298245f7e893695ecb7b041ffc63ceeed16c3fd5833c7e8aa19517d4d" [label="/bin/sh -c docker-php-ext-install pdo pdo_mysql bcmath" shape="box"];
  "sha256:b41d5694d57d642630a2721537c3b765baf714708e6abbbbec1e8efea48d13e3" [label="/bin/sh -c echo \"deb http://ftp.debian.org/debian jessie-backports main\" >> /etc/apt/sources.list.d/backports.list &&     apt-get update &&     apt-get -y install ffmpeg &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a521d525b193694cf21570782616ce19ef3f5a61a95993f36e509480f524192d" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:758ce2ad05f1971898825c6e428e75372c8b8201d18450a14699238126bea116" [label="local://context" shape="ellipse"];
  "sha256:4c4fae6d6e0cdf7512687d5ba9793d05736567fcd35aa1c0304da52feaf2876b" [label="copy{src=/src/php, dest=/var/www/}" shape="note"];
  "sha256:0c354b03ebf295fa0f9d7205d513addd5b130457f70710b5553318f80b8b8e37" [label="/bin/sh -c chown -R www-data:www-data /var/www/public/uploads" shape="box"];
  "sha256:48d786d7f8a2a1b0ef15cd4958c28fd32b783a1ef4d6cacd69882fe2947af15a" [label="docker-image://docker.io/library/composer:latest" shape="ellipse"];
  "sha256:0bcb859ad12c94d88a630f7ae20ed440c695ccfafa58d9c708ce28972549a8d5" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:0d3036bb37f11be0bbfc9c20532f2132b7cb179b5a37d95333337d435d3a574e" [label="copy{src=/src/php, dest=/var/www/}" shape="note"];
  "sha256:8c4e43469c94434fd5c9edc396f630fca361747c1e9b2a221b00a44dc47f854b" [label="/bin/sh -c composer install --ignore-platform-reqs --no-scripts" shape="box"];
  "sha256:1abd9da147b37f16dd29141db2067b6a70932812326efdaae42eafebeebe03cd" [label="copy{src=/var/www/vendor, dest=/var/www/vendor}" shape="note"];
  "sha256:1c4753082d14510df3c004b63eed663eec4b05b8bc353e810536702096d6a184" [label="sha256:1c4753082d14510df3c004b63eed663eec4b05b8bc353e810536702096d6a184" shape="plaintext"];
  "sha256:0728f8531b0721277aed2525f021cee42eab07b609130f7a236067d2b2648b5c" -> "sha256:aa124ab298245f7e893695ecb7b041ffc63ceeed16c3fd5833c7e8aa19517d4d" [label=""];
  "sha256:aa124ab298245f7e893695ecb7b041ffc63ceeed16c3fd5833c7e8aa19517d4d" -> "sha256:b41d5694d57d642630a2721537c3b765baf714708e6abbbbec1e8efea48d13e3" [label=""];
  "sha256:b41d5694d57d642630a2721537c3b765baf714708e6abbbbec1e8efea48d13e3" -> "sha256:a521d525b193694cf21570782616ce19ef3f5a61a95993f36e509480f524192d" [label=""];
  "sha256:a521d525b193694cf21570782616ce19ef3f5a61a95993f36e509480f524192d" -> "sha256:4c4fae6d6e0cdf7512687d5ba9793d05736567fcd35aa1c0304da52feaf2876b" [label=""];
  "sha256:758ce2ad05f1971898825c6e428e75372c8b8201d18450a14699238126bea116" -> "sha256:4c4fae6d6e0cdf7512687d5ba9793d05736567fcd35aa1c0304da52feaf2876b" [label=""];
  "sha256:4c4fae6d6e0cdf7512687d5ba9793d05736567fcd35aa1c0304da52feaf2876b" -> "sha256:0c354b03ebf295fa0f9d7205d513addd5b130457f70710b5553318f80b8b8e37" [label=""];
  "sha256:48d786d7f8a2a1b0ef15cd4958c28fd32b783a1ef4d6cacd69882fe2947af15a" -> "sha256:0bcb859ad12c94d88a630f7ae20ed440c695ccfafa58d9c708ce28972549a8d5" [label=""];
  "sha256:0bcb859ad12c94d88a630f7ae20ed440c695ccfafa58d9c708ce28972549a8d5" -> "sha256:0d3036bb37f11be0bbfc9c20532f2132b7cb179b5a37d95333337d435d3a574e" [label=""];
  "sha256:758ce2ad05f1971898825c6e428e75372c8b8201d18450a14699238126bea116" -> "sha256:0d3036bb37f11be0bbfc9c20532f2132b7cb179b5a37d95333337d435d3a574e" [label=""];
  "sha256:0d3036bb37f11be0bbfc9c20532f2132b7cb179b5a37d95333337d435d3a574e" -> "sha256:8c4e43469c94434fd5c9edc396f630fca361747c1e9b2a221b00a44dc47f854b" [label=""];
  "sha256:0c354b03ebf295fa0f9d7205d513addd5b130457f70710b5553318f80b8b8e37" -> "sha256:1abd9da147b37f16dd29141db2067b6a70932812326efdaae42eafebeebe03cd" [label=""];
  "sha256:8c4e43469c94434fd5c9edc396f630fca361747c1e9b2a221b00a44dc47f854b" -> "sha256:1abd9da147b37f16dd29141db2067b6a70932812326efdaae42eafebeebe03cd" [label=""];
  "sha256:1abd9da147b37f16dd29141db2067b6a70932812326efdaae42eafebeebe03cd" -> "sha256:1c4753082d14510df3c004b63eed663eec4b05b8bc353e810536702096d6a184" [label=""];
}

