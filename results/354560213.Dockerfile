[app/sources/354560213.Dockerfile]
digraph {
  "sha256:eaebd4d260b3e2211ec019adc1854357901cf5af7f65c6dd1e9d8b36af431edc" [label="docker-image://mcr.microsoft.com/windows/servercore:ltsc2016" shape="ellipse"];
  "sha256:94f4eaf06189d641e0f51084015e1ab3eefc3027db4bf2510554759db0312173" [label="local://context" shape="ellipse"];
  "sha256:cda260654502b7c7a4f8c8c75fc4cb1a6622660a659b6101b54e17f2bfb3fbab" [label="copy{src=/test.ps1, dest=/test.ps1}" shape="note"];
  "sha256:3c1fd89baa0cc9cc0c02eb08d35016bcd6130ab3b5ca5fcd2d7a9f9cd7d5c7bd" [label="/bin/sh -c powershell .\\test.ps1" shape="box"];
  "sha256:e889b102438f9554bf0ed54bb3ff4b8de44e5fd93d9d4f4160dcc68baadcaf7e" [label="sha256:e889b102438f9554bf0ed54bb3ff4b8de44e5fd93d9d4f4160dcc68baadcaf7e" shape="plaintext"];
  "sha256:eaebd4d260b3e2211ec019adc1854357901cf5af7f65c6dd1e9d8b36af431edc" -> "sha256:cda260654502b7c7a4f8c8c75fc4cb1a6622660a659b6101b54e17f2bfb3fbab" [label=""];
  "sha256:94f4eaf06189d641e0f51084015e1ab3eefc3027db4bf2510554759db0312173" -> "sha256:cda260654502b7c7a4f8c8c75fc4cb1a6622660a659b6101b54e17f2bfb3fbab" [label=""];
  "sha256:cda260654502b7c7a4f8c8c75fc4cb1a6622660a659b6101b54e17f2bfb3fbab" -> "sha256:3c1fd89baa0cc9cc0c02eb08d35016bcd6130ab3b5ca5fcd2d7a9f9cd7d5c7bd" [label=""];
  "sha256:3c1fd89baa0cc9cc0c02eb08d35016bcd6130ab3b5ca5fcd2d7a9f9cd7d5c7bd" -> "sha256:e889b102438f9554bf0ed54bb3ff4b8de44e5fd93d9d4f4160dcc68baadcaf7e" [label=""];
}

