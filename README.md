# website-hugo

Hugo based website for the project.

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
git clone git@github.com:thegooddocsproject/website-hugo.git

# Enter the default working path
cd website-hugo

# Configure the remote sub-module where the docsy theme is store
git submodule add https://github.com/google/docsy.git themes/docsy

# Pulls down the latest from docsy theme
git submodule update --init --recursive

# Installs the CSS processor
npm install

# Run the build process/http service
hugo server
```

