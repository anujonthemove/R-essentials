echo "-- Installing r-base --"

echo "-- Adding R repository --"
sudo echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" | sudo tee -a /etc/apt/sources.list

echo "-- Adding to Ubuntu Keyring --"
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -

echo "-- Installing R-Base --"
sudo apt-get update
sudo apt-get install r-base r-base-dev -y

echo "-- Installing R-Studio --"
sudo apt-get install gdebi-core -y
wget https://download1.rstudio.org/rstudio-1.0.143-amd64.deb
sudo gdebi -n rstudio-1.0.143-amd64.deb -y
rm rstudio-1.0.143-amd64.deb

echo "-- Installing RMarkdown Essentials --"

echo "-- Installing Latex fonts --"
sudo apt-get install texlive-full
