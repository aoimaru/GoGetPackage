[app/sources/420614511.Dockerfile]
digraph {
  "sha256:aa35d24cba645c2edc3b801a1441fe05d1c0c570ec41b60bbe3208c6821191c1" [label="docker-image://mcr.microsoft.com/dotnet/core/aspnet:2.2-alpine@sha256:b2bb664f6182f5175e676c1db0a62bbf1ef805f42e86b08b495c3d51a8509aa5" shape="ellipse"];
  "sha256:26ea80c95641f710a7b63218ae180c837742f4ea49513e56013974e85a289c91" [label="mkdir{path=/app}" shape="note"];
  "sha256:788be1ec586a506f5967663306c3f784ecadd6ccf546fb6e73a9acf548f93137" [label="local://context" shape="ellipse"];
  "sha256:99241c09ee81e1eb1dcf29d5aabe7c96608881690bd6bc5457496c1b60a312fd" [label="docker-image://mcr.microsoft.com/dotnet/core/sdk:2.2-alpine@sha256:5ce9081823932f7d06ed9bf2aee6b8067e199518c50d583a2d990fe9459915eb" shape="ellipse"];
  "sha256:93532b142e0ebae11defc669b32a48886a4c3cc6a2f18cceaa7ca6ea62d96907" [label="mkdir{path=/app}" shape="note"];
  "sha256:d9c65bdfa6bdb40825a59f70894011150d73b06848f332937062f112f472f97d" [label="copy{src=/*.sln, dest=/app/}" shape="note"];
  "sha256:9a57a4df9da95787a8d278b35791f65880b20a609eb4561369a1b98d8f135963" [label="copy{src=/XamarinSecurityScanner.App/*.csproj, dest=/app/XamarinSecurityScanner.App/}" shape="note"];
  "sha256:0c1bf0ec17ab79f1fd301ccbfca2b9bbde62cf525fec63f0f734430642709d16" [label="copy{src=/XamarinSecurityScanner.App.Tests/*.csproj, dest=/app/XamarinSecurityScanner.App.Tests/}" shape="note"];
  "sha256:4768d2ead6ff7024cd2c58a61fbd33c87709c534b8a662a6a247698eb5c858a7" [label="copy{src=/XamarinSecurityScanner.Core/*.csproj, dest=/app/XamarinSecurityScanner.Core/}" shape="note"];
  "sha256:c4114acf9b9a55f4518a8eb080f8e588307c843bdf6a4966a1a4ccfe1c83eec0" [label="copy{src=/XamarinSecurityScanner.Core.Tests/*.csproj, dest=/app/XamarinSecurityScanner.Core.Tests/}" shape="note"];
  "sha256:c421ee91427101b3a4f29ee668f862a00eaa57987f1e2d053af703ef80665a53" [label="copy{src=/XamarinSecurityScanner.Analyzers/*.csproj, dest=/app/XamarinSecurityScanner.Analyzers/}" shape="note"];
  "sha256:23d86671c2183694360246d016d26fe4707c3f82969d8230c4319ef57e8e240b" [label="copy{src=/XamarinSecurityScanner.Analyzers.Tests/*.csproj, dest=/app/XamarinSecurityScanner.Analyzers.Tests/}" shape="note"];
  "sha256:d5a7ffd52ba918f29d8b360c5ddaa2f1423b58d34e385cb43b0752eaf12cb9d7" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:45cb7d568c37085d73caf72721c69b7116c47611fa85262391e838a51e96d007" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:4584482208581c7ff9842e4cbb02a37f2cb5e613acd99e2a4a24645814ea15f4" [label="/bin/sh -c dotnet test" shape="box"];
  "sha256:52c5958e8d84d4cce77d2d0e12a587872b93c30947a1aa9e03e1d31faefbddbe" [label="mkdir{path=/app/XamarinSecurityScanner.App}" shape="note"];
  "sha256:9bcef7f3474275775505b02e199c7ed05ccfcdf43e0e9e95034890caa08212ad" [label="/bin/sh -c dotnet publish -c Release -o out" shape="box"];
  "sha256:7abf4d3b40310cca45a95464dd0dcea913bfed3929581adf4ed3da58719f12e5" [label="copy{src=/app/XamarinSecurityScanner.App/out, dest=/app/}" shape="note"];
  "sha256:0a5da6a367e3635d7ab6080512a8fe843842c147207c5428b176c906dca6fc6a" [label="sha256:0a5da6a367e3635d7ab6080512a8fe843842c147207c5428b176c906dca6fc6a" shape="plaintext"];
  "sha256:aa35d24cba645c2edc3b801a1441fe05d1c0c570ec41b60bbe3208c6821191c1" -> "sha256:26ea80c95641f710a7b63218ae180c837742f4ea49513e56013974e85a289c91" [label=""];
  "sha256:99241c09ee81e1eb1dcf29d5aabe7c96608881690bd6bc5457496c1b60a312fd" -> "sha256:93532b142e0ebae11defc669b32a48886a4c3cc6a2f18cceaa7ca6ea62d96907" [label=""];
  "sha256:93532b142e0ebae11defc669b32a48886a4c3cc6a2f18cceaa7ca6ea62d96907" -> "sha256:d9c65bdfa6bdb40825a59f70894011150d73b06848f332937062f112f472f97d" [label=""];
  "sha256:788be1ec586a506f5967663306c3f784ecadd6ccf546fb6e73a9acf548f93137" -> "sha256:d9c65bdfa6bdb40825a59f70894011150d73b06848f332937062f112f472f97d" [label=""];
  "sha256:d9c65bdfa6bdb40825a59f70894011150d73b06848f332937062f112f472f97d" -> "sha256:9a57a4df9da95787a8d278b35791f65880b20a609eb4561369a1b98d8f135963" [label=""];
  "sha256:788be1ec586a506f5967663306c3f784ecadd6ccf546fb6e73a9acf548f93137" -> "sha256:9a57a4df9da95787a8d278b35791f65880b20a609eb4561369a1b98d8f135963" [label=""];
  "sha256:9a57a4df9da95787a8d278b35791f65880b20a609eb4561369a1b98d8f135963" -> "sha256:0c1bf0ec17ab79f1fd301ccbfca2b9bbde62cf525fec63f0f734430642709d16" [label=""];
  "sha256:788be1ec586a506f5967663306c3f784ecadd6ccf546fb6e73a9acf548f93137" -> "sha256:0c1bf0ec17ab79f1fd301ccbfca2b9bbde62cf525fec63f0f734430642709d16" [label=""];
  "sha256:0c1bf0ec17ab79f1fd301ccbfca2b9bbde62cf525fec63f0f734430642709d16" -> "sha256:4768d2ead6ff7024cd2c58a61fbd33c87709c534b8a662a6a247698eb5c858a7" [label=""];
  "sha256:788be1ec586a506f5967663306c3f784ecadd6ccf546fb6e73a9acf548f93137" -> "sha256:4768d2ead6ff7024cd2c58a61fbd33c87709c534b8a662a6a247698eb5c858a7" [label=""];
  "sha256:4768d2ead6ff7024cd2c58a61fbd33c87709c534b8a662a6a247698eb5c858a7" -> "sha256:c4114acf9b9a55f4518a8eb080f8e588307c843bdf6a4966a1a4ccfe1c83eec0" [label=""];
  "sha256:788be1ec586a506f5967663306c3f784ecadd6ccf546fb6e73a9acf548f93137" -> "sha256:c4114acf9b9a55f4518a8eb080f8e588307c843bdf6a4966a1a4ccfe1c83eec0" [label=""];
  "sha256:c4114acf9b9a55f4518a8eb080f8e588307c843bdf6a4966a1a4ccfe1c83eec0" -> "sha256:c421ee91427101b3a4f29ee668f862a00eaa57987f1e2d053af703ef80665a53" [label=""];
  "sha256:788be1ec586a506f5967663306c3f784ecadd6ccf546fb6e73a9acf548f93137" -> "sha256:c421ee91427101b3a4f29ee668f862a00eaa57987f1e2d053af703ef80665a53" [label=""];
  "sha256:c421ee91427101b3a4f29ee668f862a00eaa57987f1e2d053af703ef80665a53" -> "sha256:23d86671c2183694360246d016d26fe4707c3f82969d8230c4319ef57e8e240b" [label=""];
  "sha256:788be1ec586a506f5967663306c3f784ecadd6ccf546fb6e73a9acf548f93137" -> "sha256:23d86671c2183694360246d016d26fe4707c3f82969d8230c4319ef57e8e240b" [label=""];
  "sha256:23d86671c2183694360246d016d26fe4707c3f82969d8230c4319ef57e8e240b" -> "sha256:d5a7ffd52ba918f29d8b360c5ddaa2f1423b58d34e385cb43b0752eaf12cb9d7" [label=""];
  "sha256:d5a7ffd52ba918f29d8b360c5ddaa2f1423b58d34e385cb43b0752eaf12cb9d7" -> "sha256:45cb7d568c37085d73caf72721c69b7116c47611fa85262391e838a51e96d007" [label=""];
  "sha256:788be1ec586a506f5967663306c3f784ecadd6ccf546fb6e73a9acf548f93137" -> "sha256:45cb7d568c37085d73caf72721c69b7116c47611fa85262391e838a51e96d007" [label=""];
  "sha256:45cb7d568c37085d73caf72721c69b7116c47611fa85262391e838a51e96d007" -> "sha256:4584482208581c7ff9842e4cbb02a37f2cb5e613acd99e2a4a24645814ea15f4" [label=""];
  "sha256:4584482208581c7ff9842e4cbb02a37f2cb5e613acd99e2a4a24645814ea15f4" -> "sha256:52c5958e8d84d4cce77d2d0e12a587872b93c30947a1aa9e03e1d31faefbddbe" [label=""];
  "sha256:52c5958e8d84d4cce77d2d0e12a587872b93c30947a1aa9e03e1d31faefbddbe" -> "sha256:9bcef7f3474275775505b02e199c7ed05ccfcdf43e0e9e95034890caa08212ad" [label=""];
  "sha256:26ea80c95641f710a7b63218ae180c837742f4ea49513e56013974e85a289c91" -> "sha256:7abf4d3b40310cca45a95464dd0dcea913bfed3929581adf4ed3da58719f12e5" [label=""];
  "sha256:9bcef7f3474275775505b02e199c7ed05ccfcdf43e0e9e95034890caa08212ad" -> "sha256:7abf4d3b40310cca45a95464dd0dcea913bfed3929581adf4ed3da58719f12e5" [label=""];
  "sha256:7abf4d3b40310cca45a95464dd0dcea913bfed3929581adf4ed3da58719f12e5" -> "sha256:0a5da6a367e3635d7ab6080512a8fe843842c147207c5428b176c906dca6fc6a" [label=""];
}

