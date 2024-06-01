# Gerenciamento de Custos Agrícolas

Este repositório contém o código SQL para a criação de um banco de dados para gerenciamento de custos agrícolas. O banco de dados foi projetado para ajudar agricultores e gerentes agrícolas a monitorar e otimizar a produção agrícola, rastrear custos e melhorar a sustentabilidade.

## Estrutura do Banco de Dados

O banco de dados consiste nas seguintes tabelas:

### 1. Propriedade

Armazena informações sobre a propriedade agrícola.

| Coluna            | Tipo         | Descrição                               |
|-------------------|--------------|-----------------------------------------|
| PropriedadeID     | INT          | Identificador único da propriedade      |
| NomePropriedade   | VARCHAR(255) | Nome da fazenda/sítio/empresa           |
| EnderecoLocalizacao | VARCHAR(255) | Endereço da propriedade                 |
| Cidade            | VARCHAR(100) | Cidade                                  |
| Estado            | VARCHAR(100) | Estado                                  |
| CEP               | VARCHAR(20)  | Código Postal                           |
| AreaTotal         | DECIMAL(10,2)| Tamanho total da propriedade (hectares) |

### 2. DadosProducao

Armazena informações sobre a produção agrícola.

| Coluna             | Tipo         | Descrição                               |
|--------------------|--------------|-----------------------------------------|
| ProducaoID         | INT          | Identificador único da produção         |
| PropriedadeID      | INT          | Identificador da propriedade            |
| RendimentoPorHectare | DECIMAL(10,2) | Rendimento por hectare                 |
| AreaPlantada       | DECIMAL(10,2)| Área plantada                           |
| VariedadesDeCulturas | TEXT         | Variedades de culturas plantadas        |
| DataPlantio        | DATE         | Data de plantio                         |
| DataColheita       | DATE         | Data de colheita                        |
| PraticasDeCultivo  | TEXT         | Práticas de cultivo utilizadas          |

### 3. CustosInsumos

Armazena informações sobre os custos de insumos agrícolas.

| Coluna             | Tipo         | Descrição                               |
|--------------------|--------------|-----------------------------------------|
| CustoInsumoID      | INT          | Identificador único do custo de insumo  |
| PropriedadeID      | INT          | Identificador da propriedade            |
| CustoInsumo        | DECIMAL(10,2)| Custo dos insumos agrícolas             |
| UsoRecurso         | VARCHAR(100) | Uso de recursos (água, energia, etc.)   |
| CustoMaoDeObra     | DECIMAL(10,2)| Custos de mão de obra                   |
| CustoMaquinario    | DECIMAL(10,2)| Custos de maquinário                    |
| HorasUsoMaquinario | DECIMAL(10,2)| Tempo de uso do maquinário (horas)      |

### 4. DadosClimaticos

Armazena informações climáticas e ambientais.

| Coluna              | Tipo         | Descrição                               |
|---------------------|--------------|-----------------------------------------|
| DadosClimaticosID   | INT          | Identificador único dos dados climáticos|
| PropriedadeID       | INT          | Identificador da propriedade            |
| Temperatura         | DECIMAL(5,2) | Temperatura (graus Celsius)             |
| Umidade             | DECIMAL(5,2) | Umidade (percentual)                    |
| Precipitacao        | DECIMAL(10,2)| Precipitação (milímetros)               |
| EventosExtremos     | TEXT         | Informações sobre eventos climáticos extremos |
| DadosSensoriamentoRemoto | VARBINARY(MAX) | Dados de sensoriamento remoto     |

### 5. DadosMercado

Armazena informações sobre o mercado e preços.

| Coluna                     | Tipo         | Descrição                               |
|----------------------------|--------------|-----------------------------------------|
| DadosMercadoID             | INT          | Identificador único dos dados de mercado|
| PropriedadeID              | INT          | Identificador da propriedade            |
| PrecosMercado              | DECIMAL(10,2)| Preços de mercado                       |
| TendenciasMercado          | TEXT         | Tendências de mercado                   |
| RegulamentacoesGovernamentais | TEXT         | Regulamentações governamentais           |

### 6. DadosLogistica

Armazena informações sobre logística e distribuição.

| Coluna              | Tipo         | Descrição                               |
|---------------------|--------------|-----------------------------------------|
| DadosLogisticaID    | INT          | Identificador único dos dados logísticos|
| PropriedadeID       | INT          | Identificador da propriedade            |
| InformacoesTransporte | TEXT         | Informações sobre transporte           |
| InformacoesCadeiaSuprimentos | TEXT         | Informações sobre cadeias de suprimentos |

