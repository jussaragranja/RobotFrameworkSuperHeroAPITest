<h1 align="center">Welcome to RobotFrameworkSuperHeroAPITest 👋</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-1.0.0-blue.svg?cacheSeconds=2592000" />
  <a href="https://superheroapi.com/" target="_blank">
    <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg" />
  </a>
  <a href="https://twitter.com/JuuhGranja" target="_blank">
    <img alt="Twitter: JuuhGranja" src="https://img.shields.io/twitter/follow/JuuhGranja.svg?style=social" />
  </a>
</p>

> Test project using robotframework to test SuperHeroAPI

### ✨ [Demo](https://superheroapi.com/api/)

## System Requirements

```sh
- Python3
- robotframework
- robotframework-requests
```

## Run tests

```sh
run on local machine:
	robot -d results test

run in local Docker:
	docker build -t NAME_IMAGE .
	docker run --rm --name execution_robot NOME_DA_IMAGEM robot -d results -N "run in local Docker" tests

run with GitLabCI through GitLab:
	add project to gitlab repository
```

## Author

👤 **Jussara Granja**

* LinkedIn: [@jussaragranja](https://linkedin.com/in/jussaragranja)
* Github: [@jussaragranja](https://github.com/jussaragranja)
* Twitter: [@JuuhGranja](https://twitter.com/JuuhGranja)

