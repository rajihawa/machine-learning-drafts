install-r:
	sudo apt install -y dirmngr gnupg apt-transport-https ca-certificates software-properties-common
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
	# echo "deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/" | sudo tee -a /etc/apt/sources.list.d/microsoft.list
	sudo add-apt-repository -y "deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/"
	sudo apt update -y
	# sudo apt upgrade -y
	sudo apt install -y r-base
	R --version
	sudo apt install build-essential -y