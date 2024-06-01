CREATE TABLE Propriedade (
    PropriedadeID INT PRIMARY KEY IDENTITY(1,1),
    NomePropriedade VARCHAR(255) NOT NULL,
    EnderecoLocalizacao VARCHAR(255),
    Cidade VARCHAR(100),
    Estado VARCHAR(100),
    CEP VARCHAR(20),
    AreaTotal DECIMAL(10, 2)
);
CREATE TABLE DadosProducao (
    ProducaoID INT PRIMARY KEY IDENTITY(1,1),
    PropriedadeID INT FOREIGN KEY REFERENCES Propriedade(PropriedadeID),
    RendimentoPorHectare DECIMAL(10, 2),
    AreaPlantada DECIMAL(10, 2),
    VariedadesDeCulturas TEXT,
    DataPlantio DATE,
    DataColheita DATE,
    PraticasDeCultivo TEXT
);
CREATE TABLE CustosInsumos (
    CustoInsumoID INT PRIMARY KEY IDENTITY(1,1),
    PropriedadeID INT FOREIGN KEY REFERENCES Propriedade(PropriedadeID),
    CustoInsumo DECIMAL(10, 2),
    UsoRecurso VARCHAR(100),
    CustoMaoDeObra DECIMAL(10, 2),
    CustoMaquinario DECIMAL(10, 2),
    HorasUsoMaquinario DECIMAL(10, 2)
);
CREATE TABLE DadosClimaticos (
    DadosClimaticosID INT PRIMARY KEY IDENTITY(1,1),
    PropriedadeID INT FOREIGN KEY REFERENCES Propriedade(PropriedadeID),
    Temperatura DECIMAL(5, 2),
    Umidade DECIMAL(5, 2),
    Precipitacao DECIMAL(10, 2),
    EventosExtremos TEXT,
    DadosSensoriamentoRemoto VARBINARY(MAX)
);
CREATE TABLE DadosMercado (
    DadosMercadoID INT PRIMARY KEY IDENTITY(1,1),
    PropriedadeID INT FOREIGN KEY REFERENCES Propriedade(PropriedadeID),
    PrecosMercado DECIMAL(10, 2),
    TendenciasMercado TEXT,
    RegulamentacoesGovernamentais TEXT
);
CREATE TABLE DadosLogistica (
    DadosLogisticaID INT PRIMARY KEY IDENTITY(1,1),
    PropriedadeID INT FOREIGN KEY REFERENCES Propriedade(PropriedadeID),
    InformacoesTransporte TEXT,
    InformacoesCadeiaSuprimentos TEXT
);
CREATE TABLE DadosFinanceiros (
    DadosFinanceirosID INT PRIMARY KEY IDENTITY(1,1),
    PropriedadeID INT FOREIGN KEY REFERENCES Propriedade(PropriedadeID),
    RegistrosFinanceiros DECIMAL(10, 2),
    Emprestimos DECIMAL(10, 2),
    Investimentos DECIMAL(10, 2)
);
CREATE TABLE DadosRiscoSeguro (
    DadosRiscoSeguroID INT PRIMARY KEY IDENTITY(1,1),
    PropriedadeID INT FOREIGN KEY REFERENCES Propriedade(PropriedadeID),
    RiscosAgricolas TEXT,
    InformacoesSeguro TEXT
);
CREATE TABLE DadosConformidadeSustentabilidade (
    DadosConformidadeSustentabilidadeID INT PRIMARY KEY IDENTITY(1,1),
    PropriedadeID INT FOREIGN KEY REFERENCES Propriedade(PropriedadeID),
    DadosConformidade TEXT,
    PraticasSustentaveis TEXT
);
CREATE TABLE Talhao (
    TalhaoID INT PRIMARY KEY IDENTITY(1,1),
    PropriedadeID INT FOREIGN KEY REFERENCES Propriedade(PropriedadeID),
    IdentificacaoTalhao VARCHAR(100),
    VariedadeCultura VARCHAR(100),
    DataPlantio DATE
);
CREATE TABLE CustosPreparoSolo (
    CustoPreparoSoloID INT PRIMARY KEY IDENTITY(1,1),
    TalhaoID INT FOREIGN KEY REFERENCES Talhao(TalhaoID),
    DescricaoAtividade TEXT,
    CustoTotal DECIMAL(10, 2),
    CustoDiesel DECIMAL(10, 2),
    LitrosDiesel DECIMAL(10, 2),
    HorasTrator DECIMAL(10, 2),
    ValorHoraTrator DECIMAL(10, 2),
    HorasMaoDeObra DECIMAL(10, 2),
    ValorHoraMaoDeObra DECIMAL(10, 2),
    CustoTransporte DECIMAL(10, 2)
);
CREATE TABLE CustosPlantio (
    CustoPlantioID INT PRIMARY KEY IDENTITY(1,1),
    TalhaoID INT FOREIGN KEY REFERENCES Talhao(TalhaoID),
    DescricaoAtividade TEXT,
    CustoTotal DECIMAL(10, 2),
    CustoAdubo DECIMAL(10, 2),
    CustoSemente DECIMAL(10, 2),
    HorasMaoDeObra DECIMAL(10, 2),
    ValorHoraMaoDeObra DECIMAL(10, 2),
    CustoHerbicida DECIMAL(10, 2),
    CustoDiesel DECIMAL(10, 2),
    LitrosDiesel DECIMAL(10, 2),
    HorasTrator DECIMAL(10, 2),
    ValorHoraTrator DECIMAL(10, 2),
    CustoTransporte DECIMAL(10, 2)
);
CREATE TABLE CustosAplicacaoHerbicidas (
    CustoAplicacaoHerbicidaID INT PRIMARY KEY IDENTITY(1,1),
    TalhaoID INT FOREIGN KEY REFERENCES Talhao(TalhaoID),
    DescricaoAtividade TEXT,
    CustoTotal DECIMAL(10, 2),
    CustoInsumo DECIMAL(10, 2),
    CustoAplicacao DECIMAL(10, 2),
    HorasMaoDeObra DECIMAL(10, 2),
    ValorHoraMaoDeObra DECIMAL(10, 2),
    CustoDiesel DECIMAL(10, 2),
    LitrosDiesel DECIMAL(10, 2)
);
CREATE TABLE CustosColheita (
    CustoColheitaID INT PRIMARY KEY IDENTITY(1,1),
    TalhaoID INT FOREIGN KEY REFERENCES Talhao(TalhaoID),
    DescricaoAtividade TEXT,
    CustoTotal DECIMAL(10, 2),
    CustoTransporte DECIMAL(10, 2),
    CustoUmidade DECIMAL(10, 2),
    CustoImpureza DECIMAL(10, 2)
);
CREATE TABLE CamposAdicionais (
    CampoAdicionalID INT PRIMARY KEY IDENTITY(1,1),
    TalhaoID INT FOREIGN KEY REFERENCES Talhao(TalhaoID),
    CondicoesClimaticas TEXT,
    Notas TEXT,
    DadosFotoVideo VARBINARY(MAX)
);
