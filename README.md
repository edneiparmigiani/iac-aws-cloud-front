# Buckets

Projeto criado para guardar os scripts IAC que cria a distribuição do Cloud Front e o associa ao seu devido bucket na AWS

## Configurando e executando

### Configurando

    As variaveis de ambiente abaixo possuem valores default para execução local, porem para deploy em qualquer outro ambiente elas devem ser configuradas, segue abaixo o que cada uma representa:

        "env" - Representa o ambiente em que o IAC será executado, por exemplo dev/hml/prd
        "envVersion" - Representa a versão do ambiente, por exemplo v1 / v2 
        "region" - Representa a região da AWS que o remote state será criado
        "product" - Representa o nome do produto, por exemplo 822
        "role" - Representa o tipo de recurso criado, por exemplo bucket
        "createdBy" - Representa o nome de quem criou o recurso
        "owner" - Representa o nome do responsavel por manter o recurso
        "release" - Representa a versão do recurso, por exemplo 1.0.1 / 2.0.0
        "project"- Representa o nome do projeto
        "domain"- Representa o dominio do site

## Releases

### 1.0.0 (26.09.2019)

* Criação de imagem que publica artefatos no S3