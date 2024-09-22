# GitHub Issues Fetcher

This script fetches all the issues from the [rails/rails](https://github.com/rails/rails) GitHub repository and saves them into a `JSON` file.

## Prerequisites

You need to have the following tools installed on your machine:

1. **GitHub CLI (`gh`)**: Used to interact with the GitHub API.
2. **`jq`**: A lightweight command-line JSON processor.

### Installation Instructions

#### Install GitHub CLI (`gh`)
```bash
sudo apt update
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
sudo apt-key add /usr/share/keyrings/githubcli-archive-keyring.gpg
sudo apt-add-repository https://cli.github.com/packages
sudo apt install gh
```
#### Install (`jq`)
```bash
sudo apt-get install jq
```
### Then authenticate using:
```bash
gh auth login --with-token < mytoken.txt
```

## Usage
```bash
./fetch_rails_issues.sh
```

## Data Path

The data used for this project is stored in the following Google Drive folder:

[Google Drive Data Folder](https://drive.google.com/drive/folders/1BMKcaCmbnKC2Uvl4gilnBqbrLoxT4He8?usp=sharing)


## HuggingFace Notebook

The HuggingFace notebook used in this project can be found at the following link:

[HuggingFace Notebook on Kaggle](https://www.kaggle.com/code/marouaneemalhi/phd-programming-assignment)


