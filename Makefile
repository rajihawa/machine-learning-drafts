install-r:
	sudo apt install -y dirmngr gnupg apt-transport-https ca-certificates software-properties-common libcurl4-openssl-dev
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
	sudo add-apt-repository -y "deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/"
	sudo apt update -y
	sudo apt install -y r-base
	sudo apt install build-essential -y
	sudo Rscript -e 'install.packages("devtools")'
	sudo Rscript -e 'install.packages("languageserver")'

remove-r:
	sudo Rscript -e 'remove.packages("devtools")'
	sudo Rscript -e 'remove.packages("languageserver")'
	sudo apt remove -y r-base
	python -m pip uninstall radian

setup-r:
	python -m pip install radian
	echo "alias r=\"radian\"" | sudo tee -a ~/.bashrc
