[app/sources/308138781.Dockerfile]
digraph {
  "sha256:a266a2fcec1d3cc0749cfce84a61f1ab126fbcc40b535375bf9ee3d6b8db4f39" [label="docker-image://docker.io/cypress/base:12.1.0@sha256:d90d281785d457e0329fb44f06652fce15898ee858fb6c732d353b4169a11301" shape="ellipse"];
  "sha256:4a99c4e7ddba0ceef3eef1b87c3230fda7fd2eadc09b8040da23b0e8a7c44d9b" [label="mkdir{path=/e2e}" shape="note"];
  "sha256:e32ed75d87835aac36e8dffb58688d066ef62aabbd8cef901ec1a1ecbdfb4120" [label="local://context" shape="ellipse"];
  "sha256:d131455ac1ef067025ef1e2070b38b6182074e9cfe56a1321323213598a3486d" [label="copy{src=/package.json, dest=/e2e/},copy{src=/package-lock.json, dest=/e2e/}" shape="note"];
  "sha256:37c3d875cdf9d42567c6f6e410124e81316c90952700c7b362b6fdf3c9463753" [label="/bin/sh -c npm install" shape="box"];
  "sha256:f6361b64cebe60548fbcf0cabd7eef221f38d06cce7d1bfd35f42932c7e7051d" [label="/bin/sh -c $(npm bin)/cypress verify" shape="box"];
  "sha256:4411775e52eba9f30f08482fd59df230cb72ace66370eb06ad5cd9e6b5c867d7" [label="copy{src=/, dest=/e2e/}" shape="note"];
  "sha256:b1d8511a08aaf0ec5ef8af8a4ef23b3fcf45c7921731066ea36580d8d820163c" [label="sha256:b1d8511a08aaf0ec5ef8af8a4ef23b3fcf45c7921731066ea36580d8d820163c" shape="plaintext"];
  "sha256:a266a2fcec1d3cc0749cfce84a61f1ab126fbcc40b535375bf9ee3d6b8db4f39" -> "sha256:4a99c4e7ddba0ceef3eef1b87c3230fda7fd2eadc09b8040da23b0e8a7c44d9b" [label=""];
  "sha256:4a99c4e7ddba0ceef3eef1b87c3230fda7fd2eadc09b8040da23b0e8a7c44d9b" -> "sha256:d131455ac1ef067025ef1e2070b38b6182074e9cfe56a1321323213598a3486d" [label=""];
  "sha256:e32ed75d87835aac36e8dffb58688d066ef62aabbd8cef901ec1a1ecbdfb4120" -> "sha256:d131455ac1ef067025ef1e2070b38b6182074e9cfe56a1321323213598a3486d" [label=""];
  "sha256:d131455ac1ef067025ef1e2070b38b6182074e9cfe56a1321323213598a3486d" -> "sha256:37c3d875cdf9d42567c6f6e410124e81316c90952700c7b362b6fdf3c9463753" [label=""];
  "sha256:37c3d875cdf9d42567c6f6e410124e81316c90952700c7b362b6fdf3c9463753" -> "sha256:f6361b64cebe60548fbcf0cabd7eef221f38d06cce7d1bfd35f42932c7e7051d" [label=""];
  "sha256:f6361b64cebe60548fbcf0cabd7eef221f38d06cce7d1bfd35f42932c7e7051d" -> "sha256:4411775e52eba9f30f08482fd59df230cb72ace66370eb06ad5cd9e6b5c867d7" [label=""];
  "sha256:e32ed75d87835aac36e8dffb58688d066ef62aabbd8cef901ec1a1ecbdfb4120" -> "sha256:4411775e52eba9f30f08482fd59df230cb72ace66370eb06ad5cd9e6b5c867d7" [label=""];
  "sha256:4411775e52eba9f30f08482fd59df230cb72ace66370eb06ad5cd9e6b5c867d7" -> "sha256:b1d8511a08aaf0ec5ef8af8a4ef23b3fcf45c7921731066ea36580d8d820163c" [label=""];
}

