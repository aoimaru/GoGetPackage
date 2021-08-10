[app/sources/475055646.Dockerfile]
digraph {
  "sha256:5acf6d1946cb8390298215bbf7e381ad67d431c09a132c2287786d433136d88a" [label="docker-image://docker.io/library/tibbase:1.0.0" shape="ellipse"];
  "sha256:5935df808b99d1f2d92941720cae6df9e2952793f5a952fd1cf731390f606622" [label="local://context" shape="ellipse"];
  "sha256:19ce03435015d4d5f32a587a3d8fdf1f299ed02eef95d49b099e40847f1bc7c6" [label="copy{src=/TIB_BW_6.*.zip, dest=/tmp/install/}" shape="note"];
  "sha256:f23a69c77a259ad397b57e1827a25925ae0e566605e0d738116f22a75a7d9a39" [label="/bin/sh -c unzip /tmp/install/TIB_BW_6.*.zip -d /tmp/install/tibbw && \tsed -i 's/<entry key=\"environmentName\">.*<\\/entry>/<entry key=\"environmentName\">DockerizedEnvironment<\\/entry>/g' /tmp/install/tibbw/TIBCOUniversalInstaller_BW_6.3.*.silent && \tsed -i 's/<entry key=\"installationRoot\">.*<\\/entry>/<entry key=\"installationRoot\">\\/opt\\/tibco<\\/entry>/g' /tmp/install/tibbw/TIBCOUniversalInstaller_BW_6.3.*.silent && \tsed -i 's/<entry key=\"LGPLAssemblyPath\">.*<\\/entry>/<entry key=\"LGPLAssemblyPath\">\\/opt\\/tibco\\/thirdpartysoftware<\\/entry>/g' /tmp/install/tibbw/TIBCOUniversalInstaller_BW_6.3.*.silent && \tsed -i 's/<entry key=\"selectedProfiles\">.*<\\/entry>/<entry key=\"selectedProfiles\">Runtime<\\/entry>/g' /tmp/install/tibbw/TIBCOUniversalInstaller_BW_6.3.*.silent && \t/bin/bash /tmp/install/tibbw/TIBCOUniversalInstaller-lnx-x86-64.bin -silent && \trm -rf /tmp/install/ /tmp/install/tibbw/TIB_BW_6.*.zip" shape="box"];
  "sha256:3dfcbecae3630ca3cca5404e3cf538299702a9f4ffe20650df61c2e90a15de57" [label="sha256:3dfcbecae3630ca3cca5404e3cf538299702a9f4ffe20650df61c2e90a15de57" shape="plaintext"];
  "sha256:5acf6d1946cb8390298215bbf7e381ad67d431c09a132c2287786d433136d88a" -> "sha256:19ce03435015d4d5f32a587a3d8fdf1f299ed02eef95d49b099e40847f1bc7c6" [label=""];
  "sha256:5935df808b99d1f2d92941720cae6df9e2952793f5a952fd1cf731390f606622" -> "sha256:19ce03435015d4d5f32a587a3d8fdf1f299ed02eef95d49b099e40847f1bc7c6" [label=""];
  "sha256:19ce03435015d4d5f32a587a3d8fdf1f299ed02eef95d49b099e40847f1bc7c6" -> "sha256:f23a69c77a259ad397b57e1827a25925ae0e566605e0d738116f22a75a7d9a39" [label=""];
  "sha256:f23a69c77a259ad397b57e1827a25925ae0e566605e0d738116f22a75a7d9a39" -> "sha256:3dfcbecae3630ca3cca5404e3cf538299702a9f4ffe20650df61c2e90a15de57" [label=""];
}

