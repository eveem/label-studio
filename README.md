<img src="https://raw.githubusercontent.com/heartexlabs/label-studio/master/images/ls_github_header.png"/>

![GitHub](https://img.shields.io/github/license/heartexlabs/label-studio?logo=heartex) ![label-studio:build](https://github.com/heartexlabs/label-studio/workflows/label-studio:build/badge.svg) ![GitHub release](https://img.shields.io/github/v/release/heartexlabs/label-studio?include_prereleases)

[Website](https://labelstud.io/) • [Docs](https://labelstud.io/guide/) • [Twitter](https://twitter.com/heartexlabs) • [Join Slack Community <img src="https://app.heartex.ai/docs/images/slack-mini.png" width="18px"/>](http://slack.labelstud.io.s3-website-us-east-1.amazonaws.com?source=github-1)

This repository is forked from [label-studio](https://github.com/heartexlabs/label-studio). Its objective is to make a tool supporting Named-Entity Extraction Project for WISESIGHT.

## __How to Run__
```sh
sh start_label_studio_docker.sh <project_name> <user_email> <user_password> <user_token> <path/to/tasks.json>
```
For example
```sh
sh start_label_studio_docker.sh ner-annotation-project tequila.internal@wisesight wsdev! wisesighttoken tasks.json
```
