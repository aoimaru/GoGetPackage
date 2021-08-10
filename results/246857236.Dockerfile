[app/sources/246857236.Dockerfile]
digraph {
  "sha256:bd34ea592abe9ee78a4165c1fc85186f5cdd49eee93fcbdab5df157b902dea4f" [label="docker-image://docker.io/library/ruby:latest" shape="ellipse"];
  "sha256:cfd77212b4b40836ec18d12f827a5e0b557a2eeeb2ed703986ade859a29ffebd" [label="/bin/sh -c mkdir $APP_HOME" shape="box"];
  "sha256:a5216e1942ddb2505f9837c1f5de399cb5ca908bbb0b088606390f7a7c19da8f" [label="mkdir{path=/app}" shape="note"];
  "sha256:4c4fcaf5f4f8610a48037fb99ad0748548a74679b1aa9affa55ebc76d50d741f" [label="/bin/sh -c apt-get update -qq &&   apt-get install -y libfuse-dev &&   apt-get clean &&   rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:a606204cab4008dda93b1276f05cfc038584662c9ba8c88c3305967ada938101" [label="local://context" shape="ellipse"];
  "sha256:e32d4ee5cba61acebee5aa6d00bbd4015b40981528b0aa58e24001bc280fee04" [label="copy{src=/Gemfile, dest=/app/},copy{src=/Gemfile.lock, dest=/app/}" shape="note"];
  "sha256:c5f162bc71ef5246d42fb084ccdfab1339aa3288f7eda6bec301169bbdc93b99" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:10e10251f4fbd137b97a14c3123c3548cfce041cc274abb3585b65f9ce848e6e" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:f8a647c40eeb6ca13461ee03310206f93fe868b188cab1b73a0c8f4a357e124d" [label="sha256:f8a647c40eeb6ca13461ee03310206f93fe868b188cab1b73a0c8f4a357e124d" shape="plaintext"];
  "sha256:bd34ea592abe9ee78a4165c1fc85186f5cdd49eee93fcbdab5df157b902dea4f" -> "sha256:cfd77212b4b40836ec18d12f827a5e0b557a2eeeb2ed703986ade859a29ffebd" [label=""];
  "sha256:cfd77212b4b40836ec18d12f827a5e0b557a2eeeb2ed703986ade859a29ffebd" -> "sha256:a5216e1942ddb2505f9837c1f5de399cb5ca908bbb0b088606390f7a7c19da8f" [label=""];
  "sha256:a5216e1942ddb2505f9837c1f5de399cb5ca908bbb0b088606390f7a7c19da8f" -> "sha256:4c4fcaf5f4f8610a48037fb99ad0748548a74679b1aa9affa55ebc76d50d741f" [label=""];
  "sha256:4c4fcaf5f4f8610a48037fb99ad0748548a74679b1aa9affa55ebc76d50d741f" -> "sha256:e32d4ee5cba61acebee5aa6d00bbd4015b40981528b0aa58e24001bc280fee04" [label=""];
  "sha256:a606204cab4008dda93b1276f05cfc038584662c9ba8c88c3305967ada938101" -> "sha256:e32d4ee5cba61acebee5aa6d00bbd4015b40981528b0aa58e24001bc280fee04" [label=""];
  "sha256:e32d4ee5cba61acebee5aa6d00bbd4015b40981528b0aa58e24001bc280fee04" -> "sha256:c5f162bc71ef5246d42fb084ccdfab1339aa3288f7eda6bec301169bbdc93b99" [label=""];
  "sha256:c5f162bc71ef5246d42fb084ccdfab1339aa3288f7eda6bec301169bbdc93b99" -> "sha256:10e10251f4fbd137b97a14c3123c3548cfce041cc274abb3585b65f9ce848e6e" [label=""];
  "sha256:a606204cab4008dda93b1276f05cfc038584662c9ba8c88c3305967ada938101" -> "sha256:10e10251f4fbd137b97a14c3123c3548cfce041cc274abb3585b65f9ce848e6e" [label=""];
  "sha256:10e10251f4fbd137b97a14c3123c3548cfce041cc274abb3585b65f9ce848e6e" -> "sha256:f8a647c40eeb6ca13461ee03310206f93fe868b188cab1b73a0c8f4a357e124d" [label=""];
}

