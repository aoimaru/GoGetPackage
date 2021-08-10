[app/sources/232201942.Dockerfile]
digraph {
  "sha256:85d7a1202c5f500c1fdde93eb7c8546084e952984d2836dc91512f4b5d407004" [label="docker-image://docker.io/dlanguage/ldc:latest" shape="ellipse"];
  "sha256:1c301fdba9d00ad0f8a6e9bdfd6207a1e38257de483fe79440f4ae36af1823c6" [label="local://context" shape="ellipse"];
  "sha256:9cf11fa5b8dea3a5bfa335df1e7e54d9ed2e14a60f6352b75b43b65d4c386bbb" [label="copy{src=/source, dest=/source}" shape="note"];
  "sha256:8c3ac3fbba6b4eba01eea40bdd719384c18475566b45a5fe358d306d741c0a6f" [label="copy{src=/dub.json, dest=/dub.json}" shape="note"];
  "sha256:5a7fa526836884c7afdbdcff2fbc92ad830cb870305b12bedb9ba0b4aec70dba" [label="/bin/sh -c dub test" shape="box"];
  "sha256:a35da7db02040212a4a049b21397d466bc4e5c399823f8e16bdf80ee53c26de8" [label="sha256:a35da7db02040212a4a049b21397d466bc4e5c399823f8e16bdf80ee53c26de8" shape="plaintext"];
  "sha256:85d7a1202c5f500c1fdde93eb7c8546084e952984d2836dc91512f4b5d407004" -> "sha256:9cf11fa5b8dea3a5bfa335df1e7e54d9ed2e14a60f6352b75b43b65d4c386bbb" [label=""];
  "sha256:1c301fdba9d00ad0f8a6e9bdfd6207a1e38257de483fe79440f4ae36af1823c6" -> "sha256:9cf11fa5b8dea3a5bfa335df1e7e54d9ed2e14a60f6352b75b43b65d4c386bbb" [label=""];
  "sha256:9cf11fa5b8dea3a5bfa335df1e7e54d9ed2e14a60f6352b75b43b65d4c386bbb" -> "sha256:8c3ac3fbba6b4eba01eea40bdd719384c18475566b45a5fe358d306d741c0a6f" [label=""];
  "sha256:1c301fdba9d00ad0f8a6e9bdfd6207a1e38257de483fe79440f4ae36af1823c6" -> "sha256:8c3ac3fbba6b4eba01eea40bdd719384c18475566b45a5fe358d306d741c0a6f" [label=""];
  "sha256:8c3ac3fbba6b4eba01eea40bdd719384c18475566b45a5fe358d306d741c0a6f" -> "sha256:5a7fa526836884c7afdbdcff2fbc92ad830cb870305b12bedb9ba0b4aec70dba" [label=""];
  "sha256:5a7fa526836884c7afdbdcff2fbc92ad830cb870305b12bedb9ba0b4aec70dba" -> "sha256:a35da7db02040212a4a049b21397d466bc4e5c399823f8e16bdf80ee53c26de8" [label=""];
}