### 7. DadosFinanceiros

Armazena informações financeiras.

| Coluna              | Tipo         | Descrição                               |
|---------------------|--------------|-----------------------------------------|
| DadosFinanceirosID  | INT          | Identificador único dos dados financeiros|
| PropriedadeID       | INT          | Identificador da propriedade            |
| RegistrosFinanceiros | DECIMAL(10,2)| Registros financeiros                  |
| Emprestimos         | DECIMAL(10,2)| Dados sobre empréstimos e financiamentos|
| Investimentos       | DECIMAL(10,2)| Dados sobre investimentos               |

### 8. DadosRiscoSeguro

Armazena informações sobre riscos e seguros.

| Coluna              | Tipo         | Descrição                               |
|---------------------|--------------|-----------------------------------------|
| DadosRiscoSeguroID  | INT          | Identificador único dos dados de risco e seguro|
| PropriedadeID       | INT          | Identificador da propriedade            |
| RiscosAgricolas     | TEXT         | Informações sobre riscos agrícolas      |
| InformacoesSeguro   | TEXT         | Informações sobre seguros agrícolas     |

### 9. DadosConformidadeSustentabilidade

Armazena informações sobre conformidade e sustentabilidade.

| Coluna              | Tipo         | Descrição                               |
|---------------------|--------------|-----------------------------------------|
| DadosConformidadeSustentabilidadeID | INT | Identificador único dos dados de conformidade e sustentabilidade |
| PropriedadeID       | INT          | Identificador da propriedade            |
| DadosConformidade   | TEXT         | Dados de conformidade                   |
| PraticasSustentaveis| TEXT         | Informações sobre práticas sustentáveis |

### 10. Talhao

Armazena informações sobre os talhões/campos.

| Coluna              | Tipo         | Descrição                               |
|---------------------|--------------|-----------------------------------------|
| TalhaoID            | INT          | Identificador único do talhão           |
| PropriedadeID       | INT          | Identificador da propriedade            |
| IdentificacaoTalhao | VARCHAR(100) | Identificação do talhão                 |
| VariedadeCultura    | VARCHAR(100) | Variedade de cultura plantada           |
| DataPlantio         | DATE         | Data de plantio                         |

### 11. CustosPreparoSolo

Armazena informações sobre os custos de preparo do solo.

| Coluna              | Tipo         | Descrição                               |
|---------------------|--------------|-----------------------------------------|
| CustoPreparoSoloID  | INT          | Identificador único do custo de preparo do solo |
| TalhaoID            | INT          | Identificador do talhão                 |
| DescricaoAtividade  | TEXT         | Descrição das atividades de preparo do solo |
| CustoTotal          | DECIMAL(10,2)| Custo total do preparo do solo          |
| CustoDiesel         | DECIMAL(10,2)| Custo do diesel                         |
| LitrosDiesel        | DECIMAL(10,2)| Quantidade de litros de diesel          |
| HorasTrator         | DECIMAL(10,2)| Horas de uso do trator                  |
| ValorHoraTrator     | DECIMAL(10,2)| Valor por hora de uso do trator         |
| HorasMaoDeObra      | DECIMAL(10,2)| Horas de mão de obra                    |
| ValorHoraMaoDeObra  | DECIMAL(10,2)| Valor por hora de mão de obra           |
| CustoTransporte     | DECIMAL(10,2)| Custo do transporte                     |

### 12. CustosPlantio

Armazena informações sobre os custos de plantio.

| Coluna              | Tipo         | Descrição                               |
|---------------------|--------------|-----------------------------------------|
| CustoPlantioID      | INT          | Identificador único do custo de plantio |
| TalhaoID            | INT          | Identificador do talhão                 |
| DescricaoAtividade  | TEXT         | Descrição das atividades de plantio     |
| CustoTotal          | DECIMAL(10,2)| Custo total do plantio                  |
| CustoAdubo          | DECIMAL(10,2)| Custo do adubo                          |
| CustoSemente        | DECIMAL(10,2)| Custo das sementes                      |
| HorasMaoDeObra      | DECIMAL(10,2)| Horas de mão de obra                    |
| ValorHoraMaoDeObra  | DECIMAL(10,2)| Valor por hora de mão de obra           |
| CustoHerbicida      | DECIMAL(10,2)| Custo do herbicida                      |
| CustoDiesel         |
