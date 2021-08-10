[app/sources/445495219.Dockerfile]
digraph {
  "sha256:7dd3943f28cb5da016eba7a7f6932658968ffb51ff6fb6209069a11e3d207c52" [label="docker-image://docker.io/microsoft/windowsservercore:10.0.14393.1884" shape="ellipse"];
  "sha256:29f98ebb1fd75fe695b1d63e03024623a528bc79ba6a6cdd15db420eb9a22ad1" [label="/bin/sh -c reg add \"HKLM\\SOFTWARE\\Microsoft\\Windows\\Windows Error Reporting\" /v Disabled /t REG_DWORD /d 1 /f" shape="box"];
  "sha256:f1d73f12766a01b54b18f1000dc533c18b600cd6e1c9f57ec0fe6d8ccb135f1b" [label="/bin/sh -c reg add \"HKLM\\SOFTWARE\\Microsoft\\Windows\\Windows Error Reporting\" /v DontShowUI /t REG_DWORD /d 1 /f" shape="box"];
  "sha256:b55aae2c3d66a5f3fbfc466d0f8b0dd0255c357dcc172bd8e57b6a9f0c8c1e3d" [label="local://context" shape="ellipse"];
  "sha256:a50c5e1c585322b5a5556216865ca3802622d701fd78e27a417a08757e6c6866" [label="copy{src=/qtifwsilent.qs, dest=/C:qtifwsilent.qs}" shape="note"];
  "sha256:1dc7a29130df35f90ff743442a8ced0c323b8ab77f5fd6ab7671d3023505ad87" [label="/bin/sh -c powershell -NoProfile -ExecutionPolicy Bypass -Command     $ErrorActionPreference = 'Stop';     $Wc = New-Object System.Net.WebClient ;     $Wc.DownloadFile('https://download.qt.io/official_releases/qt/5.9/5.9.3/qt-opensource-windows-x86-5.9.3.exe', 'C:\\qt.exe') ;     Echo 'Downloaded qt-opensource-windows-x86-5.9.3.exe' ;     $Env:QT_INSTALL_DIR = 'C:\\\\Qt' ;     Start-Process C:\\qt.exe -ArgumentList '--verbose --script C:/qtifwsilent.qs' -NoNewWindow -Wait ;     Remove-Item C:\\qt.exe -Force ;     Remove-Item C:\\qtifwsilent.qs -Force" shape="box"];
  "sha256:5b1d77ede921aed383e53949e1932cfd479e22f709191032d91bf3b3dcdeb567" [label="/bin/sh -c dir \"%QTDIR%\" && dir \"%QTDIR64%\" && dir \"%QTDIR%\\bin\\Qt5Script.dll\" && dir \"%QTDIR64%\\bin\\Qt5Script.dll\"" shape="box"];
  "sha256:95627ef3508fe3596c28f78251d28d60998eb6c0943572c763da584e5e566fa6" [label="/bin/sh -c @powershell -NoProfile -ExecutionPolicy Bypass -Command     $Env:chocolateyVersion = '0.10.8' ;     $Env:chocolateyUseWindowsCompression = 'false' ;     \"iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))\" && SET \"PATH=%PATH%;%ALLUSERSPROFILE%\\chocolatey\\bin\"" shape="box"];
  "sha256:e999bd8d4442a224eccfc05438f68061a1982bb3f4b18eb5a8bc0c2951ba4607" [label="/bin/sh -c choco install -y python2 --version 2.7.14 && refreshenv && python --version && pip --version" shape="box"];
  "sha256:a0f122a7613821f777a28874c2069a285ec3815dc0521e522773197c681011e5" [label="/bin/sh -c choco install -y qbs --version 1.9.1 && qbs --version" shape="box"];
  "sha256:68633b00b6ac9fed5b580929b6d01c26efd7d7e2abe6337d50ab19a9532c8f9d" [label="/bin/sh -c choco install -y unzip --version 6.0 && unzip -v" shape="box"];
  "sha256:dd20fa644b56c183d8f9aa46532950830a46c08dff153655d8df2859d236abb3" [label="/bin/sh -c choco install -y visualcpp-build-tools --version 14.0.25420.1 && dir \"%PROGRAMFILES(X86)%\\Microsoft Visual C++ Build Tools\"" shape="box"];
  "sha256:d1e5d7612678e65b20374734a279f264246c22cc2ff4aa37be0e113cd464b566" [label="/bin/sh -c choco install -y zip --version 3.0 && zip -v" shape="box"];
  "sha256:6d25daf6efdd293039e4ed02d296a8ac8e2b477e7d0d1070e281a1c777186753" [label="/bin/sh -c pip install beautifulsoup4 lxml" shape="box"];
  "sha256:6024e4cbb030bfa57770526af2e8bebccd8bbdd0f2872cef41c05e84f61e2ad6" [label="sha256:6024e4cbb030bfa57770526af2e8bebccd8bbdd0f2872cef41c05e84f61e2ad6" shape="plaintext"];
  "sha256:7dd3943f28cb5da016eba7a7f6932658968ffb51ff6fb6209069a11e3d207c52" -> "sha256:29f98ebb1fd75fe695b1d63e03024623a528bc79ba6a6cdd15db420eb9a22ad1" [label=""];
  "sha256:29f98ebb1fd75fe695b1d63e03024623a528bc79ba6a6cdd15db420eb9a22ad1" -> "sha256:f1d73f12766a01b54b18f1000dc533c18b600cd6e1c9f57ec0fe6d8ccb135f1b" [label=""];
  "sha256:f1d73f12766a01b54b18f1000dc533c18b600cd6e1c9f57ec0fe6d8ccb135f1b" -> "sha256:a50c5e1c585322b5a5556216865ca3802622d701fd78e27a417a08757e6c6866" [label=""];
  "sha256:b55aae2c3d66a5f3fbfc466d0f8b0dd0255c357dcc172bd8e57b6a9f0c8c1e3d" -> "sha256:a50c5e1c585322b5a5556216865ca3802622d701fd78e27a417a08757e6c6866" [label=""];
  "sha256:a50c5e1c585322b5a5556216865ca3802622d701fd78e27a417a08757e6c6866" -> "sha256:1dc7a29130df35f90ff743442a8ced0c323b8ab77f5fd6ab7671d3023505ad87" [label=""];
  "sha256:1dc7a29130df35f90ff743442a8ced0c323b8ab77f5fd6ab7671d3023505ad87" -> "sha256:5b1d77ede921aed383e53949e1932cfd479e22f709191032d91bf3b3dcdeb567" [label=""];
  "sha256:5b1d77ede921aed383e53949e1932cfd479e22f709191032d91bf3b3dcdeb567" -> "sha256:95627ef3508fe3596c28f78251d28d60998eb6c0943572c763da584e5e566fa6" [label=""];
  "sha256:95627ef3508fe3596c28f78251d28d60998eb6c0943572c763da584e5e566fa6" -> "sha256:e999bd8d4442a224eccfc05438f68061a1982bb3f4b18eb5a8bc0c2951ba4607" [label=""];
  "sha256:e999bd8d4442a224eccfc05438f68061a1982bb3f4b18eb5a8bc0c2951ba4607" -> "sha256:a0f122a7613821f777a28874c2069a285ec3815dc0521e522773197c681011e5" [label=""];
  "sha256:a0f122a7613821f777a28874c2069a285ec3815dc0521e522773197c681011e5" -> "sha256:68633b00b6ac9fed5b580929b6d01c26efd7d7e2abe6337d50ab19a9532c8f9d" [label=""];
  "sha256:68633b00b6ac9fed5b580929b6d01c26efd7d7e2abe6337d50ab19a9532c8f9d" -> "sha256:dd20fa644b56c183d8f9aa46532950830a46c08dff153655d8df2859d236abb3" [label=""];
  "sha256:dd20fa644b56c183d8f9aa46532950830a46c08dff153655d8df2859d236abb3" -> "sha256:d1e5d7612678e65b20374734a279f264246c22cc2ff4aa37be0e113cd464b566" [label=""];
  "sha256:d1e5d7612678e65b20374734a279f264246c22cc2ff4aa37be0e113cd464b566" -> "sha256:6d25daf6efdd293039e4ed02d296a8ac8e2b477e7d0d1070e281a1c777186753" [label=""];
  "sha256:6d25daf6efdd293039e4ed02d296a8ac8e2b477e7d0d1070e281a1c777186753" -> "sha256:6024e4cbb030bfa57770526af2e8bebccd8bbdd0f2872cef41c05e84f61e2ad6" [label=""];
}

