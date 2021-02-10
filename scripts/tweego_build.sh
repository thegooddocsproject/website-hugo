go get github.com/tmedwards/tweego
export PATH=$PATH:$(go env GOPATH)/bin
export TWEEGO_PATH=assets/storyformats/
tweego -f chapbook-1 content/en/ia-guide/ia-cyoa.tw -o static/ia-guide/ia-cyoa.html