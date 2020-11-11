# The Good Docs Marketing Site

A preview of the Hugo based website using the [docsy](https://github.com/google/docsy/) theme, can be found at [https://gdp-hugo.netlify.app/](https://gdp-hugo.netlify.app/).

## Setup Local Environment

Quick instructions for getting started if you're on Mac OSX.

### Requirements

- Brew installed
- NodeJS installed

### CLI Instructions

These are the step-by-step instructions one can execute to configure a local environment.

```shell
# Installs the Hugo Binary that will be used to build and run the Hugo Server
brew install hugo

# Clone the repo locally
git clone --recurse-submodules --depth 1 git@github.com:thegooddocsproject/website-hugo.git

# Enter the default working path
cd website-hugo

# Installs the CSS processor
npm install

# Run the build process/http service
hugo server
```
