[app/sources/255634764.Dockerfile]
digraph {
  "sha256:811e329a2ca9d16cd951cf155e2bf89d3d7a2c220b2b8b070f3aedd5cfe37e5f" [label="docker-image://docker.io/linuxbrew/brew:2.0.5" shape="ellipse"];
  "sha256:266a084a63ba6588890fe162081747e0c634c88b35e1e14a7f0cd182ff03c181" [label="/bin/sh -c sudo apt-get update \t&& sudo apt-get install -y --no-install-recommends \t\tfonts-dejavu-core \t&& sudo rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:af85ca14bc48a8133fb69ad9549341bc66d8bb03317287020d28a0ee323f8b43" [label="/bin/sh -c brew update && brew tap brewsci/base && brew tap brewsci/bio && brew tap brewsci/science && brew install autoconf automake berkeley-db cpanm expat jdk jdk@8 less libxml2 man-db matplotlib miller numpy pandoc perl python python@2 r ruby scipy tcsh unzip vim zip zlib" shape="box"];
  "sha256:86d17f379f7f94bc143b0bbf09595b782339949c6a634ff2e0bc399a92c9e1e5" [label="sha256:86d17f379f7f94bc143b0bbf09595b782339949c6a634ff2e0bc399a92c9e1e5" shape="plaintext"];
  "sha256:811e329a2ca9d16cd951cf155e2bf89d3d7a2c220b2b8b070f3aedd5cfe37e5f" -> "sha256:266a084a63ba6588890fe162081747e0c634c88b35e1e14a7f0cd182ff03c181" [label=""];
  "sha256:266a084a63ba6588890fe162081747e0c634c88b35e1e14a7f0cd182ff03c181" -> "sha256:af85ca14bc48a8133fb69ad9549341bc66d8bb03317287020d28a0ee323f8b43" [label=""];
  "sha256:af85ca14bc48a8133fb69ad9549341bc66d8bb03317287020d28a0ee323f8b43" -> "sha256:86d17f379f7f94bc143b0bbf09595b782339949c6a634ff2e0bc399a92c9e1e5" [label=""];
}

