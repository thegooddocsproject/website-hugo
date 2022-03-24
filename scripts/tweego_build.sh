wget https://github.com/tmedwards/tweego/releases/download/v2.1.1/tweego-2.1.1-linux-x64.zip
unzip tweego-2.1.1-linux-x64.zip -d tweego-bin
chmod 777 ./tweego-bin/tweego
export PATH=$PATH:$(pwd)/tweego-bin
export TWEEGO_PATH=assets/storyformats/
tweego -f chapbook-1 content/en/ia-guide/ia-cyoa.tw -o static/ia-guide/ia-cyoa.html
