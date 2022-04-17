# `Note`
## This repo will not recieve update in future use https://github.com/coder/deploy-code-server this for diployment solution , you can still fork and add your own customization for personal use 
<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="https://raw.githubusercontent.com/ivangabriele/vscode-heroku/master/res/icon.png" alt="Project logo"></a>
</p>

<h3 align="center">code-server with rclone</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![GitHub Issues](https://img.shields.io/github/issues/SauravDharwadkar/heroku-code-server.svg)](https://github.com/SauravDharwadkar/heroku-code-server/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/SauravDharwadkar/heroku-code-server.svg)](https://github.com/SauravDharwadkar/heroku-code-server/pulls)
[![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](/LICENSE)
[![visitors](https://visitor-badge.glitch.me/badge?page_id=sauravdharwadkar.heroku-code-server)]()
</div>

---

<p align="center"> Few lines describing My project.
    <br> 
</p>

## 📝 Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Deployment](#deployment)
- [Usage](#usage)
- [TODO](https://github.com/SauravDharwadkar/heroku-code-server/blob/master/TODO.md)
- [Authors](#authors)
- [Acknowledgments](#acknowledgement)

## 🧐 About <a name = "about"></a>

This is heroku app that allow you to run vscode web version "code-server" also it implement rclone with sftp along with vscode sftp plugin to access files from multiple clouds supported by rclone .

## 🏁 Getting Started <a name = "getting_started"></a>

[![deployment](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)
<br/>
[](#deployment)

### Prerequisites

You need heroku account .
You need rclone .

```
sudo apt install rclone
```

### Installing

to generate rclone config use following

```bash
rclone config
```

after adding at least 1 working to rclone enter following to terminal to generate BASE_CONF value 

```bash
curl https://raw.githubusercontent.com/SauravDharwadkar/heroku-code-server/master/rclone_conf.sh | bash 
```

copy generated value and put in heroku ENV variables

#### Eg

```
BASE_CONF
Note: copy as it is without spaces 

<here  your config string maybe long>

here CLOUD_NAME ignore other token texts 

[<you cloud name>]
```

<br>

## 🎈 Usage <a name="usage"></a>

remeber the name you given to your heroku app and use that name to open your vscode on browser

<br> 

## 🚀 Deployment <a name = "deployment"></a>

if you work on other programming other than python and c , just fork repo edit Dockerfile and change install applications also add following line in Dockerfile to preinstalled vscode plugin 
```
RUN code-server --install-extension <plugin name> --force
```

also add heroku addons for database or other things as your need

## Note 
Heroku server provide single core , some time it took while to load application if you open it after long time , to be sure it loaded completely open terminal inside code-server to confirm it loaded completely

<br/>
<br/>

## ✍️ Authors <a name = "authors"></a>

- [@sauravdharwadkar](https://github.com/sauravdharwadkar) - Idea & Initial work



## 🎉 Acknowledgements <a name = "acknowledgement"></a>

- Inspiration 
    - ### covid-19

- References

  - [code-server](https://github.com/cdr/code-server)

   - [actual logo from vscode-heroku ](https://github.com/ivangabriele/vscode-heroku)
