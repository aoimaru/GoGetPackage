[app/sources/252787951.Dockerfile]
digraph {
  "sha256:bd34ea592abe9ee78a4165c1fc85186f5cdd49eee93fcbdab5df157b902dea4f" [label="docker-image://docker.io/library/ruby:latest" shape="ellipse"];
  "sha256:d92a0c77635653d973d15ceda664f8807702033d3de1b951f6f5082917750ac0" [label="mkdir{path=/src}" shape="note"];
  "sha256:4778d18701993013d9fddfd456232d843905f0863e8af439fba4da7b19e2a0ac" [label="/bin/sh -c gem install relish" shape="box"];
  "sha256:fbdf609341ae5d50019c525b5fe12ea23434e58a79e863db97a150983bb51aca" [label="local://context" shape="ellipse"];
  "sha256:e95d28cad4f830c5dcb6e086d5e42bf4e485507f50fd1c6e0e9171aa566242c3" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/docker-entrypoint}" shape="note"];
  "sha256:1cf9021ebd4b9c570b409cad3c90ead8a87d6497ed257f9ad2bd4ff8853167ea" [label="/bin/sh -c chmod 755 /usr/local/bin/docker-entrypoint" shape="box"];
  "sha256:42964b37ab2d1fc3deb63a308a765d13abdc74d92593c61b98af93bf6ce1b60c" [label="sha256:42964b37ab2d1fc3deb63a308a765d13abdc74d92593c61b98af93bf6ce1b60c" shape="plaintext"];
  "sha256:bd34ea592abe9ee78a4165c1fc85186f5cdd49eee93fcbdab5df157b902dea4f" -> "sha256:d92a0c77635653d973d15ceda664f8807702033d3de1b951f6f5082917750ac0" [label=""];
  "sha256:d92a0c77635653d973d15ceda664f8807702033d3de1b951f6f5082917750ac0" -> "sha256:4778d18701993013d9fddfd456232d843905f0863e8af439fba4da7b19e2a0ac" [label=""];
  "sha256:4778d18701993013d9fddfd456232d843905f0863e8af439fba4da7b19e2a0ac" -> "sha256:e95d28cad4f830c5dcb6e086d5e42bf4e485507f50fd1c6e0e9171aa566242c3" [label=""];
  "sha256:fbdf609341ae5d50019c525b5fe12ea23434e58a79e863db97a150983bb51aca" -> "sha256:e95d28cad4f830c5dcb6e086d5e42bf4e485507f50fd1c6e0e9171aa566242c3" [label=""];
  "sha256:e95d28cad4f830c5dcb6e086d5e42bf4e485507f50fd1c6e0e9171aa566242c3" -> "sha256:1cf9021ebd4b9c570b409cad3c90ead8a87d6497ed257f9ad2bd4ff8853167ea" [label=""];
  "sha256:1cf9021ebd4b9c570b409cad3c90ead8a87d6497ed257f9ad2bd4ff8853167ea" -> "sha256:42964b37ab2d1fc3deb63a308a765d13abdc74d92593c61b98af93bf6ce1b60c" [label=""];
}

