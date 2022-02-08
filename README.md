# The Good Docs Marketing Site

A Hugo based site using the [Docsy](https://github.com/google/docsy/) theme for the [Good Docs Project](https://thegooddocsproject.dev/).

## How to Edit

Expand the section below based on how you would like to contribute changes to the project.

<details><summary>Edit Online with Gitpod</summary>
<p>

Learn more with the [Gitpod Docs](https://www.gitpod.io/docs)

### Create a Free Gitpod Account

You only have to do this step the first time, to create a Gitpod account, after that you can just click the green buttons.
For more information on setting up an account, see https://gitpod.io/plans

NOTE: Authenticate with the Github account you use in the Good Docs Project.
  
### Install the GitPod Browser Extension

The [Browser Extension](https://www.gitpod.io/docs/browser-extension) will add GitPod buttons to the GitHub UI to make it easier to launch GitPod from appropriate contexts in the project.

### Click the green Gitpod Button

This should launch Gitpod and a web based editor with live preview.

NOTE: The [context](https://www.gitpod.io/docs/context-urls) in which you click the button, will change the gitpod environment and remote connections for you.

### Edit and Commit

This works a lot like how tools like VS Code work, where you stage your changes and commit to the branch or your fork and submit a PR to the main branch of the project.
Only when you are done you just close the browser and nothing is left behind on your computer.

</p>
</details>

<details><summary>Edit Online with Github Editor</summary>
<p>

This is for quick changes, or when preview of your work on the site is unnecessary.

Read the [Documentation on the Github Site](https://docs.github.com/en/github/managing-files-in-a-repository/editing-files-in-your-repository)

NOTE: It is best practice to choose the "Create a new branch for this commit and start a pull request." option when commiting your changes to the project.  Then assign the Pull Request to someone else in the project to take a look at it before you merge it.

</p>
</details>

<details><summary>Edit Locally on your Desktop</summary>
<p>
  
Quick instructions for getting started if you're on Mac OSX.

### Requirements

- Brew installed
- NodeJS installed

### CLI Instructions

These are the step-by-step instructions one can execute to configure a local environment.
Note: This does use a git submodule for the Docsy theme, so using the correct git clone command is important.

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

</p>
</details>

## Working Groups Content

For guidance on the purpose, operation and creation/maintenance of site content for Working Groups see [Working Group Guidelines](https://github.com/thegooddocsproject/governance/blob/master/Working_Group_Guidelines.md) in the Governance repository.
