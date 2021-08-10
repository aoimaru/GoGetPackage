[app/sources/263660779.Dockerfile]
digraph {
  "sha256:5c63e46e56587395464935fbbb779b8f33e34451e961ba3eb79f3b06f8691ed1" [label="docker-image://docker.io/microsoft/nanoserver:latest" shape="ellipse"];
  "sha256:ead226b5c2562f869e9ff0d7238356ac102c940c3e508a07417e5127d30c8169" [label="/bin/sh -c powershell.exe -Command ; \t$handler = New-Object System.Net.Http.HttpClientHandler ; \t$client = New-Object System.Net.Http.HttpClient($handler) ; \t$client.Timeout = New-Object System.TimeSpan(0, 30, 0) ; \t$cancelTokenSource = [System.Threading.CancellationTokenSource]::new() ; \t$responseMsg = $client.GetAsync([System.Uri]::new('%GOLANG_DOWNLOAD_URL%'), $cancelTokenSource.Token) ; \t$responseMsg.Wait() ; \t$downloadedFileStream = [System.IO.FileStream]::new('c:\\go.zip', [System.IO.FileMode]::Create, [System.IO.FileAccess]::Write) ; \t$response = $responseMsg.Result ; \t$copyStreamOp = $response.Content.CopyToAsync($downloadedFileStream) ; \t$copyStreamOp.Wait() ; \t$downloadedFileStream.Close() ; \t[System.IO.Compression.ZipFile]::ExtractToDirectory('c:\\go.zip','c:\\') ; \tRemove-Item c:\\go.zip -Force" shape="box"];
  "sha256:41825038878a23f01cf50adf2b19728974c014c7c2286458ca6c14fe8358fe2e" [label="/bin/sh -c powershell.exe -Command $path = $env:path + ';c:\\go\\bin'; Set-ItemProperty -Path 'HKLM:\\SYSTEM\\CurrentControlSet\\Control\\Session Manager\\Environment\\' -Name Path -Value $path" shape="box"];
  "sha256:c436e52415f8e2618ff488bda51a8406d930c6eb39f25bce8343333f55634c32" [label="sha256:c436e52415f8e2618ff488bda51a8406d930c6eb39f25bce8343333f55634c32" shape="plaintext"];
  "sha256:5c63e46e56587395464935fbbb779b8f33e34451e961ba3eb79f3b06f8691ed1" -> "sha256:ead226b5c2562f869e9ff0d7238356ac102c940c3e508a07417e5127d30c8169" [label=""];
  "sha256:ead226b5c2562f869e9ff0d7238356ac102c940c3e508a07417e5127d30c8169" -> "sha256:41825038878a23f01cf50adf2b19728974c014c7c2286458ca6c14fe8358fe2e" [label=""];
  "sha256:41825038878a23f01cf50adf2b19728974c014c7c2286458ca6c14fe8358fe2e" -> "sha256:c436e52415f8e2618ff488bda51a8406d930c6eb39f25bce8343333f55634c32" [label=""];
}

