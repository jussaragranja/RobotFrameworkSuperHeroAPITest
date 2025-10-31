<h1 align="center">🤖 RobotFramework SuperHero API Test</h1> <p align="center"> <img alt="Version" src="https://img.shields.io/badge/version-2.0.0-blue.svg?cacheSeconds=2592000" /> <a href="https://superheroapi.com/" target="_blank"> <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg" /> </a> <a href="https://twitter.com/JuuhGranja" target="_blank"> <img alt="Twitter: JuuhGranja" src="https://img.shields.io/twitter/follow/JuuhGranja.svg?style=social" /> </a> </p>

![GitHub Workflow Status](https://github.com/jussaragranja/RobotFrameworkSuperHeroAPITest/actions/workflows/robot-tests.yml/badge.svg)

> Projeto de testes automatizados utilizando Robot Framework para validar os endpoints da [SuperHero API](https://superheroapi.com/api/)
---

## 🚀 Funcionalidades

- Testes automatizados de API com Robot Framework
- Uso do pacote robotframework-requests para chamadas HTTP
- Execução local, via Docker ou em CI/CD (GitLab/GitHub)
- Integração com GitLab CI/CD
- Instalação simplificada via requirements.txt
- Relatórios gerados automaticamente com logs detalhados
---

## 🧰 Requisitos do Sistema

Certifique-se de ter instalado:
- Python 3.x
- pip
- (opcional) Docker 
*para execução em container
---

## ⚙️ Configuração do Ambiente
1️⃣ Criar e ativar um ambiente virtual (recomendado)

```bash
python -m venv venv

# Ativar o ambiente
# Windows:
venv\Scripts\activate

# Linux/Mac:
source venv/bin/activate
```

2️⃣ Instalar dependências

```bash
pip install -r requirements.txt
```
---

## 🧪 Executando os Testes
🔹 Localmente

```bash
robot -d results tests
```

🔹 Usando Docker
```bash
# Build da imagem
docker build -t nome_da_imagem .

# Execução dos testes no container
docker run --rm --name execution_robot NOME_DA_IMAGEM robot -d results -N "run in local Docker" tests
```

🔹 Usando GitHub Actions

- O projeto também inclui um workflow automático chamado robot-tests.yml, localizado em .github/workflows/.
- Assim que o projeto for adicionado ao GitHub, o workflow será executado automaticamente a cada push ou pull request para a branch main.


🔹 Usando GitLab CI

- Adicione este projeto ao seu repositório no GitLab.
- O projeto já contém um arquivo .gitlab-ci.yml, que define o pipeline de testes automatizados.
- O GitLab executará automaticamente os testes toda vez que ocorrer um push ou merge request para o repositório.

---

## 🧾 Estrutura do Projeto

```bash
📦 RobotFrameworkSuperHeroAPITest
├── tests/                   # Diretório com os arquivos de teste (.robot)
├── resources/               # Recursos e variáveis usadas nos testes
├── results/                 # Saída dos relatórios de execução
├── requirements.txt         # Dependências do projeto
├── Dockerfile               # Configuração para execução via Docker
└── README.md                # Este arquivo
```
---

## 👩🏾‍💻 Autor

**Jussara Granja**

* 💼 LinkedIn: [@jussaragranja](https://linkedin.com/in/jussaragranja)
* 💻 GitHub: [@jussaragranja](https://github.com/jussaragranja)