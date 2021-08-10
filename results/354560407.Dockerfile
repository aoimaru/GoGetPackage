[app/sources/354560407.Dockerfile]
digraph {
  "sha256:eaebd4d260b3e2211ec019adc1854357901cf5af7f65c6dd1e9d8b36af431edc" [label="docker-image://mcr.microsoft.com/windows/servercore:ltsc2016" shape="ellipse"];
  "sha256:3de907c63cf72c6d83ec0801d4f5815857218044cdb8e70112cf39dba6f00bd5" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'));     choco feature disable --name showDownloadProgress ;     choco install -y openssl.light --version $env:OPENSSL_VERSION" shape="box"];
  "sha256:4afc28ef31ab873ae73970d0419716c50210fb3aa11d08e33752e6e8561cec62" [label="mkdir{path=/C:\\Program Files\\OpenSSL\\bin}" shape="note"];
  "sha256:a78feca529608792810f91b371378f5db4c9b6c68b9b9e4f2c9a697b18b67f95" [label="sha256:a78feca529608792810f91b371378f5db4c9b6c68b9b9e4f2c9a697b18b67f95" shape="plaintext"];
  "sha256:eaebd4d260b3e2211ec019adc1854357901cf5af7f65c6dd1e9d8b36af431edc" -> "sha256:3de907c63cf72c6d83ec0801d4f5815857218044cdb8e70112cf39dba6f00bd5" [label=""];
  "sha256:3de907c63cf72c6d83ec0801d4f5815857218044cdb8e70112cf39dba6f00bd5" -> "sha256:4afc28ef31ab873ae73970d0419716c50210fb3aa11d08e33752e6e8561cec62" [label=""];
  "sha256:4afc28ef31ab873ae73970d0419716c50210fb3aa11d08e33752e6e8561cec62" -> "sha256:a78feca529608792810f91b371378f5db4c9b6c68b9b9e4f2c9a697b18b67f95" [label=""];
}

