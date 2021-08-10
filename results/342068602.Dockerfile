[app/sources/342068602.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:374643463d0766e934f506322ab8e89836506b37a843b1b1db121a6894700a56" [label="local://context" shape="ellipse"];
  "sha256:f186d148e133371b5f4fbba17cb1c6c7420f13e7b6f0940ea6bbf491c3361c0a" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:d10246407302aaa3d904e44f9c87d4b98a3291ba7a121f73e6e8034eeb17e9ae" [label="pip install lxml" shape="box"];
  "sha256:f09c9d0b0dc94affe13fc553e0fe552131c1433c50c6db4e41c52fdbab5c0639" [label="sha256:f09c9d0b0dc94affe13fc553e0fe552131c1433c50c6db4e41c52fdbab5c0639" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:f186d148e133371b5f4fbba17cb1c6c7420f13e7b6f0940ea6bbf491c3361c0a" [label=""];
  "sha256:374643463d0766e934f506322ab8e89836506b37a843b1b1db121a6894700a56" -> "sha256:f186d148e133371b5f4fbba17cb1c6c7420f13e7b6f0940ea6bbf491c3361c0a" [label=""];
  "sha256:f186d148e133371b5f4fbba17cb1c6c7420f13e7b6f0940ea6bbf491c3361c0a" -> "sha256:d10246407302aaa3d904e44f9c87d4b98a3291ba7a121f73e6e8034eeb17e9ae" [label=""];
  "sha256:d10246407302aaa3d904e44f9c87d4b98a3291ba7a121f73e6e8034eeb17e9ae" -> "sha256:f09c9d0b0dc94affe13fc553e0fe552131c1433c50c6db4e41c52fdbab5c0639" [label=""];
}

