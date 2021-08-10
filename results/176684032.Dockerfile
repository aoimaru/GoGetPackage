[app/sources/176684032.Dockerfile]
digraph {
  "sha256:c533a726f047605b426ea2955aca45157e467789694cf38e7e35a971ab9d19ef" [label="docker-image://docker.io/microsoft/aspnet:latest" shape="ellipse"];
  "sha256:85f5bcd298e2123b360bc4e07db54caaabc6419a7ab830933416a3f54dee41d7" [label="mkdir{path=/src}" shape="note"];
  "sha256:ca9018026e899b9c00e51a9e96d344fd873c3aa394e6f1936cd455ce81d83a82" [label="local://context" shape="ellipse"];
  "sha256:be1722627a4ad610d853afd9ebd4dcbcbcd0eca4a7a9f7246a9467236181b12b" [label="copy{src=/project.json, dest=/src/}" shape="note"];
  "sha256:9d2dbbf873ebbe60cb19cd546ea600b5eebdc7ce51386f5b0d5edd89c39bb0e6" [label="dnu restore" shape="box"];
  "sha256:075770cf517d43d877ee08c7b44f0bfcdf181484b5f45ce7a1850f459e3604ba" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:7918122022cc3317965ba6e42468222cfcf7023ded6b61947e242b66482e55f0" [label="sha256:7918122022cc3317965ba6e42468222cfcf7023ded6b61947e242b66482e55f0" shape="plaintext"];
  "sha256:c533a726f047605b426ea2955aca45157e467789694cf38e7e35a971ab9d19ef" -> "sha256:85f5bcd298e2123b360bc4e07db54caaabc6419a7ab830933416a3f54dee41d7" [label=""];
  "sha256:85f5bcd298e2123b360bc4e07db54caaabc6419a7ab830933416a3f54dee41d7" -> "sha256:be1722627a4ad610d853afd9ebd4dcbcbcd0eca4a7a9f7246a9467236181b12b" [label=""];
  "sha256:ca9018026e899b9c00e51a9e96d344fd873c3aa394e6f1936cd455ce81d83a82" -> "sha256:be1722627a4ad610d853afd9ebd4dcbcbcd0eca4a7a9f7246a9467236181b12b" [label=""];
  "sha256:be1722627a4ad610d853afd9ebd4dcbcbcd0eca4a7a9f7246a9467236181b12b" -> "sha256:9d2dbbf873ebbe60cb19cd546ea600b5eebdc7ce51386f5b0d5edd89c39bb0e6" [label=""];
  "sha256:9d2dbbf873ebbe60cb19cd546ea600b5eebdc7ce51386f5b0d5edd89c39bb0e6" -> "sha256:075770cf517d43d877ee08c7b44f0bfcdf181484b5f45ce7a1850f459e3604ba" [label=""];
  "sha256:ca9018026e899b9c00e51a9e96d344fd873c3aa394e6f1936cd455ce81d83a82" -> "sha256:075770cf517d43d877ee08c7b44f0bfcdf181484b5f45ce7a1850f459e3604ba" [label=""];
  "sha256:075770cf517d43d877ee08c7b44f0bfcdf181484b5f45ce7a1850f459e3604ba" -> "sha256:7918122022cc3317965ba6e42468222cfcf7023ded6b61947e242b66482e55f0" [label=""];
}

