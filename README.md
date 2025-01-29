# Proposta de Arquitetura Orientada a Pacotes para o app Facilita Corretor

## Sumário

Esta proposta de arquitetura visa otimizar o compartilhamento de código entre múltiplos aplicativos, como `app_corretor` mas também um possível `app_gerente`, `app_vendas` e `app_clientes`. A arquitetura proposta é modularizada em três partes principais: `core`, `design` e `features (vendas, crm, produtos)`.

## Introdução

O principal objetivo desta arquitetura é evitar a duplicação de código e facilitar a manutenção e escalabilidade do projeto, permitindo que diferentes aplicativos compartilhem funcionalidades e componentes de interface de usuário de forma eficiente.

## Arquitetura

A arquitetura é baseada em três módulos principais:

### 1. Core

O módulo `core` fornece serviços essenciais para as `features`. Ele contém principalmente os services que reúnem os métodos responsáveis por interagir com a API. O `core` não deve conter lógica de negócios complexa (terafa de cada repository de cada feature), ele também não deve ser exportado diretamente para os apps.

### 2. Design

O módulo `design` centraliza os componentes de layout reutilizáveis em todos os aplicativos. Isso garante a consistência visual e facilita a manutenção da interface do usuário. O `design` exporta widgets, estilos, temas e outros recursos visuais que podem ser facilmente integrados nas `features`.

### 3. Features

As `features` representam as delimitações de escopo de cada squad (produto, CRM, vendas). Cada `feature` contém seus próprios modelos (dados), repositórios (lógica de acesso aos dados). Também poderão ser criados componentes de layout com suas próprias regras, visando seu reaproveitamento.  As `features` consomem os serviços do `core` e os componentes de layout do `design`.

# Observações

Apesar da divisão de features por squad, em um primeiro momento todo o projeto será colocado em um único reposirório git para evitar burocracias desnecessárias (criar vários pull-requests para uma pequena alteração)
Porém, conforme os devs mobile migrarem para cada squad, esta arquitetura facilitará a criação de um repositório independente

Estrutura:

                 app_corretor, app_gerente, app_vendas, app_clientes
                                |               |
                                |               |
                                |               |
                            features -----------|
                                |               |
                                |               |
                                |               |
                              core           design

