[app/sources/272838202.Dockerfile]
digraph {
  "sha256:b8abe889413bcb05f9e9be4a3ef2cdf83088c6c577aee5e85a97b1590a554553" [label="local://context" shape="ellipse"];
  "sha256:0dacf6e93ff8ff14673c7467c7cf0e8038c2625d9bac6c2391fba87f72bc98af" [label="docker-image://docker.io/funcy/go:latest" shape="ellipse"];
  "sha256:0a6da3be64b57ed12776518629167039d2616eb78be101d9b92a2413cbf97a03" [label="mkdir{path=/fnproject}" shape="note"];
  "sha256:d59d62767937d51d50b2d66f9e6561d3fc342c3de04ef84a41a2c4eb1ef6840f" [label="copy{src=/flow-service-docker, dest=/fnproject/flow-service}" shape="note"];
  "sha256:3981a16630448425963dbe1bcd9c3184ced7a967cbfde96fbec8583e21c65192" [label="sha256:3981a16630448425963dbe1bcd9c3184ced7a967cbfde96fbec8583e21c65192" shape="plaintext"];
  "sha256:0dacf6e93ff8ff14673c7467c7cf0e8038c2625d9bac6c2391fba87f72bc98af" -> "sha256:0a6da3be64b57ed12776518629167039d2616eb78be101d9b92a2413cbf97a03" [label=""];
  "sha256:0a6da3be64b57ed12776518629167039d2616eb78be101d9b92a2413cbf97a03" -> "sha256:d59d62767937d51d50b2d66f9e6561d3fc342c3de04ef84a41a2c4eb1ef6840f" [label=""];
  "sha256:b8abe889413bcb05f9e9be4a3ef2cdf83088c6c577aee5e85a97b1590a554553" -> "sha256:d59d62767937d51d50b2d66f9e6561d3fc342c3de04ef84a41a2c4eb1ef6840f" [label=""];
  "sha256:d59d62767937d51d50b2d66f9e6561d3fc342c3de04ef84a41a2c4eb1ef6840f" -> "sha256:3981a16630448425963dbe1bcd9c3184ced7a967cbfde96fbec8583e21c65192" [label=""];
}

