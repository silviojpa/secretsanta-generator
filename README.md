# Secret Santa Generator Application :santa:

O que o pipeline faz?

Este pipeline Jenkins automatiza o processo de desenvolvimento, teste e implantação de uma aplicação Java. Ele executa uma série de tarefas em sequência, desde a obtenção do código-fonte até a implantação da aplicação em um container Docker.
Detalhamento das etapas:

    Checkout Git:
        O que faz: Baixa o código-fonte mais recente do repositório Git especificado (no caso, o repositório secretsanta-generator no GitHub).
        Por que: Garante que a versão mais atual do código está sendo utilizada para as próximas etapas.

    Compilação:
        O que faz: Compila o código-fonte Java em bytecode (código intermediário que a Máquina Virtual Java pode executar).
        Por que: Prepara o código para ser executado e analisado por outras ferramentas.

    Análise SonarQube:
        O que faz: Analisa o código em busca de possíveis problemas de qualidade, como bugs, vulnerabilidades e violações de regras de codificação.
        Por que: Ajuda a garantir a qualidade do código e a identificar áreas que precisam de melhoria.

    Verificação de Dependências OWASP:
        O que faz: Verifica as dependências do projeto (bibliotecas, frameworks, etc.) em busca de vulnerabilidades conhecidas.
        Por que: Ajuda a proteger a aplicação contra ataques explorando vulnerabilidades em componentes de terceiros.

    Build:
        O que faz: Cria um artefato executável (como um JAR) a partir do código compilado e suas dependências.
        Por que: Prepara a aplicação para ser empacotada e distribuída.

    Build e Push de Docker:
        O que faz: Cria uma imagem Docker a partir do artefato executável e envia essa imagem para um registro Docker.
        Por que: Empacota a aplicação em um container leve e portável, facilitando a distribuição e a execução em diferentes ambientes.

    Deploy para Container:
        O que faz: Inicia um container Docker a partir da imagem criada anteriormente e o configura para executar a aplicação.
        Por que: Implanta a aplicação em um ambiente de execução isolado e gerenciado pelo Docker.

Conceitos-chave:

    Jenkins: Ferramenta de automação de construção e implantação de software.
    Pipeline: Conjunto de etapas definidas para automatizar um processo.
    Git: Sistema de controle de versão.
    Maven: Ferramenta de gerenciamento de projetos Java.
    SonarQube: Plataforma de análise de código estático.
    OWASP Dependency Check: Ferramenta para verificar vulnerabilidades em dependências.
    Docker: Plataforma para criar e executar containers.

Em resumo:

Este pipeline Jenkins automatiza todo o processo de desenvolvimento, desde o código até a implantação em produção, garantindo qualidade, segurança e consistência nas entregas.

Gostaria de saber mais sobre algum ponto específico? Posso fornecer explicações mais detalhadas sobre conceitos como Docker, Jenkinsfile, ou sobre alguma etapa específica do pipeline.
  
A __secret santa generator web application__ built using __Spring Boot technologies__, __Thymeleaf views__, __JPA__, __H2 Database__, and more. The project features Spring Model, View, and Controller (MVC) architecture and Service and Repository layers.

This project is based on the popular Christmas game __Secret Santa__ where friends draw names from a hat to decide who they are required to give a present to. This project allows users to add names, and the project randomly generates secret santa matches (it isn't as simple as creating random pairs). There are different solutions to the "Secret Santa problem" as the problem essentially creates a directed graph. 

**Preview images** :small_red_triangle_down:
<details>
<summary>Some images of the application </summary> 

* Welcome Page

![Welcome](https://github.com/NotTheBest/secretsanta-generator/blob/master/preview-images/welcomepage.png?raw=true)

* Add People

![Add](https://github.com/NotTheBest/secretsanta-generator/blob/master/preview-images/addpage.png?raw=true)

* Generate "Matches"

![Matches](https://github.com/NotTheBest/secretsanta-generator/blob/master/preview-images/generatepage.png?raw=true)

</details>

## Running the application locally

Secret Santa Generator is a Spring Boot application built using Maven. You can build a jar file and run it from the command line:

```
git clone https://github.com/silviojpa/secretsanta-generator.git
cd secretsanta-generator
./mvnw package
java -jar target/*.jar
```
You can then access the application here: http://localhost:8080/

![Welcome](https://github.com/NotTheBest/secretsanta-generator/blob/master/preview-images/welcomepage.png?raw=true)

Or you can run it from Maven directly using the Spring Boot Maven plugin.

```
./mvnw spring-boot:run
```

## Database Configuration
This project uses an in-memory database (H2). If you would like to work on the project, enable the `http://localhost:8080/h2-console` via the property :

```spring.h2.console.enabled=true```

in __application.properties__.

The database url used is `jdbc:h2:mem:testdb`.
## About

This project was a personal project to learn more about Spring development, database management, and industry application architecture.

A small summary of the skills showcased during this project: :small_red_triangle_down:

* Java Spring Core, HTML5, CSS and similar topics
* Spring MVC Controller and View management & annotations
* Spring Boot capabilities, annotations, usage, and deployment
* Thymeleaf technology, syntax, usage, capabilities, more
* Client/Server data transfer
* JPA annotations and repository management
* H2 in-memory database management
* Software/web application development processes
* MVC architecture along with DAO, model, service layers, and similar
* Accessibility, web design
* Web application debugging
* Where Santa lives
* More! :)
