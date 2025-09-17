# Terraform S3 com LocalStack

Este projeto utiliza [Terraform](https://www.terraform.io/) para provisionar um bucket S3 em um ambiente local simulado pelo [LocalStack](https://github.com/localstack/localstack). É ideal para desenvolvimento e testes sem a necessidade de acessar a AWS real.

## Estrutura do Projeto

- `main.tf`: Define o recurso do bucket S3.
- `provider.tf`: Configura o provider AWS para apontar para o LocalStack.
- `outputs.tf`: Exporta o nome do bucket criado.
- `.terraform.lock.hcl`, `terraform.tfstate`, etc.: Arquivos de controle do Terraform.

## Pré-requisitos

- [Terraform](https://www.terraform.io/downloads.html) instalado.
- [LocalStack](https://github.com/localstack/localstack) rodando localmente (nesse exemplo é via docker).

## Como usar

1. **Inicie o LocalStack**  
   Se estiver usando Docker:

   *docker run -d -p 4566:4566 -p 4571:4571 localstack/localstack*

2. **Inicialize o Terraform**

    *terraform init*

3. **Aplique a infraestrutura**

    *terraform apply*


*O nome do bucket será exibido como output ao final do terraform apply.*

4. **Validação**

    Para validar que o bucket foi criado localmente pode executar o comando:

    *aws --endpoint-url=http://localhost:4566 s3 ls*

**Observações**

Este projeto **não cria recursos reais na AWS**. Tudo é simulado localmente pelo LocalStack.

Ideal para testes automatizados e desenvolvimento local.