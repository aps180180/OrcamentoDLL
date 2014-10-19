object frmOrca: TfrmOrca
  Left = 357
  Top = 91
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Or'#231'amentos Siac'
  ClientHeight = 520
  ClientWidth = 195
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 1
    Top = 11
    Width = 34
    Height = 13
    Caption = 'Modelo'
  end
  object JvRichEdit1: TJvRichEdit
    Left = 2
    Top = -160
    Width = 1022
    Height = 680
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    AdvancedTypography = True
    AutoAdvancedTypography = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    HideSelection = False
    HideScrollBars = False
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 3
    Visible = False
    WantReturns = False
  end
  object cbModelos: TComboBox
    Left = 0
    Top = 24
    Width = 191
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    OnKeyDown = cbModelosKeyDown
  end
  object PngBitBtn1: TPngBitBtn
    Left = 135
    Top = 51
    Width = 57
    Height = 25
    Caption = '&OK'
    TabOrder = 1
    OnClick = PngBitBtn1Click
    OnKeyDown = cbModelosKeyDown
    PngImage.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      610000001974455874536F6674776172650041646F626520496D616765526561
      647971C9653C000002B44944415478DA8D935F4853511CC7BF6773BA810DA5B1
      E67AA837A9B4873996218B2437B13F0FBE0CFA3308F7626EB03DE8430A8B8D28
      E7439A3421C8F6201A810FEACB40A82C17924E8CA93DD834219C9256DA74CE7B
      77EFEDDC5B6A7F46F4BBDC7B7FE7F7BBDFCFF99D737F870882805DB3785F5D57
      A9F3AECA08CED121A1571A0201C765F2BE7E16BA22810A17FE30F22BE0FCDDD7
      4C8FAB4C21A384DDB0F85EDD64D0175D47E2437AFBFDDC5CE1CB071776B2022E
      B58DA57A5D65AAF817B92805CBF16032024C4714985D15107E9BC0F3D1F927CF
      EE9CBD921570B16D6CBBCF55A65C1001047B80C3F92C0EA8E474293CAEB54F66
      867D66C55F00BFDFAF1A5756ADF73A8DB91FBF890042C53C850848A658303C8F
      8AA30AD8EE4D30FA85EE825028B4BD07A06207F53B269455F93D4E2356920AF0
      74091CCD31AC8014CB81A500833E0797DBC751F82EB8C9308CA7BFBFBF9BF87C
      3E4B5151D1B0C16080FF058BD00D03DD3405C4BA3274769E4252B412D13F7E88
      C07E7F1237CF6430383888E9E969AB0888D5D6D6966AB55A048341FC8F399D4E
      C4E371747676CE8B809D9696965C3131353585E2E2E27F8A67666660329924BF
      B1B151205EAF57A0002930343404A3D188B5B5B5AC628D46834824029BCD268D
      EBEBEB419A9B9B05BBDD2E0546464650595989E5E5E5AC009D4E8770388C9A9A
      9A7D4053539360B55AA5402C1643757535969696B202F47A3D060606505E5E2E
      8DDD6E3788C7E3112C168B14585C5CDC2B3F9D4E636B6B0BC964121B1B1BD22D
      FEF29292126912D1A816A4A1A181339BCD32B55A8D68348A63274EE2A0469BB5
      82D54F2BB8EDBF85402080442281D6D6561087C3F19036C56996654B55663782
      7506A418487D20F600C789678203471B4957A084F3D124463BEC623531FAC9D3
      DFCE425DD71B2E472E93613FF4D3FDF124B4BD33199E7FEC3C25DFCD7F073274
      5465D0BF6E470000000049454E44AE426082}
  end
  object ListBox1: TListBox
    Left = 0
    Top = 415
    Width = 177
    Height = 97
    ItemHeight = 13
    TabOrder = 2
    Visible = False
  end
  object qrOrcamento: TQuery
    DatabaseName = 'c:\instala_siac'
    SQL.Strings = (
      'SELECT * FROM ORCA'
      'WHERE NOTA = :PNOTA')
    Left = 5
    Top = 105
    ParamData = <
      item
        DataType = ftString
        Name = 'PNOTA'
        ParamType = ptInput
      end>
  end
  object qrIOrca: TQuery
    OnCalcFields = qrIOrcaCalcFields
    DatabaseName = 'c:\instala_siac'
    SQL.Strings = (
      'SELECT I_ORCA.NOTA, I_ORCA.PRODUTO, I_ORCA.CODITEM,'
      '         I_ORCA.DESC01,I_ORCA.DESC02, I_ORCA.DESC03,'
      
        '       (I_ORCA.DESC01 + '#39' '#39' + I_ORCA.DESC02 + '#39' '#39' + I_ORCA.DESC0' +
        '3) AS DESCRICAO,'
      
        '       I_ORCA.UNIDADE, I_ORCA.QUANT, I_ORCA.PRECO, (I_ORCA.QUANT' +
        ' * I_ORCA.PRECO) AS TOTPROD,'
      
        '       I_ORCA.OPCIONAL, I_ORCA.MARCA, I_ORCA.TIPO, I_ORCA.DESCON' +
        'TO,'
      
        '       ((I_ORCA.QUANT * I_ORCA.PRECO) * (I_ORCA.DESCONTO / 100))' +
        ' AS DESCLIQ,'
      
        '       ((I_ORCA.QUANT * I_ORCA.PRECO) - ((I_ORCA.QUANT * I_ORCA.' +
        'PRECO) * (I_ORCA.DESCONTO / 100))) AS TOTPRODE'
      'FROM I_ORCA'
      'WHERE I_ORCA.NOTA = :PNOTA')
    Left = 3
    Top = 157
    ParamData = <
      item
        DataType = ftString
        Name = 'PNOTA'
        ParamType = ptInput
      end>
    object qrIOrcasDescricao: TStringField
      FieldKind = fkCalculated
      FieldName = 'sDescricao'
      Size = 250
      Calculated = True
    end
    object qrIOrcaNOTA: TStringField
      FieldName = 'NOTA'
      Size = 6
    end
    object qrIOrcaPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 8
    end
    object qrIOrcaCODITEM: TStringField
      FieldName = 'CODITEM'
      Size = 4
    end
    object qrIOrcaDESC01: TStringField
      FieldName = 'DESC01'
      Size = 40
    end
    object qrIOrcaDESC02: TStringField
      FieldName = 'DESC02'
      Size = 40
    end
    object qrIOrcaDESC03: TStringField
      FieldName = 'DESC03'
      Size = 40
    end
    object qrIOrcaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 122
    end
    object qrIOrcaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrIOrcaQUANT: TFloatField
      FieldName = 'QUANT'
    end
    object qrIOrcaPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object qrIOrcaTOTPROD: TFloatField
      FieldName = 'TOTPROD'
    end
    object qrIOrcaOPCIONAL: TStringField
      FieldName = 'OPCIONAL'
      Size = 1
    end
    object qrIOrcaMARCA: TStringField
      FieldName = 'MARCA'
      Size = 15
    end
    object qrIOrcaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrIOrcaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrIOrcaDESCLIQ: TFloatField
      FieldName = 'DESCLIQ'
    end
    object qrIOrcaTOTPRODE: TFloatField
      FieldName = 'TOTPRODE'
    end
  end
  object plOrca: TppDBPipeline
    DataSource = dsOrca
    OpenDataSource = False
    UserName = 'plOrca'
    Left = 121
    Top = 103
  end
  object rpOrcamento: TppReport
    AutoStop = False
    DataPipeline = plOrca
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Or'#231'amento'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 4000
    PrinterSetup.mmMarginLeft = 4000
    PrinterSetup.mmMarginRight = 4000
    PrinterSetup.mmMarginTop = 4000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rpOrcamentoBeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 71
    Top = 103
    Version = '14.02'
    mmColumnWidth = 202000
    DataPipelineName = 'plOrca'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 64029
      mmPrintPosition = 0
      object ppImage2: TppImage
        UserName = 'Image2'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 26458
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 200025
        BandType = 0
        LayerName = Foreground4
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 24606
        mmLeft = 2117
        mmTop = 1852
        mmWidth = 40217
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = #192
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 2117
        mmTop = 41275
        mmWidth = 2244
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        ParentWidth = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 33867
        mmWidth = 202000
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'NOME_CLI'
        DataPipeline = plOrca
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plOrca'
        mmHeight = 3598
        mmLeft = 6615
        mmTop = 41275
        mmWidth = 93663
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Or'#231'amento N'#186': '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4657
        mmLeft = 2117
        mmTop = 36248
        mmWidth = 28321
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'NOTA'
        DataPipeline = plOrca
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plOrca'
        mmHeight = 4763
        mmLeft = 30956
        mmTop = 36248
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'A/C:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 101071
        mmTop = 41275
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'A_C'
        DataPipeline = plOrca
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plOrca'
        mmHeight = 3598
        mmLeft = 109802
        mmTop = 41275
        mmWidth = 91281
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'DESC01'
        DataPipeline = plOrca
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plOrca'
        mmHeight = 3598
        mmLeft = 28046
        mmTop = 50271
        mmWidth = 173038
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'DESC02'
        DataPipeline = plOrca
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plOrca'
        mmHeight = 3598
        mmLeft = 28046
        mmTop = 54769
        mmWidth = 173038
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 2117
        mmTop = 45773
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground4
      end
      object plblEndereco: TppLabel
        UserName = 'plblEndereco'
        AutoSize = False
        Caption = 'plblEndereco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 19844
        mmTop = 45773
        mmWidth = 181240
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Caption = 'Discrimina'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 2117
        mmTop = 50271
        mmWidth = 25135
        BandType = 0
        LayerName = Foreground4
      end
      object plblLocalData: TppLabel
        UserName = 'plblLocalData'
        AutoSize = False
        Caption = 'plblLocalData'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 29369
        mmWidth = 200025
        BandType = 0
        LayerName = Foreground4
      end
      object plblFantasia: TppLabel
        UserName = 'plblFantasia'
        AutoSize = False
        Caption = 'plblFantasia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 13
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5376
        mmLeft = 42863
        mmTop = 2117
        mmWidth = 158221
        BandType = 0
        LayerName = Foreground4
      end
      object plblEnderecoCabecalho: TppLabel
        UserName = 'plblEnderecoCabecalho'
        AutoSize = False
        Caption = 'plblEnderecoCabecalho'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4572
        mmLeft = 42863
        mmTop = 8731
        mmWidth = 158221
        BandType = 0
        LayerName = Foreground4
      end
      object plblCNPJINSC: TppLabel
        UserName = 'plblCNPJINSC'
        AutoSize = False
        Caption = 'plblCNPJINSC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4572
        mmLeft = 42863
        mmTop = 15346
        mmWidth = 158221
        BandType = 0
        LayerName = Foreground4
      end
      object plblFonesMail: TppLabel
        UserName = 'plblFonesMail'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'plblFonesMail'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4572
        mmLeft = 42863
        mmTop = 21960
        mmWidth = 158221
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'DESC03'
        DataPipeline = plOrca
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plOrca'
        mmHeight = 3704
        mmLeft = 28046
        mmTop = 58738
        mmWidth = 173038
        BandType = 0
        LayerName = Foreground4
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'plIOrca'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 202000
        BandType = 4
        LayerName = Foreground4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = plIOrca
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Or'#231'amento'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 4000
          PrinterSetup.mmMarginLeft = 4000
          PrinterSetup.mmMarginRight = 4000
          PrinterSetup.mmMarginTop = 4000
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '14.02'
          mmColumnWidth = 202000
          DataPipelineName = 'plIOrca'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppLabel17: TppLabel
              UserName = 'Label101'
              AutoSize = False
              Caption = 'SEQ'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 2117
              mmTop = 265
              mmWidth = 7673
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel19: TppLabel
              UserName = 'Label19'
              AutoSize = False
              Caption = 'PRODUTO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 10319
              mmTop = 265
              mmWidth = 114036
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel20: TppLabel
              UserName = 'Label20'
              AutoSize = False
              Caption = 'MARCA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 125413
              mmTop = 265
              mmWidth = 20373
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel21: TppLabel
              UserName = 'Label21'
              AutoSize = False
              Caption = 'QTDE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 147109
              mmTop = 265
              mmWidth = 11642
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel22: TppLabel
              UserName = 'Label22'
              AutoSize = False
              Caption = 'PRE'#199'O'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 160073
              mmTop = 265
              mmWidth = 13494
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel23: TppLabel
              UserName = 'Label23'
              AutoSize = False
              Caption = 'TOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 186002
              mmTop = 265
              mmWidth = 14552
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine21: TppLine
              UserName = 'Line21'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 185209
              mmTop = 0
              mmWidth = 529
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine22: TppLine
              UserName = 'Line22'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 174096
              mmTop = 0
              mmWidth = 529
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine23: TppLine
              UserName = 'Line23'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 159279
              mmTop = 0
              mmWidth = 529
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine24: TppLine
              UserName = 'Line101'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 124884
              mmTop = 0
              mmWidth = 529
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine25: TppLine
              UserName = 'Line25'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 9790
              mmTop = 0
              mmWidth = 529
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine26: TppLine
              UserName = 'Line26'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 1588
              mmTop = 0
              mmWidth = 529
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine27: TppLine
              UserName = 'Line27'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 200819
              mmTop = 0
              mmWidth = 529
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4498
              mmLeft = 146315
              mmTop = 0
              mmWidth = 529
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel30: TppLabel
              UserName = 'Label30'
              AutoSize = False
              Caption = 'DESC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 174890
              mmTop = 265
              mmWidth = 9790
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine6: TppLine
              UserName = 'Line6'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 1852
              mmTop = 0
              mmWidth = 199232
              BandType = 1
              LayerName = Foreground1
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object pdbtCODITEM: TppDBText
              UserName = 'pdbtCODITEM'
              DataField = 'CODITEM'
              DataPipeline = plIOrca
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plIOrca'
              mmHeight = 3768
              mmLeft = 2117
              mmTop = 1058
              mmWidth = 7673
              BandType = 4
              LayerName = Foreground1
            end
            object pdbtDESCRICAO: TppDBText
              UserName = 'pdbtDESCRICAO'
              DataField = 'DESCRICAO'
              DataPipeline = plIOrca
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plIOrca'
              mmHeight = 3704
              mmLeft = 24871
              mmTop = 1058
              mmWidth = 99484
              BandType = 4
              LayerName = Foreground1
            end
            object pdbtMARCA: TppDBText
              UserName = 'pdbtMARCA'
              DataField = 'MARCA'
              DataPipeline = plIOrca
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plIOrca'
              mmHeight = 3768
              mmLeft = 125677
              mmTop = 1058
              mmWidth = 20373
              BandType = 4
              LayerName = Foreground1
            end
            object pdbtQUANT: TppDBText
              UserName = 'pdbtQUANT'
              DataField = 'QUANT'
              DataPipeline = plIOrca
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plIOrca'
              mmHeight = 3768
              mmLeft = 147109
              mmTop = 1058
              mmWidth = 11642
              BandType = 4
              LayerName = Foreground1
            end
            object pdbtPRECO: TppDBText
              UserName = 'pdbtPRECO'
              DataField = 'PRECO'
              DataPipeline = plIOrca
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plIOrca'
              mmHeight = 3768
              mmLeft = 160073
              mmTop = 1058
              mmWidth = 13494
              BandType = 4
              LayerName = Foreground1
            end
            object pdbtTOTPROD: TppDBText
              UserName = 'pdbtTOTPROD'
              DataField = 'TOTPROD'
              DataPipeline = plIOrca
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plIOrca'
              mmHeight = 3768
              mmLeft = 186002
              mmTop = 1058
              mmWidth = 14552
              BandType = 4
              LayerName = Foreground1
            end
            object ppLine29: TppLine
              UserName = 'Line29'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 185209
              mmTop = 265
              mmWidth = 529
              BandType = 4
              LayerName = Foreground1
            end
            object ppLine30: TppLine
              UserName = 'Line30'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 174096
              mmTop = 265
              mmWidth = 529
              BandType = 4
              LayerName = Foreground1
            end
            object ppLine31: TppLine
              UserName = 'Line31'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 200819
              mmTop = 265
              mmWidth = 529
              BandType = 4
              LayerName = Foreground1
            end
            object ppLine32: TppLine
              UserName = 'Line32'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 159279
              mmTop = 265
              mmWidth = 529
              BandType = 4
              LayerName = Foreground1
            end
            object ppLine33: TppLine
              UserName = 'Line33'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 124884
              mmTop = 265
              mmWidth = 529
              BandType = 4
              LayerName = Foreground1
            end
            object ppLine34: TppLine
              UserName = 'Line34'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 9790
              mmTop = 265
              mmWidth = 529
              BandType = 4
              LayerName = Foreground1
            end
            object ppLine35: TppLine
              UserName = 'Line35'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 1588
              mmTop = 265
              mmWidth = 529
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText20: TppDBText
              UserName = 'DBText20'
              DataField = 'PRODUTO'
              DataPipeline = plIOrca
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plIOrca'
              mmHeight = 4149
              mmLeft = 10319
              mmTop = 794
              mmWidth = 13494
              BandType = 4
              LayerName = Foreground1
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5292
              mmLeft = 146315
              mmTop = 265
              mmWidth = 529
              BandType = 4
              LayerName = Foreground1
            end
            object pdbtDESCONTO: TppDBText
              UserName = 'pdbtDESCONTO'
              DataField = 'DESCONTO'
              DataPipeline = plIOrca
              DisplayFormat = '0 %'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plIOrca'
              mmHeight = 3768
              mmLeft = 174890
              mmTop = 1058
              mmWidth = 9790
              BandType = 4
              LayerName = Foreground1
            end
            object ppLine8: TppLine
              UserName = 'Line8'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 1588
              mmTop = 5556
              mmWidth = 199232
              BandType = 4
              LayerName = Foreground1
            end
            object ppLine9: TppLine
              UserName = 'Line9'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 1588
              mmTop = 0
              mmWidth = 199496
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 56621
            mmPrintPosition = 0
            object ppLabel9: TppLabel
              UserName = 'Label9'
              Caption = 'Validade:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3810
              mmLeft = 6085
              mmTop = 1323
              mmWidth = 14139
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText4: TppDBText
              UserName = 'DBText4'
              DataField = 'VALIDADE'
              DataPipeline = plOrca
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plOrca'
              mmHeight = 3768
              mmLeft = 21431
              mmTop = 1323
              mmWidth = 110067
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel10: TppLabel
              UserName = 'Label10'
              Caption = 'Prazo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3810
              mmLeft = 10319
              mmTop = 5821
              mmWidth = 9694
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              DataField = 'PRAZO'
              DataPipeline = plOrca
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plOrca'
              mmHeight = 3768
              mmLeft = 21431
              mmTop = 5821
              mmWidth = 110067
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel12: TppLabel
              UserName = 'Label12'
              Caption = 'Cond. Pgto:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3810
              mmLeft = 2117
              mmTop = 10319
              mmWidth = 17992
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText13: TppDBText
              UserName = 'DBText13'
              DataField = 'CONDICOES'
              DataPipeline = plOrca
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plOrca'
              mmHeight = 3768
              mmLeft = 21431
              mmTop = 10319
              mmWidth = 110067
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel13: TppLabel
              UserName = 'Label13'
              Caption = 'Obs:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3810
              mmLeft = 12965
              mmTop = 14817
              mmWidth = 7197
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText14: TppDBText
              UserName = 'DBText14'
              DataField = 'OBS1'
              DataPipeline = plOrca
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plOrca'
              mmHeight = 3768
              mmLeft = 21431
              mmTop = 14817
              mmWidth = 110067
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText15: TppDBText
              UserName = 'DBText15'
              DataField = 'OBS2'
              DataPipeline = plOrca
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plOrca'
              mmHeight = 3768
              mmLeft = 21431
              mmTop = 19579
              mmWidth = 110067
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText16: TppDBText
              UserName = 'DBText16'
              DataField = 'OBS3'
              DataPipeline = plOrca
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plOrca'
              mmHeight = 3768
              mmLeft = 21431
              mmTop = 24342
              mmWidth = 110067
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText17: TppDBText
              UserName = 'DBText17'
              DataField = 'OBS4'
              DataPipeline = plOrca
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plOrca'
              mmHeight = 3768
              mmLeft = 21431
              mmTop = 29104
              mmWidth = 110067
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText21: TppDBText
              UserName = 'DBText21'
              DataField = 'OBS5'
              DataPipeline = plOrca
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plOrca'
              mmHeight = 3768
              mmLeft = 21431
              mmTop = 33803
              mmWidth = 110067
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel26: TppLabel
              UserName = 'Label26'
              Caption = 'Total de Servi'#231'os:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4191
              mmLeft = 147638
              mmTop = 5292
              mmWidth = 30353
              BandType = 7
              LayerName = Foreground1
            end
            object pdbtxtTotalServicos: TppDBText
              UserName = 'pdbtxtTotalServicos'
              DataField = 'TOT_SERV'
              DataPipeline = plOrca
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 10
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plOrca'
              mmHeight = 4106
              mmLeft = 178594
              mmTop = 5292
              mmWidth = 22490
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel29: TppLabel
              UserName = 'Label29'
              Caption = 'Desconto:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4191
              mmLeft = 160867
              mmTop = 9790
              mmWidth = 17230
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel31: TppLabel
              UserName = 'Label31'
              Caption = 'Subtotal produtos:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4191
              mmLeft = 146315
              mmTop = 794
              mmWidth = 31538
              BandType = 7
              LayerName = Foreground1
            end
            object pdbtxtTotalDescontoLiq: TppDBText
              UserName = 'pdbtxtTotalDescontoLiq'
              DataField = 'TOT_DESC'
              DataPipeline = plOrca
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 10
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plOrca'
              mmHeight = 4106
              mmLeft = 178594
              mmTop = 9790
              mmWidth = 22490
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel28: TppLabel
              UserName = 'Label28'
              Caption = 'Valor total do or'#231'amento:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4191
              mmLeft = 135202
              mmTop = 14288
              mmWidth = 42630
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              DataField = 'TOTAL'
              DataPipeline = plOrca
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 10
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plOrca'
              mmHeight = 4106
              mmLeft = 178594
              mmTop = 14288
              mmWidth = 22490
              BandType = 7
              LayerName = Foreground1
            end
            object pdbtxtSubTotalProdutos: TppDBText
              UserName = 'pdbtxtSubTotalProdutos'
              DataField = 'TOT_PECA'
              DataPipeline = plOrca
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 10
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plOrca'
              mmHeight = 4106
              mmLeft = 178594
              mmTop = 794
              mmWidth = 22490
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel14: TppLabel
              UserName = 'Label14'
              Caption = 'Atenciosamente,'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial Narrow'
              Font.Size = 11
              Font.Style = []
              Transparent = True
              mmHeight = 4498
              mmLeft = 89959
              mmTop = 41275
              mmWidth = 23813
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine5: TppLine
              UserName = 'Line5'
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 61913
              mmTop = 55298
              mmWidth = 77788
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine7: TppLine
              UserName = 'Line7'
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 178594
              mmTop = 13494
              mmWidth = 22490
              BandType = 7
              LayerName = Foreground1
            end
          end
          object raCodeModule1: TraCodeModule
            ProgramStream = {
              01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650612
              706462745155414E544F6E476574546578740B50726F6772616D54797065070B
              747450726F63656475726506536F75726365068070726F636564757265207064
              62745155414E544F6E476574546578742876617220546578743A20537472696E
              67293B0D0A626567696E0D0A2020696620706C494F7263615B274F5043494F4E
              414C275D203D20275327207468656E0D0A2020202054657874203A3D20274F50
              2020202020273B0D0A656E643B20202020200D0A0D436F6D706F6E656E744E61
              6D650609706462745155414E54094576656E744E616D6506094F6E4765745465
              7874074576656E74494402350001060F5472614576656E7448616E646C65720B
              50726F6772616D4E616D65061470646274544F5450524F444F6E476574546578
              740B50726F6772616D54797065070B747450726F63656475726506536F757263
              65067A70726F6365647572652070646274544F5450524F444F6E476574546578
              742876617220546578743A20537472696E67293B0D0A626567696E0D0A202069
              6620706C494F7263615B274F5043494F4E414C275D203D20275327207468656E
              0D0A2020202054657874203A3D2027302C3030273B0D0A656E643B0D0A0D436F
              6D706F6E656E744E616D65060B70646274544F5450524F44094576656E744E61
              6D6506094F6E47657454657874074576656E74494402350001060F5472614576
              656E7448616E646C65720B50726F6772616D4E616D6506157064627444455343
              4F4E544F4F6E476574546578740B50726F6772616D54797065070B747450726F
              63656475726506536F75726365067A70726F6365647572652070646274444553
              434F4E544F4F6E476574546578742876617220546578743A20537472696E6729
              3B0D0A626567696E0D0A2020696620706C494F7263615B274F5043494F4E414C
              275D203D20275327207468656E0D0A2020202054657874203A3D202730202527
              3B0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060C70646274444553
              434F4E544F094576656E744E616D6506094F6E47657454657874074576656E74
              494402350001060F5472614576656E7448616E646C65720B50726F6772616D4E
              616D65061F706462747874546F74616C446573636F6E746F4C69714F6E476574
              546578740B50726F6772616D54797065070B747450726F63656475726506536F
              757263650C2301000070726F63656475726520706462747874546F74616C4465
              73636F6E746F4C69714F6E476574546578742876617220546578743A20537472
              696E67293B0D0A2F2F7661720D0A20202F2F446573636F6E746F4C6971756964
              6F3A20446F75626C653B0D0A626567696E0D0A20202F2F446573636F6E746F4C
              69717569646F203A3D2028706C4F7263615B27544F545F50454341275D202B20
              706C4F7263615B27544F545F53455256275D29202A2028706C4F7263615B2754
              4F545F44455343275D202F20313030293B0D0A20202F2F54657874203A3D2046
              6F726D6174466C6F61742827232C302E3030272C20446573636F6E746F4C6971
              7569646F293B0D0A656E643B2020202020202020202020202020202020202020
              202020202020202020200D0A0D436F6D706F6E656E744E616D65061670646274
              7874546F74616C446573636F6E746F4C6971094576656E744E616D6506094F6E
              47657454657874074576656E74494402350000}
          end
          object ppDesignLayers2: TppDesignLayers
            object ppDesignLayer2: TppDesignLayer
              UserName = 'Foreground1'
              LayerType = ltBanded
            end
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 192088
        mmTop = 265
        mmWidth = 8890
        BandType = 8
        LayerName = Foreground4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Or'#231'amento N'#186': '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 2117
        mmTop = 265
        mmWidth = 21886
        BandType = 8
        LayerName = Foreground4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'NOTA'
        DataPipeline = plOrca
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plOrca'
        mmHeight = 3598
        mmLeft = 25135
        mmTop = 265
        mmWidth = 14023
        BandType = 8
        LayerName = Foreground4
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 61913
        mmTop = 265
        mmWidth = 29337
        BandType = 8
        LayerName = Foreground4
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'Emitido em:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 43921
        mmTop = 265
        mmWidth = 16933
        BandType = 8
        LayerName = Foreground4
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 93663
        mmTop = 265
        mmWidth = 4498
        BandType = 8
        LayerName = Foreground4
      end
      object plblUsuario: TppLabel
        UserName = 'plblUsuario'
        Caption = 'plblUsuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 100013
        mmTop = 265
        mmWidth = 77788
        BandType = 8
        LayerName = Foreground4
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {00}
    end
    object ppDesignLayers5: TppDesignLayers
      object ppDesignLayer5: TppDesignLayer
        UserName = 'Foreground4'
        LayerType = ltBanded
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object dsOrca: TDataSource
    DataSet = qrOrcamento
    Left = 161
    Top = 103
  end
  object dsIOrca: TDataSource
    DataSet = qrIOrca
    Left = 47
    Top = 158
  end
  object plIOrca: TppDBPipeline
    DataSource = dsIOrca
    UserName = 'plIOrca'
    Left = 87
    Top = 158
  end
  object qrEmpresa: TQuery
    DatabaseName = 'c:\instala_siac'
    SQL.Strings = (
      'SELECT CODIGO, RAZAOSOC, FANTASIA, ENDERECO, BAIRRO, CIDADE,'
      '             ESTADO, CEP, FONE, CGC, INSC, FAX, NUMERO, E_MAIL'
      'FROM EMPRESAS'
      'WHERE EMPRESAS.CODIGO = :PCODIGO')
    Left = 6
    Top = 54
    ParamData = <
      item
        DataType = ftString
        Name = 'PCODIGO'
        ParamType = ptInput
      end>
  end
  object dsEmpresa: TDataSource
    DataSet = qrEmpresa
    Left = 60
    Top = 54
  end
  object plEmpresa: TppDBPipeline
    DataSource = dsEmpresa
    UserName = 'plEmpresa'
    Left = 117
    Top = 54
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 64
    Top = 3
  end
  object qrOs: TQuery
    DatabaseName = 'e:\INSTALA_SIAC'
    SQL.Strings = (
      
        'SELECT DISTINCT S1.*,CLIENTES.RAZAOSOC AS RAZAO_CLI,CLIENTES.END' +
        'ERECO AS ENDE, '
      
        '                    CLIENTES.BAIRRO AS BAIRRO_CLI, CLIENTES.CIDA' +
        'DE AS CIDADE_CLI,CLIENTES.ESTADO AS ESTADO_CLI,'
      
        '                    CLIENTES.CEP AS CEP_CLI,CLIENTES.CGC AS CGC_' +
        'CLI,CLIENTES.INSC AS INSC_CLI,CLIENTES.TELEFONE1 AS FONE1_CLI,'
      
        '                    CLIENTES.TELEFONE2 AS FONE2_CLI,S1.MENSA_PAD' +
        '1+'#39' '#39'+ MENSA_PAD2+  '#39' '#39'+ MENSA_PAD3 + '#39' '#39'+ MENSA_PAD4 AS MENSA_P' +
        'AD,'
      '                    VENDEDOR.DESCRICAO'
      '                  '
      '                    '
      'FROM S1'
      'LEFT JOIN CLIENTES ON S1.CLIENTE=CLIENTES.CODIGO'
      
        'LEFT JOIN VENDEDOR ON S1.CODEMP=VENDEDOR.CODEMP AND S1.RECEPCAO=' +
        'VENDEDOR.CODIGO'
      'WHERE NOTA = '#39'000001'#39
      'AND CODEMP =  '#39'01'#39)
    Left = 3
    Top = 208
  end
  object dsOS: TDataSource
    DataSet = qrOs
    Left = 48
    Top = 208
  end
  object rpOS: TppReport
    AutoStop = False
    DataPipeline = plOS
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Or'#231'amento'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 4000
    PrinterSetup.mmMarginLeft = 4000
    PrinterSetup.mmMarginRight = 4000
    PrinterSetup.mmMarginTop = 4000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'E:\instala_siac\Modelos\OS\retidiesel.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 89
    Top = 207
    Version = '14.02'
    mmColumnWidth = 204000
    DataPipelineName = 'plOS'
    object ppHeaderBand2: TppHeaderBand
      BeforePrint = ppHeaderBand2BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 73554
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 5821
        mmLeft = 1588
        mmTop = 67733
        mmWidth = 199761
        BandType = 0
        LayerName = BandLayer10
      end
      object ppImage3: TppImage
        UserName = 'Image2'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 26458
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 200025
        BandType = 0
        LayerName = BandLayer10
      end
      object ppImage4: TppImage
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 24606
        mmLeft = 2117
        mmTop = 1852
        mmWidth = 40217
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLine4: TppLine
        UserName = 'Line1'
        ParentWidth = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 33867
        mmWidth = 202000
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel2: TppLabel
        UserName = 'Label7'
        Caption = 'Or'#231'amento para Servi'#231'o N'#186': '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4657
        mmLeft = 2117
        mmTop = 36248
        mmWidth = 52747
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText7: TppDBText
        UserName = 'DBText1'
        DataField = 'NOTA'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 4763
        mmLeft = 56092
        mmTop = 36248
        mmWidth = 14023
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel32: TppLabel
        UserName = 'plblFantasia'
        AutoSize = False
        Caption = 'plblFantasia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6519
        mmLeft = 42863
        mmTop = 2117
        mmWidth = 158221
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel33: TppLabel
        UserName = 'plblEnderecoCabecalho'
        AutoSize = False
        Caption = 'plblEnderecoCabecalho'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4572
        mmLeft = 42863
        mmTop = 8731
        mmWidth = 158221
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel34: TppLabel
        UserName = 'plblCNPJINSC'
        AutoSize = False
        Caption = 'plblCNPJINSC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4572
        mmLeft = 42863
        mmTop = 15346
        mmWidth = 158221
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel35: TppLabel
        UserName = 'plblFonesMail'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'plblFonesMail'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4572
        mmLeft = 42863
        mmTop = 21960
        mmWidth = 158221
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel56: TppLabel
        UserName = 'Label1'
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 71438
        mmTop = 37306
        mmWidth = 14139
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        DataField = 'DATA'
        DataPipeline = plOS
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3260
        mmLeft = 85990
        mmTop = 37571
        mmWidth = 14023
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel57: TppLabel
        UserName = 'Label2'
        Caption = 'HS.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 101336
        mmTop = 37571
        mmWidth = 5715
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        DataField = 'HS'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3260
        mmLeft = 107686
        mmTop = 37571
        mmWidth = 11642
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel1: TppLabel
        UserName = 'Label3'
        Caption = 'RECEP'#199#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 120650
        mmTop = 37571
        mmWidth = 16891
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        BlankWhenZero = True
        DataField = 'RECEPCAO'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3440
        mmLeft = 138377
        mmTop = 37571
        mmWidth = 3440
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'DESCRICAO'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3440
        mmLeft = 143140
        mmTop = 37571
        mmWidth = 57679
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel3: TppLabel
        UserName = 'Label4'
        Caption = 'PREVIS'#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 2646
        mmTop = 41804
        mmWidth = 15536
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'DT_PREVISA'
        DataPipeline = plOS
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3260
        mmLeft = 19844
        mmTop = 41804
        mmWidth = 17198
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'DT_GARANTE'
        DataPipeline = plOS
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'plOS'
        mmHeight = 3175
        mmLeft = 85990
        mmTop = 41804
        mmWidth = 17198
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel4: TppLabel
        UserName = 'Label5'
        Caption = 'GARANTIA: 90 DIAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3302
        mmLeft = 37835
        mmTop = 41804
        mmWidth = 26585
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel5: TppLabel
        UserName = 'Label6'
        Caption = 'NOME:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 2646
        mmTop = 46302
        mmWidth = 9525
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'CLIENTE'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3440
        mmLeft = 13229
        mmTop = 46302
        mmWidth = 10848
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        DataField = 'RAZAO_CLI'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3440
        mmLeft = 26194
        mmTop = 46302
        mmWidth = 72761
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel6: TppLabel
        UserName = 'Label8'
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 24606
        mmTop = 46302
        mmWidth = 931
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Caption = 'ENDERE'#199'O.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 2646
        mmTop = 50006
        mmWidth = 17463
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        DataField = 'ENDE'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3440
        mmLeft = 20638
        mmTop = 50006
        mmWidth = 71702
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        DataField = 'BAIRRO_CLI'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3440
        mmLeft = 92869
        mmTop = 50006
        mmWidth = 31750
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        DataField = 'CIDADE_CLI'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3440
        mmLeft = 145257
        mmTop = 50006
        mmWidth = 28575
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        Caption = 'CIDADE/EST.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 125677
        mmTop = 50006
        mmWidth = 18796
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText51: TppDBText
        UserName = 'DBText51'
        DataField = 'ESTADO_CLI'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3440
        mmLeft = 174625
        mmTop = 50006
        mmWidth = 3704
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        Caption = 'CEP.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 180182
        mmTop = 50006
        mmWidth = 7620
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
        DataField = 'CEP_CLI'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3260
        mmLeft = 187325
        mmTop = 50006
        mmWidth = 13494
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        DataField = 'CGC_CLI'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3440
        mmLeft = 20902
        mmTop = 53975
        mmWidth = 26988
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        Caption = 'CPF/CNPJ.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 2910
        mmTop = 53975
        mmWidth = 15790
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText54: TppDBText
        UserName = 'DBText54'
        DataField = 'INSC_CLI'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3440
        mmLeft = 64823
        mmTop = 53975
        mmWidth = 26988
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        Caption = 'INSC EST.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 48683
        mmTop = 53975
        mmWidth = 14859
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText55: TppDBText
        UserName = 'DBText55'
        DataField = 'PLACA'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3440
        mmLeft = 104775
        mmTop = 53975
        mmWidth = 14552
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        Caption = 'PLACA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 92869
        mmTop = 53975
        mmWidth = 10456
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText56: TppDBText
        UserName = 'DBText56'
        DataField = 'MARCA'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3440
        mmLeft = 132292
        mmTop = 53975
        mmWidth = 28840
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        Caption = 'MARCA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 120386
        mmTop = 53975
        mmWidth = 11261
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText57: TppDBText
        UserName = 'DBText57'
        DataField = 'MODELO'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3440
        mmLeft = 175419
        mmTop = 53711
        mmWidth = 25400
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        Caption = 'MODELO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 161661
        mmTop = 53711
        mmWidth = 12700
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText61: TppDBText
        UserName = 'DBText61'
        DataField = 'ANO_FABR'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3440
        mmLeft = 20902
        mmTop = 61913
        mmWidth = 8202
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        Caption = 'ANO FABR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 2910
        mmTop = 61913
        mmWidth = 15621
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText62: TppDBText
        UserName = 'DBText62'
        DataField = 'ANO_MODE'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3440
        mmLeft = 52652
        mmTop = 61913
        mmWidth = 8202
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
        Caption = 'MODELO ANO :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 30163
        mmTop = 61913
        mmWidth = 21209
        BandType = 0
        LayerName = BandLayer10
      end
      object ppDBText63: TppDBText
        UserName = 'DBText63'
        DataField = 'KM'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3440
        mmLeft = 68263
        mmTop = 61913
        mmWidth = 17198
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel71: TppLabel
        UserName = 'Label701'
        Caption = 'KM:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 62442
        mmTop = 61913
        mmWidth = 5419
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'SEQ.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 2117
        mmTop = 68263
        mmWidth = 6816
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        AutoSize = False
        Caption = 'DESCRI'#199#195'O DOS SERVI'#199'OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 10583
        mmTop = 68263
        mmWidth = 91281
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'UN.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 103452
        mmTop = 68263
        mmWidth = 4868
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        AutoSize = False
        Caption = 'T'#201'CNICOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 109538
        mmTop = 68263
        mmWidth = 45244
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'QUANT.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 155311
        mmTop = 68263
        mmWidth = 11642
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel41: TppLabel
        UserName = 'Label401'
        Caption = 'UNIT'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 167746
        mmTop = 68263
        mmWidth = 14288
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        AutoSize = False
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 182827
        mmTop = 68263
        mmWidth = 17992
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 9790
        mmTop = 67733
        mmWidth = 265
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLine11: TppLine
        UserName = 'Line102'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 102659
        mmTop = 67998
        mmWidth = 265
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 108744
        mmTop = 67733
        mmWidth = 265
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 154782
        mmTop = 67998
        mmWidth = 265
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 167217
        mmTop = 67733
        mmWidth = 265
        BandType = 0
        LayerName = BandLayer10
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 182298
        mmTop = 67998
        mmWidth = 265
        BandType = 0
        LayerName = BandLayer10
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppSubReport2: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'plIOS'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 202000
        BandType = 4
        LayerName = BandLayer10
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = plIOS
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Or'#231'amento'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 4000
          PrinterSetup.mmMarginLeft = 4000
          PrinterSetup.mmMarginRight = 4000
          PrinterSetup.mmMarginTop = 4000
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '14.02'
          mmColumnWidth = 0
          DataPipelineName = 'plIOS'
          object ppHeaderBand3: TppHeaderBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand4: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppShape2: TppShape
              UserName = 'Shape2'
              StretchWithParent = True
              mmHeight = 5821
              mmLeft = 1588
              mmTop = 0
              mmWidth = 199761
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText24: TppDBText
              UserName = 'DBText24'
              DataField = 'SEQUENCIA'
              DataPipeline = plIOS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plIOS'
              mmHeight = 3175
              mmLeft = 2646
              mmTop = 1058
              mmWidth = 6350
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText25: TppDBText
              UserName = 'DBText25'
              DataField = 'DESCRICAO'
              DataPipeline = plIOS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plIOS'
              mmHeight = 3175
              mmLeft = 10583
              mmTop = 1058
              mmWidth = 91281
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText26: TppDBText
              UserName = 'DBText26'
              DataField = 'UNIDADE'
              DataPipeline = plIOS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plIOS'
              mmHeight = 3260
              mmLeft = 103188
              mmTop = 1058
              mmWidth = 4763
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText28: TppDBText
              UserName = 'DBText28'
              DataField = 'QUANT'
              DataPipeline = plIOS
              DisplayFormat = ',0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plIOS'
              mmHeight = 3260
              mmLeft = 155575
              mmTop = 1058
              mmWidth = 10319
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText27: TppDBText
              UserName = 'DBText27'
              DataField = 'PRECO'
              DataPipeline = plIOS
              DisplayFormat = ',0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plIOS'
              mmHeight = 3260
              mmLeft = 167746
              mmTop = 1058
              mmWidth = 13758
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText30: TppDBText
              UserName = 'DBText30'
              DataField = 'TOTAL'
              DataPipeline = plIOS
              DisplayFormat = ',0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plIOS'
              mmHeight = 3260
              mmLeft = 183886
              mmTop = 1058
              mmWidth = 15875
              BandType = 4
              LayerName = Foreground3
            end
            object ppLine16: TppLine
              UserName = 'Line16'
              Position = lpLeft
              StretchWithParent = True
              Weight = 0.750000000000000000
              mmHeight = 5556
              mmLeft = 9790
              mmTop = 0
              mmWidth = 265
              BandType = 4
              LayerName = Foreground3
            end
            object ppLine17: TppLine
              UserName = 'Line17'
              Position = lpLeft
              StretchWithParent = True
              Weight = 0.750000000000000000
              mmHeight = 5556
              mmLeft = 102659
              mmTop = 0
              mmWidth = 265
              BandType = 4
              LayerName = Foreground3
            end
            object ppLine18: TppLine
              UserName = 'Line18'
              Position = lpLeft
              StretchWithParent = True
              Weight = 0.750000000000000000
              mmHeight = 5556
              mmLeft = 108744
              mmTop = 0
              mmWidth = 265
              BandType = 4
              LayerName = Foreground3
            end
            object ppLine19: TppLine
              UserName = 'Line19'
              Position = lpLeft
              StretchWithParent = True
              Weight = 0.750000000000000000
              mmHeight = 5556
              mmLeft = 154782
              mmTop = 0
              mmWidth = 265
              BandType = 4
              LayerName = Foreground3
            end
            object ppLine20: TppLine
              UserName = 'Line20'
              Position = lpLeft
              StretchWithParent = True
              Weight = 0.750000000000000000
              mmHeight = 5556
              mmLeft = 167217
              mmTop = 0
              mmWidth = 265
              BandType = 4
              LayerName = Foreground3
            end
            object ppLine28: TppLine
              UserName = 'Line201'
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 5821
              mmLeft = 182298
              mmTop = 0
              mmWidth = 265
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBMemo3: TppDBMemo
              UserName = 'DBMemo3'
              ForceJustifyLastLine = True
              CharWrap = True
              DataField = 'TECNICOS'
              DataPipeline = plIOS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Stretch = True
              Transparent = True
              DataPipelineName = 'plIOS'
              mmHeight = 3175
              mmLeft = 110331
              mmTop = 1058
              mmWidth = 42863
              BandType = 4
              LayerName = Foreground3
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
          end
          object ppGroup1: TppGroup
            BreakName = 'TIPO'
            DataPipeline = plIOS
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            KeepTogether = True
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'plIOS'
            NewFile = False
            object ppGroupHeaderBand1: TppGroupHeaderBand
              BeforePrint = ppGroupHeaderBand1BeforePrint
              Background.Brush.Style = bsClear
              mmBottomOffset = 0
              mmHeight = 3969
              mmPrintPosition = 0
              object ppShape3: TppShape
                UserName = 'Shape3'
                mmHeight = 3969
                mmLeft = 1588
                mmTop = 0
                mmWidth = 199761
                BandType = 3
                GroupNo = 0
                LayerName = Foreground3
              end
              object ppLabel75: TppLabel
                UserName = 'Label75'
                Caption = 'Label75'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3378
                mmLeft = 4498
                mmTop = 265
                mmWidth = 10135
                BandType = 3
                GroupNo = 0
                LayerName = Foreground3
              end
            end
            object ppGroupFooterBand1: TppGroupFooterBand
              Background.Brush.Style = bsClear
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object raCodeModule3: TraCodeModule
            ProgramStream = {00}
          end
          object ppDesignLayers3: TppDesignLayers
            object ppDesignLayer3: TppDesignLayer
              UserName = 'Foreground3'
              LayerType = ltBanded
            end
          end
        end
      end
    end
    object ppFooterBand2: TppFooterBand
      BeforePrint = ppFooterBand2BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 78052
      mmPrintPosition = 0
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 197644
        mmTop = 73554
        mmWidth = 1778
        BandType = 8
        LayerName = BandLayer10
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'OBSERVA'#199#213'ES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 1588
        mmTop = 1323
        mmWidth = 21929
        BandType = 8
        LayerName = BandLayer10
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'OBSERVA'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3175
        mmLeft = 24606
        mmTop = 1323
        mmWidth = 131763
        BandType = 8
        LayerName = BandLayer10
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Caption = 'SERVI'#199'OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 167746
        mmTop = 1323
        mmWidth = 14552
        BandType = 8
        LayerName = BandLayer10
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'T_SERVICOS'
        DataPipeline = plOS
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3387
        mmLeft = 183886
        mmTop = 1323
        mmWidth = 17198
        BandType = 8
        LayerName = BandLayer10
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'T_PECAS'
        DataPipeline = plOS
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3387
        mmLeft = 183886
        mmTop = 5821
        mmWidth = 17198
        BandType = 8
        LayerName = BandLayer10
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        AutoSize = False
        Caption = 'PE'#199'AS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 172509
        mmTop = 5821
        mmWidth = 9790
        BandType = 8
        LayerName = BandLayer10
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        DataField = 'DESCONTO'
        DataPipeline = plOS
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3387
        mmLeft = 183886
        mmTop = 10319
        mmWidth = 17198
        BandType = 8
        LayerName = BandLayer10
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        AutoSize = False
        Caption = 'DESCONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 167217
        mmTop = 10319
        mmWidth = 15081
        BandType = 8
        LayerName = BandLayer10
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        DataField = 'T_DESPESAS'
        DataPipeline = plOS
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3387
        mmLeft = 183886
        mmTop = 14552
        mmWidth = 17198
        BandType = 8
        LayerName = BandLayer10
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        AutoSize = False
        Caption = 'ACR'#201'SCIMO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 164836
        mmTop = 14552
        mmWidth = 17463
        BandType = 8
        LayerName = BandLayer10
      end
      object ppLine36: TppLine
        UserName = 'Line36'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 161661
        mmTop = 19579
        mmWidth = 39158
        BandType = 8
        LayerName = BandLayer10
      end
      object ppLine37: TppLine
        UserName = 'Line37'
        Pen.Style = psDashDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 18256
        mmLeft = 161661
        mmTop = 1323
        mmWidth = 794
        BandType = 8
        LayerName = BandLayer10
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        DataField = 'TOTAL'
        DataPipeline = plOS
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3387
        mmLeft = 183886
        mmTop = 20638
        mmWidth = 17198
        BandType = 8
        LayerName = BandLayer10
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        AutoSize = False
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 172244
        mmTop = 20638
        mmWidth = 10054
        BandType = 8
        LayerName = BandLayer10
      end
      object ppLine38: TppLine
        UserName = 'Line38'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1588
        mmTop = 1323
        mmWidth = 199761
        BandType = 8
        LayerName = BandLayer10
      end
      object ppLine39: TppLine
        UserName = 'Line39'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1588
        mmTop = 44186
        mmWidth = 199761
        BandType = 8
        LayerName = BandLayer10
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        AutoSize = False
        Caption = 'N'#195'O NOS RESPONSABILIZAMOS POR PE'#199'AS DEIXADAS A MAIS DE 6 MESES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 25135
        mmTop = 46567
        mmWidth = 130969
        BandType = 8
        LayerName = BandLayer10
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = 'AUTORIZA'#199#195'O DO CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 10583
        mmTop = 57415
        mmWidth = 38312
        BandType = 8
        LayerName = BandLayer10
      end
      object ppLine40: TppLine
        UserName = 'Line40'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 50800
        mmTop = 59796
        mmWidth = 97367
        BandType = 8
        LayerName = BandLayer10
      end
      object ppLine41: TppLine
        UserName = 'Line41'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1588
        mmTop = 72231
        mmWidth = 199761
        BandType = 8
        LayerName = BandLayer10
      end
      object ppDBMemo4: TppDBMemo
        UserName = 'DBMemo4'
        ForceJustifyLastLine = True
        KeepTogether = True
        CharWrap = True
        DataField = 'MENSA_PAD'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 15346
        mmLeft = 24606
        mmTop = 25135
        mmWidth = 131763
        BandType = 8
        LayerName = BandLayer10
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        DataField = 'RAZAO_CLI'
        DataPipeline = plOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plOS'
        mmHeight = 3704
        mmLeft = 51065
        mmTop = 60325
        mmWidth = 97102
        BandType = 8
        LayerName = BandLayer10
      end
      object ppMSG: TppMemo
        UserName = 'MSG'
        ForceJustifyLastLine = True
        KeepTogether = True
        Caption = 'MSG'
        CharWrap = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Stretch = True
        Transparent = True
        mmHeight = 7144
        mmLeft = 25135
        mmTop = 64823
        mmWidth = 130969
        BandType = 8
        LayerName = BandLayer10
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppFin: TppSubReport
        UserName = 'Fin'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'plFin'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 51594
        mmWidth = 202000
        BandType = 8
        LayerName = BandLayer10
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          Columns = 3
          ColumnPositions.Strings = (
            '4000'
            '71333'
            '138666')
          DataPipeline = plFin
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Or'#231'amento'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 4000
          PrinterSetup.mmMarginLeft = 4000
          PrinterSetup.mmMarginRight = 4000
          PrinterSetup.mmMarginTop = 4000
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '14.02'
          mmColumnWidth = 67333
          DataPipelineName = 'plFin'
          object ppTitleBand2: TppTitleBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppColumnHeaderBand1: TppColumnHeaderBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 265
            mmPrintPosition = 0
            object ppLine43: TppLine
              UserName = 'Line43'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 1852
              mmTop = 0
              mmWidth = 61648
              BandType = 2
              LayerName = Foreground6
            end
          end
          object ppDetailBand8: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            ColumnBalancing = True
            mmBottomOffset = 0
            mmHeight = 3175
            mmPrintPosition = 0
            object ppDBText38: TppDBText
              UserName = 'DBText38'
              DataField = 'DOC'
              DataPipeline = plFin
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plFin'
              mmHeight = 3260
              mmLeft = 1852
              mmTop = 0
              mmWidth = 16140
              BandType = 4
              LayerName = Foreground6
            end
            object ppDBText39: TppDBText
              UserName = 'DBText39'
              DataField = 'VALOR'
              DataPipeline = plFin
              DisplayFormat = ',0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFin'
              mmHeight = 3260
              mmLeft = 19579
              mmTop = 0
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground6
            end
            object ppDBText40: TppDBText
              UserName = 'DBText40'
              DataField = 'VENCIMENTO'
              DataPipeline = plFin
              DisplayFormat = 'dd/mm/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFin'
              mmHeight = 3260
              mmLeft = 38100
              mmTop = 0
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground6
            end
            object ppDBText41: TppDBText
              UserName = 'DBText402'
              DataField = 'TIPO'
              DataPipeline = plFin
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFin'
              mmHeight = 3260
              mmLeft = 58473
              mmTop = 0
              mmWidth = 5821
              BandType = 4
              LayerName = Foreground6
            end
          end
          object ppColumnFooterBand1: TppColumnFooterBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDesignLayers8: TppDesignLayers
            object ppDesignLayer8: TppDesignLayer
              UserName = 'Foreground6'
              LayerType = ltBanded
            end
          end
        end
      end
    end
    object raCodeModule4: TraCodeModule
      ProgramStream = {00}
    end
    object ppDesignLayers6: TppDesignLayers
      object ppDesignLayer6: TppDesignLayer
        UserName = 'BandLayer10'
        LayerType = ltBanded
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object plOS: TppDBPipeline
    DataSource = dsOS
    UserName = 'plOs'
    Left = 122
    Top = 208
  end
  object qrIOS: TQuery
    OnCalcFields = qrIOSCalcFields
    DatabaseName = 'e:\instala_siac'
    SQL.Strings = (
      
        'SELECT S2.SEQUENCIA,S2.CODEMP,S2.CODITEM + '#39' - '#39'+ S2.DESC01 +'#39' '#39 +
        ' +  S2.DESC02 AS DESCRICAO,'
      
        '/* (SELECT DISTINCT  DESCRICAO FROM VENDEDOR WHERE VENDEDOR.CODE' +
        'MP=S2.CODEMP AND VENDEDOR.CODIGO=S2.TEC_01) AS N_TEC_01,'
      
        '(SELECT DISTINCT DESCRICAO FROM VENDEDOR WHERE VENDEDOR.CODEMP=S' +
        '2.CODEMP AND VENDEDOR.CODIGO=S2.TEC_02) AS N_TEC_02,'
      
        '(SELECT DISTINCT DESCRICAO FROM VENDEDOR WHERE VENDEDOR.CODEMP=S' +
        '2.CODEMP AND VENDEDOR.CODIGO=S2.TEC_03) AS N_TEC_03,'
      
        '(SELECT DISTINCT DESCRICAO FROM VENDEDOR WHERE VENDEDOR.CODEMP=S' +
        '2.CODEMP AND VENDEDOR.CODIGO=S2.TEC_04) AS N_TEC_04,'
      
        '(SELECT DISTINCT DESCRICAO FROM VENDEDOR WHERE VENDEDOR.CODEMP=S' +
        '2.CODEMP AND VENDEDOR.CODIGO=S2.TEC_05) AS N_TEC_05, */'
      'QUANT * PRECO AS TOTAL,S2.CODITEM,S2.UNIDADE,S2.QUANT,S2.PRECO,'
      'S2.TEC_01,S2.TEC_02,S2.TEC_03,S2.TEC_04,S2.TEC_05,S2.VENDEDOR,'
      'PR.GRUPO '
      
        'FROM S2 LEFT JOIN PR ON S2.CODEMP = PR.EMPRESA AND S2.CODITEM=PR' +
        '.CODITEM'
      'WHERE NOTA= :PNOTA'
      'AND CODEMP= :PEMPRESA')
    Left = 3
    Top = 258
    ParamData = <
      item
        DataType = ftString
        Name = 'PNOTA'
        ParamType = ptInput
        Value = '000001'
      end
      item
        DataType = ftString
        Name = 'PEMPRESA'
        ParamType = ptInput
        Value = '01'
      end>
    object qrIOSUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrIOSQUANT: TFloatField
      FieldName = 'QUANT'
    end
    object qrIOSPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object qrIOSTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrIOSSEQUENCIA: TStringField
      FieldName = 'SEQUENCIA'
      Size = 4
    end
    object qrIOSTECNICOS: TStringField
      FieldKind = fkCalculated
      FieldName = 'TECNICOS'
      Size = 250
      Calculated = True
    end
    object qrIOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 132
    end
    object qrIOSCODEMP: TStringField
      FieldName = 'CODEMP'
      Size = 2
    end
    object qrIOSTEC_01: TStringField
      FieldName = 'TEC_01'
      Size = 2
    end
    object qrIOSTEC_02: TStringField
      FieldName = 'TEC_02'
      Size = 2
    end
    object qrIOSTEC_03: TStringField
      FieldName = 'TEC_03'
      Size = 2
    end
    object qrIOSTEC_04: TStringField
      FieldName = 'TEC_04'
      Size = 2
    end
    object qrIOSTEC_05: TStringField
      FieldName = 'TEC_05'
      Size = 2
    end
    object qrIOSVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 2
    end
    object qrIOSsTipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'sTipo'
      Calculated = True
    end
    object qrIOSGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 4
    end
    object qrIOSCODITEM: TStringField
      FieldName = 'CODITEM'
      Size = 8
    end
  end
  object dsIOS: TDataSource
    DataSet = vtIOs
    Left = 47
    Top = 259
  end
  object plIOS: TppDBPipeline
    DataSource = dsIOS
    UserName = 'plIOS'
    Left = 82
    Top = 258
    object plIOSppField1: TppField
      FieldAlias = 'SEQUENCIA'
      FieldName = 'SEQUENCIA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 0
    end
    object plIOSppField2: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 1
    end
    object plIOSppField3: TppField
      FieldAlias = 'UNIDADE'
      FieldName = 'UNIDADE'
      FieldLength = 5
      DisplayWidth = 5
      Position = 2
    end
    object plIOSppField4: TppField
      FieldAlias = 'TECNICOS'
      FieldName = 'TECNICOS'
      FieldLength = 250
      DisplayWidth = 250
      Position = 3
    end
    object plIOSppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANT'
      FieldName = 'QUANT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object plIOSppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRECO'
      FieldName = 'PRECO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object plIOSppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object plIOSppField8: TppField
      FieldAlias = 'TIPO'
      FieldName = 'TIPO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 7
    end
  end
  object qrVenda: TQuery
    DatabaseName = 'c:\instala_siac'
    SQL.Strings = (
      
        'SELECT PV.*,VENDEDOR.DESCRICAO AS NOMEVEND,CLIENTES.RAZAOSOC AS ' +
        'NOMECLI,'
      
        'CLIENTES.ENDERECO AS ENDCLI, CLIENTES.BAIRRO AS BAICLI, CLIENTES' +
        '.CIDADE AS CIDCLI,'
      
        'CLIENTES.ESTADO AS ESTADOCLI,CLIENTES.RAZAOSOC AS RAZAOCLI,CLIEN' +
        'TES.FANTASIA AS FANTACLI,CLIENTES.CEP AS CEPCLI,'
      
        'CLIENTES.CGC AS CGCCLI,CLIENTES.INSC AS INSCCLI, CLIENTES.TELEFO' +
        'NE1 AS TEL1CLI,'
      'CLIENTES.TELEFONE2 AS TEL2CLI,PV.CONDPAG AS CONDPAG'
      ' FROM PV'
      
        ' LEFT JOIN VENDEDOR ON PV.CODEMP=VENDEDOR.CODEMP AND PV.VENDEDOR' +
        '=VENDEDOR.CODIGO'
      ' LEFT JOIN CLIENTES ON PV.CODCLI=CLIENTES.CODIGO '
      'LEFT JOIN CONDPAG ON PV.CONDPAG=CONDPAG.CODIGO   '
      'WHERE PV.NOTA = :PNOTA'
      'AND PV.CODEMP= :PEMPRESA')
    Left = 7
    Top = 304
    ParamData = <
      item
        DataType = ftString
        Name = 'PNOTA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PEMPRESA'
        ParamType = ptInput
      end>
  end
  object rpVenda: TppReport
    AutoStop = False
    DataPipeline = plIVenda
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Or'#231'amento'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 139700
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 256
    Template.FileName = 'E:\instala_siac\Modelos\Venda\venda.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 126
    Top = 304
    Version = '14.02'
    mmColumnWidth = 204000
    DataPipelineName = 'plIVenda'
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 48419
      mmPrintPosition = 0
      object ppImage5: TppImage
        UserName = 'Image5'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        mmHeight = 25400
        mmLeft = 5027
        mmTop = 2646
        mmWidth = 40217
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        AutoSize = False
        Caption = 'plblFantasia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 46567
        mmTop = 2646
        mmWidth = 168011
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        AutoSize = False
        Caption = 'plblEnderecoCabecalho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 46567
        mmTop = 7673
        mmWidth = 168011
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Caption = 'plblCNPJINSC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 46567
        mmTop = 11642
        mmWidth = 168011
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        HyperlinkEnabled = False
        AutoSize = False
        Caption = 'plblFonesMail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 46567
        mmTop = 15875
        mmWidth = 168011
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLine46: TppLine
        UserName = 'Line46'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 5027
        mmTop = 41540
        mmWidth = 209550
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        Caption = 'D.A.V:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 46567
        mmTop = 20373
        mmWidth = 9260
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText78: TppDBText
        UserName = 'DBText78'
        DataField = 'NOTA'
        DataPipeline = plVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plVenda'
        mmHeight = 3704
        mmLeft = 56621
        mmTop = 20373
        mmWidth = 17198
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 74613
        mmTop = 20373
        mmWidth = 7673
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText79: TppDBText
        UserName = 'DBText79'
        DataField = 'FDATA'
        DataPipeline = plVenda
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plVenda'
        mmHeight = 3704
        mmLeft = 83344
        mmTop = 20373
        mmWidth = 17198
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 101071
        mmTop = 20373
        mmWidth = 13494
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText80: TppDBText
        UserName = 'DBText80'
        DataField = 'CODCLI'
        DataPipeline = plVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plVenda'
        mmHeight = 3704
        mmLeft = 115623
        mmTop = 20373
        mmWidth = 13494
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 129382
        mmTop = 20373
        mmWidth = 1058
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText81: TppDBText
        UserName = 'DBText81'
        DataField = 'RAZAOCLI'
        DataPipeline = plVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plVenda'
        mmHeight = 3704
        mmLeft = 130969
        mmTop = 20373
        mmWidth = 83608
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText82: TppDBText
        UserName = 'DBText401'
        DataField = 'FANTACLI'
        DataPipeline = plVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plVenda'
        mmHeight = 3704
        mmLeft = 116152
        mmTop = 24606
        mmWidth = 98425
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel101: TppLabel
        UserName = 'Label1'
        Caption = 'ENDERE'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 28575
        mmWidth = 17992
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText83: TppDBText
        UserName = 'DBText83'
        DataField = 'ENDCLI'
        DataPipeline = plVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plVenda'
        mmHeight = 3704
        mmLeft = 24606
        mmTop = 28575
        mmWidth = 104511
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel102: TppLabel
        UserName = 'Label102'
        Caption = 'BAIRRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 129382
        mmTop = 28575
        mmWidth = 12171
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText84: TppDBText
        UserName = 'DBText84'
        DataField = 'BAICLI'
        DataPipeline = plVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plVenda'
        mmHeight = 3704
        mmLeft = 143140
        mmTop = 28840
        mmWidth = 71438
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel103: TppLabel
        UserName = 'Label802'
        Caption = 'CIDADE/ESTADO/CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 32808
        mmWidth = 33338
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText85: TppDBText
        UserName = 'DBText85'
        DataField = 'CIDCLI'
        DataPipeline = plVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plVenda'
        mmHeight = 3704
        mmLeft = 40217
        mmTop = 32808
        mmWidth = 48948
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText86: TppDBText
        UserName = 'DBText86'
        DataField = 'ESTADOCLI'
        DataPipeline = plVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plVenda'
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 32808
        mmWidth = 4233
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText87: TppDBText
        UserName = 'DBText87'
        DataField = 'CEPCLI'
        DataPipeline = plVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plVenda'
        mmHeight = 3704
        mmLeft = 95250
        mmTop = 32808
        mmWidth = 14552
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel104: TppLabel
        UserName = 'Label104'
        Caption = 'CPF/CNPJ.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 111654
        mmTop = 32808
        mmWidth = 17198
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText88: TppDBText
        UserName = 'DBText88'
        DataField = 'CGCCLI'
        DataPipeline = plVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plVenda'
        mmHeight = 3704
        mmLeft = 129911
        mmTop = 32808
        mmWidth = 36513
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel105: TppLabel
        UserName = 'Label105'
        Caption = 'INSC./C.I:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 166952
        mmTop = 33073
        mmWidth = 14288
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText89: TppDBText
        UserName = 'DBText89'
        DataField = 'INSCCLI'
        DataPipeline = plVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plVenda'
        mmHeight = 3704
        mmLeft = 182563
        mmTop = 33073
        mmWidth = 32015
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        Caption = 'TELEFONE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 37042
        mmWidth = 17727
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText90: TppDBText
        UserName = 'DBText90'
        DataField = 'TEL1CLI'
        DataPipeline = plVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plVenda'
        mmHeight = 3704
        mmLeft = 21960
        mmTop = 37042
        mmWidth = 28575
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel107: TppLabel
        UserName = 'Label107'
        Caption = 'FORMA PAGTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 51329
        mmTop = 37042
        mmWidth = 23283
        BandType = 0
        LayerName = BandLayer7
      end
      object ppDBText91: TppDBText
        UserName = 'DBText701'
        DataField = 'CONDPAG'
        DataPipeline = plVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plVenda'
        mmHeight = 3704
        mmLeft = 73554
        mmTop = 37042
        mmWidth = 53711
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLine47: TppLine
        UserName = 'Line47'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 5027
        mmTop = 47096
        mmWidth = 209550
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
        AutoSize = False
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 6085
        mmTop = 42598
        mmWidth = 12965
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel109: TppLabel
        UserName = 'Label109'
        AutoSize = False
        Caption = 'Descri'#231#227'o do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 31485
        mmTop = 42598
        mmWidth = 117475
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel110: TppLabel
        UserName = 'Label110'
        AutoSize = False
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 150813
        mmTop = 42598
        mmWidth = 17198
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel111: TppLabel
        UserName = 'Label111'
        AutoSize = False
        Caption = 'V.Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 169069
        mmTop = 42598
        mmWidth = 17992
        BandType = 0
        LayerName = BandLayer7
      end
      object ppLabel112: TppLabel
        UserName = 'Label112'
        AutoSize = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 188913
        mmTop = 42598
        mmWidth = 19844
        BandType = 0
        LayerName = BandLayer7
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText92: TppDBText
        UserName = 'DBText92'
        DataField = 'CODITEM'
        DataPipeline = plIVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plIVenda'
        mmHeight = 3260
        mmLeft = 5027
        mmTop = 0
        mmWidth = 23813
        BandType = 4
        LayerName = BandLayer7
      end
      object ppDBText93: TppDBText
        UserName = 'DBText93'
        DataField = 'DESCRICAO'
        DataPipeline = plIVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'plIVenda'
        mmHeight = 3175
        mmLeft = 30692
        mmTop = 0
        mmWidth = 117211
        BandType = 4
        LayerName = BandLayer7
      end
      object ppDBText94: TppDBText
        UserName = 'DBText94'
        DataField = 'QUANT'
        DataPipeline = plIVenda
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIVenda'
        mmHeight = 3260
        mmLeft = 149754
        mmTop = 180
        mmWidth = 17198
        BandType = 4
        LayerName = BandLayer7
      end
      object ppDBText95: TppDBText
        UserName = 'DBText95'
        DataField = 'PRECO'
        DataPipeline = plIVenda
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIVenda'
        mmHeight = 3260
        mmLeft = 168011
        mmTop = 180
        mmWidth = 17992
        BandType = 4
        LayerName = BandLayer7
      end
      object ppDBText96: TppDBText
        UserName = 'DBText96'
        DataField = 'TOTAL'
        DataPipeline = plIVenda
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIVenda'
        mmHeight = 3175
        mmLeft = 188913
        mmTop = 265
        mmWidth = 19844
        BandType = 4
        LayerName = BandLayer7
      end
    end
    object ppFooterBand3: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 49477
      mmPrintPosition = 0
      object ppLine48: TppLine
        UserName = 'Line48'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 4233
        mmTop = 46831
        mmWidth = 209550
        BandType = 7
        LayerName = BandLayer7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'TOTAL'
        DataPipeline = plIVenda
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plIVenda'
        mmHeight = 3440
        mmLeft = 188913
        mmTop = 35190
        mmWidth = 19844
        BandType = 7
        LayerName = BandLayer7
      end
      object ppLabel113: TppLabel
        UserName = 'Label902'
        Caption = 'SubTotal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 168011
        mmTop = 35190
        mmWidth = 16933
        BandType = 7
        LayerName = BandLayer7
      end
      object ppLabel114: TppLabel
        UserName = 'Label114'
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 168011
        mmTop = 38894
        mmWidth = 17198
        BandType = 7
        LayerName = BandLayer7
      end
      object ppDBText97: TppDBText
        UserName = 'DBText97'
        DataField = 'DESCONTO'
        DataPipeline = plVenda
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVenda'
        mmHeight = 3440
        mmLeft = 187855
        mmTop = 38894
        mmWidth = 20902
        BandType = 7
        LayerName = BandLayer7
      end
      object ppLabel115: TppLabel
        UserName = 'Label115'
        Caption = 'Total Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 168011
        mmTop = 43127
        mmWidth = 16933
        BandType = 7
        LayerName = BandLayer7
      end
      object ppDBText98: TppDBText
        UserName = 'DBText98'
        DataField = 'TOTNOTA'
        DataPipeline = plVenda
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'plVenda'
        mmHeight = 3440
        mmLeft = 187855
        mmTop = 43127
        mmWidth = 20902
        BandType = 7
        LayerName = BandLayer7
      end
      object ppLine42: TppLine
        UserName = 'Line42'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 4233
        mmTop = 34660
        mmWidth = 209550
        BandType = 7
        LayerName = BandLayer7
      end
      object rpFinVenda: TppSubReport
        UserName = 'rpFinVenda'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentWidth = False
        TraverseAllData = False
        DataPipelineName = 'plFin'
        mmHeight = 5027
        mmLeft = 1588
        mmTop = 35190
        mmWidth = 166423
        BandType = 7
        LayerName = BandLayer7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          Columns = 2
          ColumnPositions.Strings = (
            '4000'
            '105000')
          DataPipeline = plFin
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Or'#231'amento'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 4000
          PrinterSetup.mmMarginLeft = 4000
          PrinterSetup.mmMarginRight = 4000
          PrinterSetup.mmMarginTop = 4000
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '14.02'
          mmColumnWidth = 101000
          DataPipelineName = 'plFin'
          object ppTitleBand3: TppTitleBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppColumnHeaderBand2: TppColumnHeaderBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 265
            mmPrintPosition = 0
            object ppLine44: TppLine
              UserName = 'Line43'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 1852
              mmTop = 0
              mmWidth = 61648
              BandType = 2
              LayerName = PageLayer1
            end
          end
          object ppDetailBand9: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            ColumnBalancing = True
            mmBottomOffset = 0
            mmHeight = 3175
            mmPrintPosition = 0
            object ppDBText42: TppDBText
              UserName = 'DBText38'
              DataField = 'DOC'
              DataPipeline = plFin
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'plFin'
              mmHeight = 3260
              mmLeft = 1852
              mmTop = 0
              mmWidth = 16140
              BandType = 4
              LayerName = PageLayer1
            end
            object ppDBText43: TppDBText
              UserName = 'DBText39'
              DataField = 'VALOR'
              DataPipeline = plFin
              DisplayFormat = ',0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFin'
              mmHeight = 3260
              mmLeft = 19579
              mmTop = 0
              mmWidth = 17198
              BandType = 4
              LayerName = PageLayer1
            end
            object ppDBText44: TppDBText
              UserName = 'DBText40'
              DataField = 'VENCIMENTO'
              DataPipeline = plFin
              DisplayFormat = 'dd/mm/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFin'
              mmHeight = 3260
              mmLeft = 38100
              mmTop = 0
              mmWidth = 17198
              BandType = 4
              LayerName = PageLayer1
            end
            object ppDBText66: TppDBText
              UserName = 'DBText402'
              DataField = 'TIPO'
              DataPipeline = plFin
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plFin'
              mmHeight = 3260
              mmLeft = 58473
              mmTop = 0
              mmWidth = 5821
              BandType = 4
              LayerName = PageLayer1
            end
          end
          object ppColumnFooterBand2: TppColumnFooterBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppSummaryBand4: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDesignLayers9: TppDesignLayers
            object ppDesignLayer9: TppDesignLayer
              UserName = 'PageLayer1'
              LayerType = ltBanded
            end
          end
        end
      end
    end
    object raCodeModule6: TraCodeModule
      ProgramStream = {00}
    end
    object ppDesignLayers10: TppDesignLayers
      object ppDesignLayer10: TppDesignLayer
        UserName = 'BandLayer7'
        LayerType = ltBanded
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object dsVenda: TDataSource
    DataSet = qrVenda
    Left = 51
    Top = 306
  end
  object plVenda: TppDBPipeline
    DataSource = dsVenda
    UserName = 'plVenda'
    Left = 86
    Top = 305
  end
  object qrAux: TQuery
    DatabaseName = 'c:\instala_siac'
    Left = 160
    Top = 176
  end
  object tbAux: TTable
    DatabaseName = 'c:\Instala_siac'
    Left = 160
    Top = 232
  end
  object qrIVenda: TQuery
    DatabaseName = 'c:\Instala_siac'
    SQL.Strings = (
      
        'SELECT IV. CODITEM,IV.QUANT,IV.PRECO, IV.QUANT * IV.PRECO AS TOT' +
        'AL,PR.DESCRICAO'
      ' FROM IV'
      'INNER JOIN PR ON IV.CODITEM=PR.CODITEM '
      'WHERE'
      'IV.CODEMP= :PEMPRESA AND IV.NOTA=:PNOTA')
    Left = 8
    Top = 360
    ParamData = <
      item
        DataType = ftString
        Name = 'PEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PNOTA'
        ParamType = ptInput
      end>
  end
  object dsIVenda: TDataSource
    DataSet = qrIVenda
    Left = 55
    Top = 360
  end
  object plIVenda: TppDBPipeline
    DataSource = dsIVenda
    UserName = 'plIVenda'
    Left = 104
    Top = 360
  end
  object rpRTF: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 4000
    PrinterSetup.mmMarginLeft = 4000
    PrinterSetup.mmMarginRight = 4000
    PrinterSetup.mmMarginTop = 4000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.PageDisplay = pdContinuous
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.UseTextBoxes = True
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 72
    Top = 464
    Version = '14.02'
    mmColumnWidth = 0
    object ppHeaderBand5: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 210873
      mmPrintPosition = 0
      object ppRichText1: TppRichText
        UserName = 'RichText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Caption = 'RichText1'
        Stretch = True
        Transparent = True
        mmHeight = 209286
        mmLeft = 0
        mmTop = 529
        mmWidth = 201613
        BandType = 0
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand4: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object rpRTFMini: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 2000
    PrinterSetup.mmMarginRight = 2000
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 88000
    PrinterSetup.PaperSize = 256
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Printer'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.PageDisplay = pdContinuous
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.UseTextBoxes = True
    ShowPrintDialog = False
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 119
    Top = 464
    Version = '14.02'
    mmColumnWidth = 0
    object ppHeaderBand6: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 127265
      mmPrintPosition = 0
      object ppRichText2: TppRichText
        UserName = 'RichText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Caption = 'RichText1'
        Stretch = True
        Transparent = True
        mmHeight = 106627
        mmLeft = 1058
        mmTop = 17992
        mmWidth = 78846
        BandType = 0
        LayerName = Foreground5
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
      end
      object ppImage6: TppImage
        UserName = 'Image6'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        DirectDraw = True
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 15346
        mmLeft = 1058
        mmTop = 2117
        mmWidth = 78846
        BandType = 0
        LayerName = Foreground5
      end
    end
    object ppDetailBand7: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand5: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers7: TppDesignLayers
      object ppDesignLayer7: TppDesignLayer
        UserName = 'Foreground5'
        LayerType = ltBanded
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object vtIOs: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'SEQUENCIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'TECNICOS'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'QUANT'
        DataType = ftFloat
      end
      item
        Name = 'PRECO'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 1
      end>
    Left = 113
    Top = 257
    Data = {
      03000800090053455155454E4349410100140000000000090044455343524943
      414F0100C800000000000700554E494441444501000500000000000800544543
      4E49434F530100FA000000000005005155414E54060000000000000005005052
      45434F06000000000000000500544F54414C060000000000000004005449504F
      0100010000000000000000000000}
    object vtIOsSEQUENCIA: TStringField
      FieldName = 'SEQUENCIA'
    end
    object vtIOsDESCRICAO: TStringField
      DisplayWidth = 200
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object vtIOsUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object vtIOsTECNICOS: TStringField
      FieldName = 'TECNICOS'
      Size = 250
    end
    object vtIOsQUANT: TFloatField
      FieldName = 'QUANT'
    end
    object vtIOsPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object vtIOsTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object vtIOsTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object vtFinaceiro: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'DOC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VENCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'VALOR'
        DataType = ftFloat
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 20
      end>
    Left = 40
    Top = 424
    Data = {
      030004000300444F4301001400000000000A0056454E43494D454E544F090000
      0000000000050056414C4F52060000000000000004005449504F010014000000
      0000000000000000}
    object vtFinaceiroDOC: TStringField
      FieldName = 'DOC'
    end
    object vtFinaceiroVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object vtFinaceiroVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object vtFinaceiroTIPO: TStringField
      FieldName = 'TIPO'
    end
  end
  object plFin: TppDBPipeline
    DataSource = dsFinanceiro
    UserName = 'plFin'
    Left = 8
    Top = 424
    object plFinppField1: TppField
      FieldAlias = 'DOC'
      FieldName = 'DOC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 0
    end
    object plFinppField2: TppField
      FieldAlias = 'VENCIMENTO'
      FieldName = 'VENCIMENTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object plFinppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object plFinppField4: TppField
      FieldAlias = 'TIPO'
      FieldName = 'TIPO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
  end
  object dsFinanceiro: TDataSource
    DataSet = vtFinaceiro
    Left = 80
    Top = 424
  end
end
