unit uOrcamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Bde.DBTables,System.IniFiles,
  Vcl.StdCtrls, Vcl.Buttons, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppBands, ppCache, ppDesignLayer, ppParameter, ppPrnabl, ppCtrls,
  ppVar, ppModule, raCodMod, ppStrtch, ppSubRpt, Vcl.Grids, Vcl.DBGrids,
  PngBitBtn, Vcl.ExtCtrls, ppMemo, JvComponentBase, ppRichTx, JvExStdCtrls,
  JvRichEdit, MemDS, VirtualTable;

type
  TfrmOrca = class(TForm)
    qrOrcamento: TQuery;
    qrIOrca: TQuery;
    plOrca: TppDBPipeline;
    rpOrcamento: TppReport;
    dsOrca: TDataSource;
    dsIOrca: TDataSource;
    plIOrca: TppDBPipeline;
    ppParameterList1: TppParameterList;
    qrEmpresa: TQuery;
    dsEmpresa: TDataSource;
    plEmpresa: TppDBPipeline;
    cbModelos: TComboBox;
    Label1: TLabel;
    PngBitBtn1: TPngBitBtn;
    Timer1: TTimer;
    qrOs: TQuery;
    dsOS: TDataSource;
    rpOS: TppReport;
    ppParameterList2: TppParameterList;
    plOS: TppDBPipeline;
    qrIOS: TQuery;
    dsIOS: TDataSource;
    plIOS: TppDBPipeline;
    qrVenda: TQuery;
    rpVenda: TppReport;
    ppParameterList3: TppParameterList;
    dsVenda: TDataSource;
    plVenda: TppDBPipeline;
    qrIOrcasDescricao: TStringField;
    qrIOrcaNOTA: TStringField;
    qrIOrcaPRODUTO: TStringField;
    qrIOrcaCODITEM: TStringField;
    qrIOrcaDESC01: TStringField;
    qrIOrcaDESC02: TStringField;
    qrIOrcaDESC03: TStringField;
    qrIOrcaDESCRICAO: TStringField;
    qrIOrcaUNIDADE: TStringField;
    qrIOrcaQUANT: TFloatField;
    qrIOrcaPRECO: TFloatField;
    qrIOrcaTOTPROD: TFloatField;
    qrIOrcaOPCIONAL: TStringField;
    qrIOrcaMARCA: TStringField;
    qrIOrcaTIPO: TStringField;
    qrIOrcaDESCONTO: TFloatField;
    qrIOrcaDESCLIQ: TFloatField;
    qrIOrcaTOTPRODE: TFloatField;
    ppHeaderBand1: TppHeaderBand;
    ppImage2: TppImage;
    ppImage1: TppImage;
    ppLabel11: TppLabel;
    ppLine1: TppLine;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBText1: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel16: TppLabel;
    plblEndereco: TppLabel;
    ppLabel18: TppLabel;
    plblLocalData: TppLabel;
    plblFantasia: TppLabel;
    plblEnderecoCabecalho: TppLabel;
    plblCNPJINSC: TppLabel;
    plblFonesMail: TppLabel;
    ppDBText11: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine2: TppLine;
    ppLabel30: TppLabel;
    ppLine6: TppLine;
    ppDetailBand2: TppDetailBand;
    pdbtCODITEM: TppDBText;
    pdbtDESCRICAO: TppDBText;
    pdbtMARCA: TppDBText;
    pdbtQUANT: TppDBText;
    pdbtPRECO: TppDBText;
    pdbtTOTPROD: TppDBText;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppDBText20: TppDBText;
    ppLine3: TppLine;
    pdbtDESCONTO: TppDBText;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel9: TppLabel;
    ppDBText4: TppDBText;
    ppLabel10: TppLabel;
    ppDBText12: TppDBText;
    ppLabel12: TppLabel;
    ppDBText13: TppDBText;
    ppLabel13: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText21: TppDBText;
    ppLabel26: TppLabel;
    pdbtxtTotalServicos: TppDBText;
    ppLabel29: TppLabel;
    ppLabel31: TppLabel;
    pdbtxtTotalDescontoLiq: TppDBText;
    ppLabel28: TppLabel;
    ppDBText6: TppDBText;
    pdbtxtSubTotalProdutos: TppDBText;
    ppLabel14: TppLabel;
    ppLine5: TppLine;
    ppLine7: TppLine;
    raCodeModule1: TraCodeModule;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    ppLabel15: TppLabel;
    ppDBText2: TppDBText;
    ppSystemVariable2: TppSystemVariable;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    plblUsuario: TppLabel;
    raCodeModule2: TraCodeModule;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    qrIOSUNIDADE: TStringField;
    qrIOSQUANT: TFloatField;
    qrIOSPRECO: TFloatField;
    qrIOSTOTAL: TFloatField;
    qrIOSSEQUENCIA: TStringField;
    qrIOSTECNICOS: TStringField;
    qrIOSDESCRICAO: TStringField;
    qrIOSCODEMP: TStringField;
    qrIOSTEC_01: TStringField;
    qrIOSTEC_02: TStringField;
    qrIOSTEC_03: TStringField;
    qrIOSTEC_04: TStringField;
    qrIOSTEC_05: TStringField;
    qrAux: TQuery;
    tbAux: TTable;
    ListBox1: TListBox;
    qrIOSVENDEDOR: TStringField;
    qrIVenda: TQuery;
    dsIVenda: TDataSource;
    plIVenda: TppDBPipeline;
    JvRichEdit1: TJvRichEdit;
    rpRTF: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppRichText1: TppRichText;
    ppDetailBand6: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList4: TppParameterList;
    rpRTFMini: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppRichText2: TppRichText;
    ppDetailBand7: TppDetailBand;
    ppFooterBand5: TppFooterBand;
    ppDesignLayers7: TppDesignLayers;
    ppDesignLayer7: TppDesignLayer;
    ppParameterList5: TppParameterList;
    ppImage6: TppImage;
    qrIOSsTipo: TStringField;
    qrIOSGRUPO: TStringField;
    qrIOSCODITEM: TStringField;
    vtIOs: TVirtualTable;
    vtIOsSEQUENCIA: TStringField;
    vtIOsDESCRICAO: TStringField;
    vtIOsUNIDADE: TStringField;
    vtIOsTECNICOS: TStringField;
    vtIOsQUANT: TFloatField;
    vtIOsPRECO: TFloatField;
    vtIOsTOTAL: TFloatField;
    vtIOsTIPO: TStringField;
    vtFinaceiro: TVirtualTable;
    vtFinaceiroDOC: TStringField;
    vtFinaceiroVENCIMENTO: TDateField;
    vtFinaceiroVALOR: TFloatField;
    vtFinaceiroTIPO: TStringField;
    plFin: TppDBPipeline;
    dsFinanceiro: TDataSource;
    ppHeaderBand4: TppHeaderBand;
    ppImage5: TppImage;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLine46: TppLine;
    ppLabel97: TppLabel;
    ppDBText78: TppDBText;
    ppLabel98: TppLabel;
    ppDBText79: TppDBText;
    ppLabel99: TppLabel;
    ppDBText80: TppDBText;
    ppLabel100: TppLabel;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppLabel101: TppLabel;
    ppDBText83: TppDBText;
    ppLabel102: TppLabel;
    ppDBText84: TppDBText;
    ppLabel103: TppLabel;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppLabel104: TppLabel;
    ppDBText88: TppDBText;
    ppLabel105: TppLabel;
    ppDBText89: TppDBText;
    ppLabel106: TppLabel;
    ppDBText90: TppDBText;
    ppLabel107: TppLabel;
    ppDBText91: TppDBText;
    ppLine47: TppLine;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLine48: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppDBText97: TppDBText;
    ppLabel115: TppLabel;
    ppDBText98: TppDBText;
    ppLine42: TppLine;
    rpFinVenda: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppLine44: TppLine;
    ppDetailBand9: TppDetailBand;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText66: TppDBText;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppSummaryBand4: TppSummaryBand;
    ppDesignLayers9: TppDesignLayers;
    ppDesignLayer9: TppDesignLayer;
    raCodeModule6: TraCodeModule;
    ppDesignLayers10: TppDesignLayers;
    ppDesignLayer10: TppDesignLayer;
    ppHeaderBand2: TppHeaderBand;
    ppShape1: TppShape;
    ppImage3: TppImage;
    ppImage4: TppImage;
    ppLine4: TppLine;
    ppLabel2: TppLabel;
    ppDBText7: TppDBText;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel56: TppLabel;
    ppDBText45: TppDBText;
    ppLabel57: TppLabel;
    ppDBText46: TppDBText;
    ppLabel1: TppLabel;
    ppDBText3: TppDBText;
    ppDBText18: TppDBText;
    ppLabel3: TppLabel;
    ppDBText19: TppDBText;
    ppDBText22: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText23: TppDBText;
    ppDBText47: TppDBText;
    ppLabel6: TppLabel;
    ppLabel58: TppLabel;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppLabel60: TppLabel;
    ppDBText51: TppDBText;
    ppLabel59: TppLabel;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppLabel61: TppLabel;
    ppDBText54: TppDBText;
    ppLabel62: TppLabel;
    ppDBText55: TppDBText;
    ppLabel63: TppLabel;
    ppDBText56: TppDBText;
    ppLabel64: TppLabel;
    ppDBText57: TppDBText;
    ppLabel65: TppLabel;
    ppDBText61: TppDBText;
    ppLabel69: TppLabel;
    ppDBText62: TppDBText;
    ppLabel70: TppLabel;
    ppDBText63: TppDBText;
    ppLabel71: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppDetailBand3: TppDetailBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppShape2: TppShape;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText28: TppDBText;
    ppDBText27: TppDBText;
    ppDBText30: TppDBText;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine28: TppLine;
    ppDBMemo3: TppDBMemo;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape3: TppShape;
    ppLabel75: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    raCodeModule3: TraCodeModule;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable3: TppSystemVariable;
    ppLabel27: TppLabel;
    ppDBText29: TppDBText;
    ppLabel43: TppLabel;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppLabel44: TppLabel;
    ppDBText33: TppDBText;
    ppLabel45: TppLabel;
    ppDBText34: TppDBText;
    ppLabel46: TppLabel;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppDBText35: TppDBText;
    ppLabel47: TppLabel;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppDBMemo4: TppDBMemo;
    ppDBText36: TppDBText;
    ppMSG: TppMemo;
    ppFin: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppLine43: TppLine;
    ppDetailBand8: TppDetailBand;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppDesignLayers8: TppDesignLayers;
    ppDesignLayer8: TppDesignLayer;
    raCodeModule4: TraCodeModule;
    ppDesignLayers6: TppDesignLayers;
    ppDesignLayer6: TppDesignLayer;
    procedure CriarINI;
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    function IIf(pCond:Boolean;pTrue,pFalse:Variant): Variant;
    procedure rpOrcamentoBeforePrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListarArquivos(Diretorio: string; Sub:Boolean);
    function TemAtributo(Attr, Val: Integer): Boolean;
    procedure cbModelosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure qrIOSCalcFields(DataSet: TDataSet);
    procedure qrIOrcaCalcFields(DataSet: TDataSet);
    procedure AtribuirLabels;
    procedure AtribuirImg_Orcamento;
    procedure AtribuirImg_OS;
    procedure AtribuirImg_Venda;
    procedure SetaDiretorio;
    procedure SetaDiretorio2;
    procedure ConfiguraReport(pReport: TppReport);
    function ExisteCampo(pTabela,pCampo: string): Boolean;
    procedure FormCreate(Sender: TObject);
    procedure ppFooterBand2BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand1BeforeGenerate(Sender: TObject);
    procedure Financeiro(pEmpresa,pNota,pSerie,pTipo:String);
  private
    { Private declarations }
  public
    { Public declarations }
    xCaminhoImagens, xUsuario, pEmpresa, pNota,xMsgOS: String;
    xIDCliente,xCaminhoSalvar,xVisualizar : string;
    xTipo : Integer; // 1 Orcamento 2 OS 3 Venda
    xFecharEspecial : Boolean;
    xArquivo,xModelo : String;
  end;

var
  frmOrca: TfrmOrca;

implementation

{$R *.dfm}

procedure TfrmOrca.AtribuirImg_Orcamento;
begin
  if FileExists(xCaminhoImagens+'\logo.jpg')  then
  begin
    ppImage1.Visible := True;
    ppImage2.Visible := False;
    plblFantasia.Visible := True;
    plblEnderecoCabecalho.Visible := True;
    plblCNPJINSC.Visible := True;
    plblFonesMail.Visible := True;
    ppImage1.Picture.LoadFromFile(xCaminhoImagens+'\logo.jpg');
    ppImage6.Picture.LoadFromFile(xCaminhoImagens+'\logo.jpg' )
  end;

  if FileExists(xCaminhoImagens+'\logoex.jpg') then
  begin
    ppImage1.Visible := False;
    ppImage2.Visible := True;
    plblFantasia.Visible := False;
    plblEnderecoCabecalho.Visible := False;
    plblCNPJINSC.Visible := False;
    plblFonesMail.Visible := False;
    ppImage2.Picture.LoadFromFile(xCaminhoImagens+'\logoex.jpg');
  end;
end;

procedure TfrmOrca.AtribuirImg_OS;
begin
  if FileExists(xCaminhoImagens+'\logo.jpg')  then
  begin
    ppImage4.Visible := True;
    ppImage3.Visible := False;
    ppLabel32.Visible:= True;
    ppLabel33.Visible := True;
    ppLabel34.Visible := True;
    ppLabel35.Visible := True;
    ppImage4.Picture.LoadFromFile(xCaminhoImagens+'\logo.jpg');
  end;

  if FileExists(xCaminhoImagens+'\logoex.jpg') then
  begin
    ppImage4.Visible := False;
    ppImage3.Visible := True;
    ppLabel32.Visible := False;
    ppLabel33.Visible := False;
    ppLabel34.Visible := False;
    ppLabel35.Visible := False;
    ppImage3.Picture.LoadFromFile(xCaminhoImagens+'\logoex.jpg');
  end;
end;

procedure TfrmOrca.AtribuirImg_Venda;
begin
  if FileExists(xCaminhoImagens+'\logo.jpg')  then
  begin
    ppImage5.Visible := True;
    ppImage5.Picture.LoadFromFile(xCaminhoImagens+'\logo.jpg');
  end;


end;

procedure TfrmOrca.AtribuirLabels;
begin
{Atribui aos labels do relatório os dados da empresa devidamente formatados.}
  if xTipo = 1 then
    Begin

        plblFantasia.Caption := qrEmpresa.FieldByName(xIDCliente).AsString;
        plblEnderecoCabecalho.Caption := qrEmpresa.FieldByName('ENDERECO').AsString + ', ' + qrEmpresa.FieldByName('NUMERO').AsString + ', ' +qrEmpresa.FieldByName('BAIRRO').AsString + ', ' +
                          qrEmpresa.FieldByName('CIDADE').AsString + '/' + qrEmpresa.FieldByName('ESTADO').AsString +
                          iif(qrEmpresa.FieldByName('CEP').AsString <> '',' - CEP ' + qrEmpresa.FieldByName('CEP').AsString,'') ;

      plblCNPJINSC.Caption := 'CNPJ ' + qrEmpresa.FieldByName('CGC').AsString + ' INSC. EST. ' + qrEmpresa.FieldByName('INSC').AsString;

      plblFonesMail.Caption := 'Fone: '+ qrEmpresa.FieldByName('FONE').AsString + iif(qrEmpresa.FieldByName('FAX').AsString <> '',' / FAX: ' + qrEmpresa.FieldByName('FAX').AsString,'')
                           + iif(qrEmpresa.FieldByName('E_MAIL').AsString <> '',' / ' + qrEmpresa.FieldByName('E_MAIL').AsString,'');

      plblLocalData.Caption := qrEmpresa.FieldByName('CIDADE').AsString + ', ' + FormatDateTime('dddddd', Now) + '.';

      plblEndereco.Caption := qrOrcamento.FieldByName('ENDERECO').AsString + ', ' +
      qrOrcamento.FieldByName('CIDADE').AsString + '/' +
      qrOrcamento.FieldByName('ESTADO').AsString;
    end
  else if xTipo = 2 then // O.S.
    begin
      ppLabel32.Caption := qrEmpresa.FieldByName(xIDCliente).AsString;

      ppLabel33.Caption := qrEmpresa.FieldByName('ENDERECO').AsString + ', ' + qrEmpresa.FieldByName('NUMERO').AsString + ', ' +qrEmpresa.FieldByName('BAIRRO').AsString + ', ' +
                          qrEmpresa.FieldByName('CIDADE').AsString + '/' + qrEmpresa.FieldByName('ESTADO').AsString +
                          iif(qrEmpresa.FieldByName('CEP').AsString <> '',' - CEP ' + qrEmpresa.FieldByName('CEP').AsString,'') ;

      ppLabel34.Caption := 'CNPJ ' + qrEmpresa.FieldByName('CGC').AsString + ' INSC. EST. ' + qrEmpresa.FieldByName('INSC').AsString;

      ppLabel35.Caption := 'Fone: '+ qrEmpresa.FieldByName('FONE').AsString + iif(qrEmpresa.FieldByName('FAX').AsString <> '',' / FAX: ' + qrEmpresa.FieldByName('FAX').AsString,'')
                           + iif(qrEmpresa.FieldByName('E_MAIL').AsString <> '',' / ' + qrEmpresa.FieldByName('E_MAIL').AsString,'');
      if Assigned(ppMSG)then
        ppMSG.Lines.Add(xMsgOS);

    end
  else if xTipo = 3 then // Venda
    begin
      ppLabel52.Caption := qrEmpresa.FieldByName(xIDCliente).AsString;

      ppLabel53.Caption := qrEmpresa.FieldByName('ENDERECO').AsString + ', ' + qrEmpresa.FieldByName('NUMERO').AsString + ', ' +qrEmpresa.FieldByName('BAIRRO').AsString + ', ' +
                          qrEmpresa.FieldByName('CIDADE').AsString + '/' + qrEmpresa.FieldByName('ESTADO').AsString +
                          iif(qrEmpresa.FieldByName('CEP').AsString <> '',' - CEP ' + qrEmpresa.FieldByName('CEP').AsString,'') ;

      ppLabel54.Caption := 'CNPJ ' + qrEmpresa.FieldByName('CGC').AsString + ' INSC. EST. ' + qrEmpresa.FieldByName('INSC').AsString;

      ppLabel55.Caption := 'Fone: '+ qrEmpresa.FieldByName('FONE').AsString + iif(qrEmpresa.FieldByName('FAX').AsString <> '',' / FAX: ' + qrEmpresa.FieldByName('FAX').AsString,'')
                           + iif(qrEmpresa.FieldByName('E_MAIL').AsString <> '',' / ' + qrEmpresa.FieldByName('E_MAIL').AsString,'');


    end;
end;

procedure TfrmOrca.cbModelosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  zArq : string;
begin
  if xTipo = 1 then // Orçamento
    Begin
     { zArq := ExtractFilePath(Application.ExeName)+ 'Modelos\Orcamento\'+ cbModelos.Text;
      if  (Key = VK_RETURN ) and (FileExists(zArq))  then
        begin
          rpOrcamento.Template.FileName := zArq;
          rpOrcamento.Template.LoadFromFile;
          AtribuirLabels;
          AtribuirImg_Orcamento;
          rpOrcamento.Print;
        end; }
     // PngBitBtn1.OnClick(Self);
    end
  else if xTipo = 2 then // OS
    begin
     { zArq := ExtractFilePath(Application.ExeName)+ 'Modelos\OS\'+ cbModelos.Text;
      if  (Key = VK_RETURN ) and (FileExists(zArq))  then
        begin
          rpOS.Template.FileName := zArq;
          rpOS.Template.LoadFromFile;
          AtribuirLabels;
          AtribuirImg_OS;
          rpOS.Print;
        end;}

      //PngBitBtn1.OnClick(Self);
    end;
end;

procedure TfrmOrca.ConfiguraReport(pReport: TppReport);
function RestauraNomeArq(pTexto : String) : String;
   begin
      pTexto := StringReplace(pTexto, '/', '_',[rfReplaceAll]);
      pTexto := StringReplace(pTexto, '\', '_',[rfReplaceAll]);
      pTexto := StringReplace(pTexto, '.', '_',[rfReplaceAll]);
      pTexto := StringReplace(pTexto, ':', '_',[rfReplaceAll]);
      pTexto := StringReplace(pTexto, '*', '_',[rfReplaceAll]);
      pTexto := StringReplace(pTexto, '|', '_',[rfReplaceAll]);
      pTexto := StringReplace(pTexto, '?', '_',[rfReplaceAll]);
      if pTexto = '' then
         Result := 'Arquivo1'
      else
         Result := pTexto;
   end;
begin
  pReport.AllowPrintToFile := True;
  pReport.TextFileName     := IncludeTrailingPathDelimiter(xCaminhoSalvar) + RestauraNomeArq(pReport.PrinterSetup.DocumentName);
end;



procedure TfrmOrca.CriarINI;
{*
 Cria o arquivo dlls.ini que guarda informações usadas por todos os projetos de
 DLLs como o caminho para o diretório do SIAC onde estão os arquivos DBF.
}
Var
   zArq : TIniFile;
Begin
   zArq := TIniFile.Create(ExtractFilePath(Application.ExeName)+'dlls.ini');
   zArq.WriteString('Config','CaminhoBD','');
   zArq.WriteString('Config','CampoCabecalho','RAZAOSOC');
   zArq.WriteString('Config','CaminhoSalvar','c:\temp');
   zArq.WriteString('Config','MensagemOS','');
   //zArq.WriteString('Config','Visualizar','S');


   zArq.Free;
end;

function TfrmOrca.ExisteCampo(pTabela,pCampo: string): Boolean;


begin
  ListBox1.Items.Clear;
  Result := False;
  tbAux.Close;
  tbAux.TableName := pTabela;
  tbAux.Open;
  tbAux.GetFieldNames(ListBox1.Items);
  Result := ListBox1.Items.IndexOf(pCampo)>= 0 ;
  ListBox1.Items.Clear;

  qrAux.Close;

end;

procedure TfrmOrca.Financeiro(pEmpresa, pNota, pSerie, pTipo: String);
begin
 //=====================================================================
 // A VISTA
 //=====================================================================

  vtFinaceiro.Close;
  vtFinaceiro.Open;
  vtFinaceiro.Clear;
  qrAux.Close;
  qrAux.SQL.Clear;
  qrAux.SQL.Add('SELECT NUMDOC,FDATA,VALOR FROM CM');
  qrAux.SQL.Add('WHERE CODEMP=' + #39+ pEmpresa + #39 );
  qrAux.SQL.Add( ' AND NUMDOC=' + #39+ pNota+ #39);
  qrAux.SQL.Add( ' AND SERIE=' + #39+ 'V'+ #39);
  qrAux.SQL.Add( ' AND TIPO_OP=' + #39+ 'V'+ #39);

  qrAux.Open;
  qrAux.First;
  while not qrAux.Eof   do
    Begin
      vtFinaceiro.Append;
      vtFinaceiroDOC.AsString         := qrAux.FieldByName('NUMDOC').AsString;
      vtFinaceiroVENCIMENTO.AsString  := qrAux.FieldByName('FDATA').AsString;
      vtFinaceiroVALOR.AsFloat        :=qrAux.FieldByName('VALOR').AsFloat ;
      vtFinaceiroTIPO.AsString        := 'AV';
      vtFinaceiro.Post;
      qrAux.Next;
    End;
  qrAux.Close;
   //=====================================================================
 // A PRAZO
 //=====================================================================


  qrAux.Close;
  qrAux.SQL.Clear;
  qrAux.SQL.Add('SELECT NUMERO_DOC,VENCIMENTO,VALOR FROM CR');
  qrAux.SQL.Add('WHERE CODEMP=' + #39+ pEmpresa + #39 );
  qrAux.SQL.Add( ' AND NUMERO_DOC LIKE' + #39+ pNota+ '%'+ #39);
  qrAux.SQL.Add( ' AND SERIE=' + #39+ 'U'+ #39);
  qrAux.SQL.Add( ' AND TIPO_OP=' + #39+'S' + #39);

  qrAux.Open;
  qrAux.First;
  while not qrAux.Eof   do
    Begin
      vtFinaceiro.Append;
      vtFinaceiroDOC.AsString         := qrAux.FieldByName('NUMERO_DOC').AsString;
      vtFinaceiroVENCIMENTO.AsString  := qrAux.FieldByName('VENCIMENTO').AsString;
      vtFinaceiroVALOR.AsFloat        :=qrAux.FieldByName('VALOR').AsFloat ;
      vtFinaceiroTIPO.AsString        := 'AP';
      vtFinaceiro.Post;
      qrAux.Next;
    End;
  qrAux.Close;
 //=====================================================================
 // DUPLICATAS
 //=====================================================================

  qrAux.Close;
  qrAux.SQL.Clear;
  qrAux.SQL.Add('SELECT NUMERO_DOC,VENCIMENTO,VALOR FROM DU');
  qrAux.SQL.Add('WHERE CODEMP=' + #39+ pEmpresa + #39 );
  qrAux.SQL.Add( ' AND NUMERO_DOC LIKE' + #39+ pNota+ '%'+ #39);
  qrAux.SQL.Add( ' AND SERIE=' + #39+ pSerie+ #39);
  //qrAux.SQL.Add( ' AND TIPO_OP=' + #39+ pTipo+ #39);

  qrAux.Open;
  qrAux.First;
  while not qrAux.Eof   do
    Begin
      vtFinaceiro.Append;
      vtFinaceiroDOC.AsString         := qrAux.FieldByName('NUMERO_DOC').AsString;
      vtFinaceiroVENCIMENTO.AsString  := qrAux.FieldByName('VENCIMENTO').AsString;
      vtFinaceiroVALOR.AsFloat        :=qrAux.FieldByName('VALOR').AsFloat ;
      vtFinaceiroTIPO.AsString        := 'DP';
      vtFinaceiro.Post;
      qrAux.Next;
    End;
  qrAux.Close;
 //=====================================================================
 // CHEQUES
 //=====================================================================

  qrAux.Close;
  qrAux.SQL.Clear;
  qrAux.SQL.Add('SELECT NUMDOC,APRESENTA,VALOR FROM CHEQUES');
  qrAux.SQL.Add('WHERE CODEMP=' + #39+ pEmpresa + #39 );
  qrAux.SQL.Add( ' AND NOTA_VENDA=' + #39+ pNota+ #39);
  //qrAux.SQL.Add( ' AND SERIE=' + #39+ pSerie+ #39);
  qrAux.SQL.Add( ' AND TIPO_OP=' + #39+ 'S'+ #39);

  qrAux.Open;
  qrAux.First;
  while not qrAux.Eof   do
    Begin
      vtFinaceiro.Append;
      vtFinaceiroDOC.AsString         := qrAux.FieldByName('NUMDOC').AsString;
      vtFinaceiroVENCIMENTO.AsString  := qrAux.FieldByName('APRESENTA').AsString;
      vtFinaceiroVALOR.AsFloat        :=qrAux.FieldByName('VALOR').AsFloat ;
      vtFinaceiroTIPO.AsString        := 'CH';
      vtFinaceiro.Post;
      qrAux.Next;
    End;
  qrAux.Close;
 //=====================================================================
 // A CARTAO DE CREDITO
 //=====================================================================

  qrAux.Close;
  qrAux.SQL.Clear;
  qrAux.SQL.Add('SELECT NUMERO_DOC,VENCIMENTO,VALOR FROM CARTAO');
  qrAux.SQL.Add('WHERE CODEMP=' + #39+ pEmpresa + #39 );
  qrAux.SQL.Add( ' AND NUMERO_DOC LIKE' + #39+ pNota+ '%'+ #39);
  qrAux.SQL.Add( ' AND SERIE=' + #39+ 'U'+ #39);
  qrAux.SQL.Add( ' AND TIPO_OP=' + #39+ '0'+ #39);

  qrAux.Open;
  qrAux.First;
  while not qrAux.Eof   do
    Begin
      vtFinaceiro.Append;
      vtFinaceiroDOC.AsString         := qrAux.FieldByName('NUMERO_DOC').AsString;
      vtFinaceiroVENCIMENTO.AsString  := qrAux.FieldByName('VENCIMENTO').AsString;
      vtFinaceiroVALOR.AsFloat        :=qrAux.FieldByName('VALOR').AsFloat ;
      vtFinaceiroTIPO.AsString        := 'CA';
      vtFinaceiro.Post;
      qrAux.Next;
    End;
  qrAux.Close;
 //=====================================================================
 // CARTAO DE DEBITO
 //=====================================================================

  qrAux.Close;
  qrAux.SQL.Clear;
  qrAux.SQL.Add('SELECT NUMERO_DOC,VENCIMENTO,VALOR FROM CARTAO');
  qrAux.SQL.Add('WHERE CODEMP=' + #39+ pEmpresa + #39 );
  qrAux.SQL.Add( ' AND NUMERO_DOC LIKE' + #39+ pNota+ '%'+ #39);
  qrAux.SQL.Add( ' AND SERIE=' + #39+ 'U'+ #39);
  qrAux.SQL.Add( ' AND TIPO_OP=' + #39+ '9'+ #39);

  qrAux.Open;
  qrAux.First;
  while not qrAux.Eof   do
    Begin
      vtFinaceiro.Append;
      vtFinaceiroDOC.AsString         := qrAux.FieldByName('NUMERO_DOC').AsString;
      vtFinaceiroVENCIMENTO.AsString  := qrAux.FieldByName('VENCIMENTO').AsString;
      vtFinaceiroVALOR.AsFloat        :=qrAux.FieldByName('VALOR').AsFloat ;
      vtFinaceiroTIPO.AsString        := 'CD';
      vtFinaceiro.Post;
      qrAux.Next;
    End;
  qrAux.Close;




end;

procedure TfrmOrca.FormClose(Sender: TObject; var Action: TCloseAction);

begin
   SetaDiretorio;
   Action := caFree;
end;

procedure TfrmOrca.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := True;
end;

procedure TfrmOrca.FormCreate(Sender: TObject);
begin
  Self.Height := 112;
end;

procedure TfrmOrca.FormShow(Sender: TObject);
{*------------------------------------------------------------------------------
 Neste evento é iniciado o processamento do relatório de orçamento, fazendo
 com que o formulário em si não fique visível ao usuário. Somente o "preview" do
 orçamento é mostrado na tela e, ao fechar esse preview, o form é fechado.
-------------------------------------------------------------------------------}
Var
  zArq : TIniFile;
  zAlias,zArq2,zCaminho: String;
  zF : TextFile;
  zLinha,zTitulo : string;
  zCont,zTamanho,zComp,zCont2 : Integer;
  zLista : TStringList;
begin

  {Verifica se o ini com o caminho do banco de dados existe e se está devidamente
   configurado.}

  if FileExists('C:\dlls.ini') then
    zCaminho := 'c:\dlls.ini'
  else
    zCaminho :=  ExtractFilePath(Application.ExeName)+'dlls.ini';

 if xTipo <> 4 then
   Begin

      if not FileExists(zCaminho) then
        CriarIni
      else
       begin

         zArq := TIniFile.Create(zCaminho);
         zAlias     := zArq.ReadString('Config','CaminhoBD','');
         xIDCliente := zArq.ReadString('Config','CampoCabecalho','RAZAOSOC');
         xCaminhoSalvar  := zArq.ReadString('Config','CaminhoSalvar','c:\Temp');
         xMsgOS          := zArq.ReadString('Config','MensagemOS','');
         //xVisualizar     := zArq.ReadString('Config','Visualizar','');

         if Trim(zAlias)= '' then
           Begin
             Application.MessageBox('Arquivo de Configuração dlls.ini (CaminhoBD) não está configurado!','Atenção',MB_OK + MB_ICONINFORMATION);
             Exit;
           end;

         {Caso esteja corretamente configurado, atribui o caminho do banco de dados
          para todas as tabelas do projeto.}
         qrOrcamento.Close;
         qrOrcamento.DatabaseName   := zAlias;
         qrIOrca.Close;
         qrIOrca.DatabaseName       := zAlias;
         qrEmpresa.Close;
         qrEmpresa.DatabaseName     := zAlias;
         qrOs.Close;
         qrOs.DatabaseName          := zAlias;
         qrIOS.Close;
         qrIOS.DatabaseName         := zAlias;
         qrAux.Close;
         qrAux.DatabaseName         := zAlias;
         tbAux.Close;
         tbAux.DatabaseName         := zAlias ;
         zArq.Free;
         qrVenda.Close;
         qrVenda.DatabaseName       := zAlias;
         qrIVenda.Close;
         qrIVenda.DatabaseName      := zAlias;
       end;
   end;
  {Atribui o caminho da logomarca.}
  xCaminhoImagens := ExtractFilePath(Application.ExeName)+'imagens';

  {A partir do código da empresa passado como parâmetro da função, busca-se os
   dados da empresa para constituir o cabeçalho do orçamento.}
  //EMPRESAS.DBF
  if xTipo <> 4 then
    begin
      try

        qrEmpresa.Close;
        qrEmpresa.ParamByName('PCODIGO').AsString := pEmpresa;
        qrEmpresa.Open;
      except
        {Nos pontos mais críticos, como abertura de tabelas, execução de queries, etc.,
         são feitos tratamentos para facilitar a identificação dos erros, caso ocorram.}
        on E: Exception do
        begin
          ShowMessage('Não foi possível acessar os dados da empresa...' +#13+#10+
                      'Classe: ' + E.ClassName +#13+#10+
                      'Erro: ' + E.Message);
        end;
      end;
    end;



  {Também executa as queries que irão recuperar os dados do orçamento/OS/Venda que será
   impresso.}

  //ORCA.DBF

  if xTipo = 1 then // Orcamento
    Begin

      try
        qrOrcamento.Close;
        qrOrcamento.ParamByName('PNOTA').AsString := pNota;
        qrOrcamento.Open;
      except
        on E: Exception do
        begin
          ShowMessage('Não foi possível acessar os dados do orçamento...' +#13+#10+
                      'Classe: ' + E.ClassName +#13+#10+
                      'Erro: ' + E.Message);
        end;
      end;

      //I_ORCA.DBF
      try
        qrIOrca.Close;

        qrIOrca.SQL.Clear;

        qrIOrca.SQL.Add('SELECT I_ORCA.NOTA, I_ORCA.PRODUTO, I_ORCA.CODITEM,');
        qrIOrca.SQL.Add('I_ORCA.DESC01,I_ORCA.DESC02, I_ORCA.DESC03,');
        qrIOrca.SQL.Add('(I_ORCA.DESC01 + '''' + I_ORCA.DESC02 + '''' + I_ORCA.DESC03) AS DESCRICAO,');
        qrIOrca.SQL.Add('I_ORCA.UNIDADE, I_ORCA.QUANT, I_ORCA.PRECO, (I_ORCA.QUANT * I_ORCA.PRECO) AS TOTPROD,');
        qrIOrca.SQL.Add('I_ORCA.OPCIONAL, I_ORCA.MARCA, I_ORCA.TIPO, I_ORCA.DESCONTO,');
        qrIOrca.SQL.Add('((I_ORCA.QUANT * I_ORCA.PRECO) * (I_ORCA.DESCONTO / 100)) AS DESCLIQ,');
        qrIOrca.SQL.Add('((I_ORCA.QUANT * I_ORCA.PRECO) - ((I_ORCA.QUANT * I_ORCA.PRECO) * (I_ORCA.DESCONTO / 100))) AS TOTPRODE');
        qrIOrca.SQL.Add('FROM I_ORCA');
        qrIOrca.SQL.Add('WHERE I_ORCA.NOTA =' + #39 + pNota + #39);


        qrIOrca.Open;
      except
        on E: Exception do
        begin
          ShowMessage('Não foi possível acessar os itens do orçamento...' +#13+#10+
                      'Classe: ' + E.ClassName +#13+#10+
                      'Erro: ' + E.Message);
        end;
      end;

      {Imprime o relatório com o orçamento (preview na tela).}


      ListarArquivos(ExtractFilePath(Application.ExeName)+ 'Modelos\Orcamento',False);

      if cbModelos.Items.Count > 1 then
        begin
          cbModelos.Visible := True;
          cbModelos.ItemIndex := 0;
          cbModelos.SetFocus;
          Label1.Visible := True ;

        end
      else
        begin

          cbModelos.ItemIndex := 0;
          cbModelos.Visible := false;
          Label1.Visible := False ;
          //Timer1.Enabled := True;
          zArq2 := ExtractFilePath(Application.ExeName)+ 'Modelos\Orcamento\'+ cbModelos.Text;
         if  (FileExists(zArq2))  then
           begin
             rpOrcamento.Template.FileName := zArq2;
             rpOrcamento.Template.LoadFromFile;
             AtribuirLabels;
             AtribuirImg_Orcamento;
             rpOrcamento.PrinterSetup.DocumentName := 'ORCAMENTO_'+ qrOrcamento.FieldByName('NOTA').AsString;
             ConfiguraReport(rpOrcamento);
             if (AnsiUpperCase(xVisualizar) ='S') then
               rpOrcamento.DeviceType := 'Screen'
             else
               Begin
                 rpOrcamento.DeviceType := 'Printer';
                 rpOrcamento.ShowPrintDialog := False;
               end;

             rpOrcamento.Print;
             SetaDiretorio;
             PostMessage(frmOrca.Handle, WM_CLOSE, 0, 0)

           end


        end;

    end
  else if xTipo =  2  then // OS
    begin
      try
        qrOs.Close;
        {Ocorreu problema em alguns bancos ao passar o parâmetro separadamente
         através de um ParamByName. Agora os parâmetros são colocados junto à
         montagem da Query. E porquê acontece isso? Boa pergunta... :) }
//        qrOs.ParamByName('PNOTA').AsString := pNota;
//        qrOs.ParamByName('PEMPRESA').AsString := pEmpresa ;
        qrOs.SQL.Clear;
        qrOs.SQL.Add('SELECT DISTINCT S1.*,CLIENTES.RAZAOSOC AS RAZAO_CLI,CLIENTES.ENDERECO AS ENDE, '+
                     'CLIENTES.BAIRRO AS BAIRRO_CLI, CLIENTES.CIDADE AS CIDADE_CLI,CLIENTES.ESTADO AS ESTADO_CLI,'+
                     'CLIENTES.CEP AS CEP_CLI,CLIENTES.CGC AS CGC_CLI,CLIENTES.INSC AS INSC_CLI,CLIENTES.TELEFONE1 AS FONE1_CLI,' +
                     'CLIENTES.TELEFONE2 AS FONE2_CLI,S1.MENSA_PAD1+'' ''+ S1.MENSA_PAD2+  '' ''+ S1.MENSA_PAD3 + '' ''+ S1.MENSA_PAD4 AS MENSA_PAD,VENDEDOR.DESCRICAO ' +
                     {'(SELECT DISTINCT VENDEDOR.DESCRICAO FROM VENDEDOR  WHERE VENDEDOR.CODEMP=S1.CODEMP AND VENDEDOR.CODIGO=S1.RECEPCAO) AS NOME_RECEPCAO, '+
                     '(SELECT DISTINCT CLIENTES.RAZAOSOC FROM CLIENTES  WHERE CLIENTES.CODIGO=S1.CLIENTE) AS NOME_CLIENTE, '+
                     '(SELECT DISTINCT CLIENTES.ENDERECO FROM CLIENTES  WHERE CLIENTES.CODIGO=S1.CLIENTE) AS ENDERECO, '+
                     '(SELECT DISTINCT CLIENTES.BAIRRO FROM CLIENTES  WHERE CLIENTES.CODIGO=S1.CLIENTE) AS BAIRRO_CLIENTE, '+
                     '(SELECT DISTINCT CLIENTES.CIDADE FROM CLIENTES  WHERE CLIENTES.CODIGO=S1.CLIENTE) AS CIDADE_CLIENTE, '+
                     '(SELECT DISTINCT CLIENTES.ESTADO FROM CLIENTES  WHERE CLIENTES.CODIGO=S1.CLIENTE) AS ESTADO_CLIENTE, '+
                     '(SELECT DISTINCT CLIENTES.CEP FROM CLIENTES  WHERE CLIENTES.CODIGO=S1.CLIENTE) AS CEP_CLIENTE, '+
                     '(SELECT DISTINCT CLIENTES.CGC FROM CLIENTES  WHERE CLIENTES.CODIGO=S1.CLIENTE) AS CGC_CLIENTE, '+
                     '(SELECT DISTINCT CLIENTES.INSC FROM CLIENTES  WHERE CLIENTES.CODIGO=S1.CLIENTE) AS INSC_CLIENTE, '+
                     '(SELECT DISTINCT CLIENTES.TELEFONE1 FROM CLIENTES  WHERE CLIENTES.CODIGO=S1.CLIENTE) AS FONE1_CLIENTE, '+
                     '(SELECT DISTINCT CLIENTES.TELEFONE2 FROM CLIENTES  WHERE CLIENTES.CODIGO=S1.CLIENTE) AS FONE2_CLIENTE '+}
                     'FROM S1 LEFT JOIN CLIENTES ON S1.CLIENTE=CLIENTES.CODIGO '+
                     'LEFT JOIN VENDEDOR ON S1.CODEMP=VENDEDOR.CODEMP AND S1.RECEPCAO=VENDEDOR.CODIGO ' +
                     'WHERE (NOTA = ' + QuotedStr(pNota) + ') ' +
                     'AND (CODEMP = ' + QuotedStr(pEmpresa) + ') ');
        //QrOs.SQL.SaveToFile('C:\SQL.TXT') ;
        qrOs.Open;
      except
        on E: Exception do
        begin
          ShowMessage('Não foi possível acessar os dados da O.S. ...' +#13+#10+
                      'Classe: ' + E.ClassName +#13+#10+
                      'Erro: ' + E.Message);
        end;
      end;


      try
        qrIOs.Close;
        qrIOS.SQL.Clear;
        qrIOS.SQL.Add('SELECT S2.SEQUENCIA,S2.CODEMP,S2.CODITEM + '' - ''+ S2.DESC01 + ''''+  S2.DESC02 AS DESCRICAO,');
        qrIOS.SQL.Add('S2.UNIDADE,S2.QUANT,S2.PRECO,S2.TEC_01,S2.TEC_02,S2.TEC_03,S2.TEC_04,S2.TEC_05,');
        if ExisteCampo('S2.DBF','VENDEDOR')then
        qrIOS.SQL.Add('S2.VENDEDOR,');
        //qrIOS.SQL.Add('(SELECT DISTINCT DESCRICAO FROM VENDEDOR WHERE VENDEDOR.CODEMP=S2.CODEMP AND VENDEDOR.CODIGO=S2.TEC_03) AS N_TEC_03,');
        //qrIOS.SQL.Add('(SELECT DISTINCT DESCRICAO FROM VENDEDOR WHERE VENDEDOR.CODEMP=S2.CODEMP AND VENDEDOR.CODIGO=S2.TEC_04) AS N_TEC_04,');
        //qrIOS.SQL.Add('(SELECT DISTINCT DESCRICAO FROM VENDEDOR WHERE VENDEDOR.CODEMP=S2.CODEMP AND VENDEDOR.CODIGO=S2.TEC_05) AS N_TEC_05,');
        qrIOS.SQL.Add('QUANT * PRECO AS TOTAL,S2.CODITEM,');
        qrIOS.SQL.Add('PR.GRUPO FROM S2 LEFT JOIN PR ON S2.CODEMP = PR.EMPRESA AND S2.CODITEM=PR.CODITEM');

        qrIOS.SQL.Add(' WHERE NOTA=' + #39 + pNota + #39 );
        qrIOS.SQL.Add(' AND CODEMP=' + #39 + pEmpresa + #39);
       // qrIOS.SQL.SaveToFile('C:\SQL.TXT');
        qrIOS.Open;

        vtIOs.Close;
        vtIOs.Open;
        qrIOS.First;

        while not qrIOS.Eof do

          begin
            vtIOs.Append;
            vtIOsSEQUENCIA.AsString := qrIOS.FieldByName('SEQUENCIA').AsString;
            vtIOsDESCRICAO.AsString := qrIOS.FieldByName('DESCRICAO').AsString;
            vtIOsUNIDADE.AsString   := qrIOS.FieldByName('UNIDADE').AsString;
            vtIOsTECNICOS.AsString  := qrIOS.FieldByName('TECNICOS').AsString;
            vtIOsQUANT.AsFloat      := qrIOS.FieldByName('QUANT').AsFloat;
            vtIOsPRECO.AsFloat      := qrIOS.FieldByName('PRECO').AsFloat;
            vtIOsTOTAL.AsFloat      := qrIOS.FieldByName('TOTAL').AsFloat;

            if (Trim(qrIOS.FieldByName('CODITEM').AsString) <>'') then
              begin
                if (Trim(qrIOS.FieldByName('GRUPO').AsString) <>'') then
                  Begin
                    qrAux.Close;
                    qrAux.SQL.Clear;
                    qrAux.SQL.Add('SELECT SERV_PROD FROM GRUPO WHERE CODIGO=' + #39 + qrIOS.FieldByName('GRUPO').AsString +#39 );
                    qrAux.Open;
                    if qrAux.FieldByName('SERV_PROD').AsString ='S'then
                     vtIOsTIPO.AsString    := 'S'
                    else
                       vtIOsTIPO.AsString  := 'P';
                  end
                else
                  vtIOsTIPO.AsString  := 'P';

               end

            else
              vtIOsTIPO.AsString  :='S';

            vtIOs.Post;

            qrIOS.Next;
          end;
          if  qrIOS.IsEmpty then
            begin
              for zCont2 := 1 to 20 do
                begin
                  vtIOs.Append;
                  vtIOsSEQUENCIA.AsString :=''; //IntToStr(zCont2);
                  vtIOsDESCRICAO.AsString := '';
                  vtIOsUNIDADE.AsString   := '';
                  vtIOsTECNICOS.AsString  := '';
                  vtIOs.Post;

                end;

            end;

        vtIOs.Close;
        vtIOs.IndexFieldNames := 'TIPO;SEQUENCIA ASC';
        vtIOs.Open;

        Financeiro(pEmpresa,pNota,'S','F');

      except
        on E: Exception do
        begin
          ShowMessage('Não foi possível acessar os itens da O.S. ...' +#13+#10+
                      'Classe: ' + E.ClassName +#13+#10+
                      'Erro: ' + E.Message);
        end;
      end;

      {Imprime o relatório com a O.S. (preview na tela).}

      ListarArquivos(ExtractFilePath(Application.ExeName)+ 'Modelos\OS',False);

      if cbModelos.Items.Count > 1 then
        begin
          cbModelos.Visible := True;
          cbModelos.ItemIndex := 0;
          cbModelos.SetFocus;
          Label1.Visible := True ;

        end
      else
        begin

          cbModelos.ItemIndex := 0;
          cbModelos.Visible := false;
          Label1.Visible := False ;
          zArq2 := ExtractFilePath(Application.ExeName)+ 'Modelos\OS\'+ cbModelos.Text;
          if  (FileExists(zArq2))  then
            begin
              rpOs.Template.FileName := zArq2;
              rpOS.Template.LoadFromFile;
              AtribuirLabels;
              AtribuirImg_OS ;
              rpOS.PrinterSetup.DocumentName := 'OS_'+ qrOs.FieldByName('NOTA').AsString;
              ConfiguraReport(rpOS);

              if (AnsiUpperCase(xVisualizar) ='S') then
               rpOS.DeviceType := 'Screen'
             else
               begin
                 rpOS.DeviceType := 'Printer';
                 rpOS.ShowPrintDialog := False;
               end;

              rpOS.Print;
              SetaDiretorio;
              PostMessage(frmOrca.Handle, WM_CLOSE, 0, 0) ;

            end;

        end;

    end
   else if xTipo =  3  then // VENDA
    begin
      try
        qrVenda.Close;
        {Ocorreu problema em alguns bancos ao passar o parâmetro separadamente
         através de um ParamByName. Agora os parâmetros são colocados junto à
         montagem da Query. E porquê acontece isso? Boa pergunta... :) }
//        qrOs.ParamByName('PNOTA').AsString := pNota;
//        qrOs.ParamByName('PEMPRESA').AsString := pEmpresa ;
        qrvENDA.SQL.Clear;

        qrVenda.SQL.Add('SELECT PV.*,VENDEDOR.DESCRICAO AS NOMEVEND,CLIENTES.RAZAOSOC AS NOMECLI,');
        qrVenda.SQL.Add('CLIENTES.ENDERECO AS ENDCLI, CLIENTES.BAIRRO AS BAICLI, CLIENTES.CIDADE AS CIDCLI,');
        qrVenda.SQL.Add('CLIENTES.ESTADO AS ESTADOCLI,CLIENTES.RAZAOSOC AS RAZAOCLI,CLIENTES.FANTASIA AS FANTACLI,CLIENTES.CEP AS CEPCLI,');
        qrVenda.SQL.Add('CLIENTES.CGC AS CGCCLI,CLIENTES.INSC AS INSCCLI, CLIENTES.TELEFONE1 AS TEL1CLI,');
        qrVenda.SQL.Add('CLIENTES.TELEFONE2 AS TEL2CLI,PV.CONDPAG');
        qrVenda.SQL.Add(' FROM PV LEFT JOIN VENDEDOR ON PV.CODEMP=VENDEDOR.CODEMP AND PV.VENDEDOR=VENDEDOR.CODIGO');
        qrVenda.SQL.Add(' LEFT JOIN CLIENTES ON PV.CODCLI=CLIENTES.CODIGO  ');
        qrVenda.SQL.Add('LEFT JOIN CONDPAG ON PV.CONDPAG=CONDPAG.CODIGO ');
        qrVenda.SQL.Add(' WHERE PV.NOTA =' + #39  +  pNota + #39);
        qrVenda.SQL.Add('AND  PV.CODEMP ='  + #39  + pEmpresa + #39);
        //qrVenda.SQL.SaveToFile ('c:\venda.txt') ;
        qrVenda.Open;
      except
        on E: Exception do
        begin
          ShowMessage('Não foi possível acessar os dados da Venda ...' +#13+#10+
                      'Classe: ' + E.ClassName +#13+#10+
                      'Erro: ' + E.Message);
        end;
      end;


      try
        qrIVenda.Close;
        qrIVenda.SQL.Clear;

        qrIVenda.SQL.Add('SELECT IV. CODITEM,IV.QUANT,IV.PRECO, IV.QUANT * IV.PRECO AS TOTAL,PR.DESCRICAO');
        qrIVenda.SQL.Add('FROM IV ');
        qrIVenda.SQL.Add('INNER JOIN PR ON IV.CODITEM=PR.CODITEM AND IV.CODEMP=PR.EMPRESA  ');

        qrIVenda.SQL.Add('WHERE NOTA=' + #39 + pNota + #39 );
        qrIVenda.SQL.Add('AND CODEMP=' + #39 + pEmpresa + #39);
        //qrIVenda.SQL.SaveToFile('C:\SQL.TXT');
        qrIVenda.Open;
      except
        on E: Exception do
        begin
          ShowMessage('Não foi possível acessar os itens da Venda ...' +#13+#10+
                      'Classe: ' + E.ClassName +#13+#10+
                      'Erro: ' + E.Message);
        end;
      end;

      {Imprime o relatório com a Venda (preview na tela).}

      Financeiro(pEmpresa,pNota,'U','S');

      ListarArquivos(ExtractFilePath(Application.ExeName)+ 'Modelos\Venda',False);

      if cbModelos.Items.Count > 1 then
        begin
          cbModelos.Visible := True;
          cbModelos.ItemIndex := 0;
          cbModelos.SetFocus;
          Label1.Visible := True ;

        end
      else
        begin

          cbModelos.ItemIndex := 0;
          cbModelos.Visible := false;
          Label1.Visible := False ;
          zArq2 := ExtractFilePath(Application.ExeName)+ 'Modelos\Venda\'+ cbModelos.Text;
          if  (FileExists(zArq2))  then
            begin
              rpVenda.Template.FileName := zArq2;
              rpVenda.Template.LoadFromFile;
              AtribuirLabels;
              AtribuirImg_Venda ;
              rpVenda.PrinterSetup.DocumentName := 'Venda_'+ qrVenda.FieldByName('NOTA').AsString;
              ConfiguraReport(rpVenda);
              if (AnsiUpperCase(xVisualizar) ='S') then
               rpVenda.DeviceType := 'Screen'
              else
               begin
                 rpVenda.DeviceType := 'Printer';
                 rpVenda.ShowPrintDialog := False;
               end;

              rpVenda.Print;
              SetaDiretorio;
              PostMessage(frmOrca.Handle, WM_CLOSE, 0, 0) ;

            end;

        end;

    end

   else if xTipo = 4 then
     begin
       Label1.Visible      := False;
       cbModelos.Visible   := False;
       PngBitBtn1.Visible  := False;
       if xModelo = '2' then  /// Impressão Mini
         begin
           AtribuirImg_Orcamento;
           ppRichText2.Font.Name := 'Lucida Console';
           ppRichText2.LoadFromFile(xArquivo);
           rpRTFMini.PrinterSetup.DocumentName := 'Orcamento' ;
           ConfiguraReport(rpRTFMini);
           rpRTFMini.PrintReport;
           SetaDiretorio2;
         end
       else // impressao Normal
         Begin

           zCont := 0;
           zComp := 114;
           AssignFile(zF,xArquivo);
           Reset(zF);
           while not Eof(zF)do
             begin
               Readln(zF,zLinha);
               if( (Copy(zLinha,1,7)= 'TAMANHO') )   then
                 begin
                   zTamanho := StrToInt(Copy(zLinha,9,2 ));
                   if zTamanho = 6  then
                     Begin
                       zTamanho := 6 ; //7
                       zComp    := 156;
                     End
                   else if (zTamanho = 10) OR (zTamanho=11) then
                     Begin
                        zTamanho := 10; //12
                        zComp    := 95; //40
                     End
                   else if zTamanho = 9  then
                     begin
                       zComp := 96;
                     end;
                 end;

               if (Copy(zLinha,1,5)= 'EJECT')   then
                 begin
                   JvRichEdit1.Lines.Add(#12);

                 end;

               if (Copy(zLinha,1,7)<> 'TAMANHO') and (Copy(zLinha,1,5) <> 'EJECT') then
                 Begin
                   JvRichEdit1.SelAttributes.Name := 'Lucida Console';
                   JvRichEdit1.SelAttributes.Size := zTamanho;
                   JvRichEdit1.Lines.Add(Copy(zLinha,1,zComp));

                 End;


             end;
           CloseFile(zF);
           zTitulo := Trim(JvRichEdit1.Lines.Strings[0]);
           JvRichEdit1.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+ 'Temp.rtf');
           ppRichText1.LoadFromFile(ExtractFilePath(Application.ExeName)+ 'Temp.rtf');

           rpRTF.PrinterSetup.DocumentName := zTitulo ;
           ConfiguraReport(rpRTF);
           rpRTF.PrintReport;
           SetaDiretorio2;
         End;
       PostMessage(frmOrca.Handle, WM_CLOSE, 0, 0);

     end;

end;

function TfrmOrca.IIf(pCond: Boolean; pTrue, pFalse: Variant): Variant;
{*------------------------------------------------------------------------------
 Função usada para simular o If ternário de linguagens como C/C++ para facilitar
 o uso de condições simples; que possuem um comando para cada alternativa.

 @param pCond Recebe a condição que retorna um tipo Booleano.
 @param pTrue Comando a ser executado caso a condição seja verdadeira.
 @param pFalse Comando a ser executado caso a condição seja falsa.
 @return True para condição verdadeira, False para condição falsa.
-------------------------------------------------------------------------------}
begin
   if pCond then
     Result := pTrue
   else
     Result := pFalse;
end;

procedure TfrmOrca.ListarArquivos(Diretorio: string; Sub: Boolean);
var
  zF: TSearchRec;
  zRet: Integer;
  zTempNome: string;
begin
  cbModelos.Clear;
  zRet := FindFirst(Diretorio+'\*.rtm', faAnyFile, zF);
  try
    while zRet = 0 do
      begin

        if TemAtributo(zF.Attr, faDirectory) then
          begin
            if (zF.Name <> '.') And (zF.Name <> '..') then
              if Sub = True then
                Begin
                  zTempNome := Diretorio+'\' + zF.Name;
                  ListarArquivos(zTempNome, True);
                end;
          end
        else
         begin
          cbModelos.Items.Add(zF.Name);
         end;
        zRet := FindNext(zF);

      end;

  finally
    begin
        FindClose(zF);
    end;
  end;
end;
procedure TfrmOrca.PngBitBtn1Click(Sender: TObject);
var
  zArq,zArqSalvar : string;
begin
  if xTipo = 1 then // Orçamento
    Begin
      zArq := ExtractFilePath(Application.ExeName)+ 'Modelos\Orcamento\'+ cbModelos.Text;
      if (FileExists(zArq))  then
        begin
          rpOrcamento.Template.FileName := zArq;
          rpOrcamento.Template.LoadFromFile;
          AtribuirLabels;
          AtribuirImg_Orcamento;
          rpOrcamento.PrinterSetup.DocumentName := 'ORCAMENTO_'+ qrOrcamento.FieldByName('NOTA').AsString;
          ConfiguraReport(rpOrcamento);
          if (AnsiUpperCase(xVisualizar) ='S') then
            rpOrcamento.DeviceType := 'Screen'
          else
            begin
              rpOrcamento.DeviceType := 'Printer';
              rpOrcamento.ShowPrintDialog := False;
            end;
          rpOrcamento.Print;
          frmOrca.Close;

        end;
    end
  else if xTipo = 2 then // OS
    begin
      zArq := ExtractFilePath(Application.ExeName)+ 'Modelos\OS\'+ cbModelos.Text;
      if  (FileExists(zArq))  then
        begin
          rpOS.Template.FileName := zArq;
          rpOS.Template.LoadFromFile;
          AtribuirLabels;
          AtribuirImg_OS ;
          rpOS.PrinterSetup.DocumentName := 'OS_'+ qrOs.FieldByName('NOTA').AsString;
          ConfiguraReport(rpOS);
          if (AnsiUpperCase(xVisualizar) ='S') then
            rpOS.DeviceType := 'Screen'
          else
            begin
              rpOS.DeviceType := 'Printer';
              rpOS.ShowPrintDialog := False;
            end;

          rpOS.Print;
          frmOrca.Close;

        end;

    end
  else if xTipo = 3 then // Venda
    begin
      zArq := ExtractFilePath(Application.ExeName)+ 'Modelos\Venda\'+ cbModelos.Text;
      if  (FileExists(zArq))  then
        begin
           Financeiro(pEmpresa,pNota,'V','V');
          rpVenda.Template.FileName := zArq;
          rpVenda.Template.LoadFromFile;
          AtribuirLabels;
          AtribuirImg_Venda ;
          rpVenda.PrinterSetup.DocumentName := 'Venda_'+ qrVenda.FieldByName('NOTA').AsString;
          ConfiguraReport(rpVenda);
          if (AnsiUpperCase(xVisualizar) ='S') then
            rpVenda.DeviceType := 'Screen'
          else
            Begin
              rpVenda.DeviceType := 'Printer';
              rpVenda.ShowPrintDialog := False;
            End;

          rpVenda.Print;
          frmOrca.Close;

        end;

    end;
end;

procedure TfrmOrca.PngBitBtn2Click(Sender: TObject);
begin
  frmOrca.Close;
end;

procedure TfrmOrca.ppFooterBand2BeforePrint(Sender: TObject);
begin
   ppMSG.Visible :=Length(Trim(qrOs.FieldByName('DT_ENTREGA').AsString))> 4;
end;

procedure TfrmOrca.ppGroupHeaderBand1BeforeGenerate(Sender: TObject);
begin
  if  vtIOs.FieldByName('TIPO').AsString ='P' then
    ppLabel75.Caption := 'PRODUTOS'
  else
    ppLabel75.Caption := 'SERVIÇOS';

end;

procedure TfrmOrca.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  if  vtIOs.FieldByName('TIPO').AsString ='P' then
    ppLabel75.Caption := 'PEÇAS'
  else
    ppLabel75.Caption := 'SERVIÇOS';


end;

procedure TfrmOrca.ppHeaderBand1BeforePrint(Sender: TObject);
{*------------------------------------------------------------------------------
 Evento executado antes de iniciar a impressão do cabeçalho do relatório.
 Usado para atribuir o caminho da imagem de Logomarca ao ppImage1 ou ppImage2.
 ppImage1: logomarca reduzida, posicionada ao lado dos dados da empresa.
 ppImage2: logomarca ampliada por todo o cabeçalho. (quando o arquivo de imagem já
           contém todos os dados da empresa além da logomarca.)
 @param Sender Padrão TObject
-------------------------------------------------------------------------------}
begin
  {Caso exista o arquivo logo.jpg então é colocado a logomarca pequena ao lado
   das informações da empresa no cabeçalho do relatório. Caso exista o arquivo
   logoex.jpg, que é a imagem da logomarca já com as informações da empresa, ela
   é expandida por todo o cabeçalho.}

  if FileExists(xCaminhoImagens+'\logo.jpg')  then
  begin
    ppImage1.Visible := True;
    ppImage2.Visible := False;
    plblFantasia.Visible := True;
    plblEnderecoCabecalho.Visible := True;
    plblCNPJINSC.Visible := True;
    plblFonesMail.Visible := True;
    ppImage1.Picture.LoadFromFile(xCaminhoImagens+'\logo.jpg');
  end;

  if FileExists(xCaminhoImagens+'\logoex.jpg') then
  begin
    ppImage1.Visible := False;
    ppImage2.Visible := True;
    plblFantasia.Visible := False;
    plblEnderecoCabecalho.Visible := False;
    plblCNPJINSC.Visible := False;
    plblFonesMail.Visible := False;
    ppImage2.Picture.LoadFromFile(xCaminhoImagens+'\logoex.jpg');
  end;

  {Tentei somente trazer o ppImage2 para frente (BringToFront e BringToForward)
   mas não funcionou como deveria. Então resolvi ocultar os labels quando for
   a logomarca expandida.}
end;

procedure TfrmOrca.ppHeaderBand2BeforePrint(Sender: TObject);
{*------------------------------------------------------------------------------
 Evento executado antes de iniciar a impressão do cabeçalho do relatório.
 Usado para atribuir o caminho da imagem de Logomarca ao ppImage1 ou ppImage2.
 ppImage1: logomarca reduzida, posicionada ao lado dos dados da empresa.
 ppImage2: logomarca ampliada por todo o cabeçalho. (quando o arquivo de imagem já
           contém todos os dados da empresa além da logomarca.)
 @param Sender Padrão TObject
-------------------------------------------------------------------------------}
begin
  {Caso exista o arquivo logo.jpg então é colocado a logomarca pequena ao lado
   das informações da empresa no cabeçalho do relatório. Caso exista o arquivo
   logoex.jpg, que é a imagem da logomarca já com as informações da empresa, ela
   é expandida por todo o cabeçalho.}

  if FileExists(xCaminhoImagens+'\logo.jpg')  then
  begin
    ppImage4.Visible := True;
    ppImage3.Visible := False;
    ppLabel32.Visible:= True;
    ppLabel33.Visible := True;
    ppLabel34.Visible := True;
    ppLabel35.Visible := True;
    ppImage4.Picture.LoadFromFile(xCaminhoImagens+'\logo.jpg');
  end;

  if FileExists(xCaminhoImagens+'\logoex.jpg') then
  begin
    ppImage4.Visible := False;
    ppImage3.Visible := True;
    ppLabel32.Visible := False;
    ppLabel33.Visible := False;
    ppLabel34.Visible := False;
    ppLabel35.Visible := False;
    ppImage3.Picture.LoadFromFile(xCaminhoImagens+'\logoex.jpg');
  end;

  {Tentei somente trazer o ppImage2 para frente (BringToFront e BringToForward)
   mas não funcionou como deveria. Então resolvi ocultar os labels quando for
   a logomarca expandida.}
end;

procedure TfrmOrca.qrIOrcaCalcFields(DataSet: TDataSet);
begin
  qrIOrcasDescricao.AsString :=  qrIOrca.FieldByName('DESC01').AsString + IIf(qrIOrca.FieldByName('DESC02').AsString <> '',#13+#10 + qrIOrca.FieldByName('DESC02').AsString,'')
                                + IIf(qrIOrca.FieldByName('DESC03').AsString <> '', #13+#10 + qrIOrca.FieldByName('DESC03').AsString,'');
end;

procedure TfrmOrca.qrIOSCalcFields(DataSet: TDataSet);
var
  zNomeTec1,zNomeTec2,zNomeTec3,zNomeTec4,zNomeTec5,
  zVendedor,zTipo : String;


begin
  qrAux.Close;
  qrAux.SQL.Clear;
  qrAux.SQL.Add('SELECT DESCRICAO FROM VENDEDOR WHERE VENDEDOR.CODEMP='+ #39 + qrIOS.FieldByName('CODEMP').AsString +#39 + ' AND VENDEDOR.CODIGO='+ #39 +  qrIOS.FieldByName ('TEC_01').AsString + #39);
  qrAux.Open;
  zNomeTec1 := qrIOS.FieldByName('TEC_01').AsString + ' '+ qrAUX.FieldByName('DESCRICAO').AsString;

  qrAux.Close;
  qrAux.SQL.Clear;
  qrAux.SQL.Add('SELECT DESCRICAO FROM VENDEDOR WHERE VENDEDOR.CODEMP='+ #39 + qrIOS.FieldByName ('CODEMP').AsString +#39 + ' AND VENDEDOR.CODIGO='+ #39 +  qrIOS.FieldByName ('TEC_02').AsString + #39);
  qrAux.Open;
  zNomeTec2 := qrIOS.FieldByName('TEC_02').AsString + ' '+ qrAUX.FieldByName('DESCRICAO').AsString;

  qrAux.Close;
  qrAux.SQL.Clear;
  qrAux.SQL.Add('SELECT DESCRICAO FROM VENDEDOR WHERE VENDEDOR.CODEMP='+ #39 + qrIOS.FieldByName ('CODEMP').AsString +#39 + ' AND VENDEDOR.CODIGO='+ #39 +  qrIOS.FieldByName ('TEC_03').AsString + #39);
  qrAux.Open;
  zNomeTec3 := qrIOS.FieldByName('TEC_03').AsString + ' '+ qrAUX.FieldByName('DESCRICAO').AsString;

  qrAux.Close;
  qrAux.SQL.Clear;
  qrAux.SQL.Add('SELECT DESCRICAO FROM VENDEDOR WHERE VENDEDOR.CODEMP='+ #39 + qrIOS.FieldByName ('CODEMP').AsString +#39 + ' AND VENDEDOR.CODIGO='+ #39 +  qrIOS.FieldByName ('TEC_04').AsString + #39);
  qrAux.Open;
  zNomeTec4 := qrIOS.FieldByName('TEC_04').AsString + ' '+ qrAUX.FieldByName('DESCRICAO').AsString;

  qrAux.Close;
  qrAux.SQL.Clear;
  qrAux.SQL.Add('SELECT DESCRICAO FROM VENDEDOR WHERE VENDEDOR.CODEMP='+ #39 + qrIOS.FieldByName ('CODEMP').AsString +#39 + ' AND VENDEDOR.CODIGO='+ #39 +  qrIOS.FieldByName ('TEC_05').AsString + #39);
  qrAux.Open;
  zNomeTec5 := qrIOS.FieldByName('TEC_05').AsString + ' '+ qrAUX.FieldByName('DESCRICAO').AsString;
  if ExisteCampo('S2.DBF','VENDEDOR')then
    begin

      qrAux.Close;
      qrAux.SQL.Clear;
      qrAux.SQL.Add('SELECT DESCRICAO FROM VENDEDOR WHERE VENDEDOR.CODEMP='+ #39 + qrIOS.FieldByName ('CODEMP').AsString +#39 + ' AND VENDEDOR.CODIGO='+ #39 +  qrIOS.FieldByName ('VENDEDOR').AsString + #39);
      qrAux.Open;
      zVendedor  := qrIOS.FieldByName('VENDEDOR').AsString + ' '+ qrAUX.FieldByName('DESCRICAO').AsString;
    end
  else
    zVendedor := '';


  { qrIOSTECNICOS.AsString := Trim(qrIOS.FieldByName('TEC_01').AsString + ' '+ qrIOS.FieldByName('N_TEC_01').AsString + ' '+
                                  qrIOS.FieldByName('TEC_02').AsString + ' '+ qrIOS.FieldByName('N_TEC_02').AsString + ' '+
                                  qrIOS.FieldByName('TEC_03').AsString + ' '+ qrIOS.FieldByName('N_TEC_03').AsString + ' '+
                                  qrIOS.FieldByName('TEC_04').AsString + ' '+ qrIOS.FieldByName('N_TEC_04').AsString + ' '+
                                  qrIOS.FieldByName('TEC_05').AsString + ' '+ qrIOS.FieldByName('N_TEC_05').AsString);}
  if Trim(zVendedor) = '' then
     qrIOSTECNICOS.AsString := Trim(zNomeTec1 + ' '+ zNomeTec1 + ' '+ zNomeTec3 + ' '+ zNomeTec4 + ' ' + zNomeTec5 )
  else
      qrIOSTECNICOS.AsString := zVendedor;


end;



procedure TfrmOrca.rpOrcamentoBeforePrint(Sender: TObject);
{*------------------------------------------------------------------------------
 Evento executado antes de imprimir o relatório. Usado para agrupar os dados do
 endereço do cliente para melhorar a legibilidade.
 @param Sender Padrão TObject
-------------------------------------------------------------------------------}
begin
    plblEndereco.Caption := qrOrcamento.FieldByName('ENDERECO').AsString + ', ' +
    qrOrcamento.FieldByName('CIDADE').AsString + '/' +
    qrOrcamento.FieldByName('ESTADO').AsString;
end;

procedure TfrmOrca.SetaDiretorio;
var
    zDirAtual,zDirPadrao : string;
begin
  zDirAtual := GetCurrentDir;
  zDirPadrao := IncludeTrailingPathDelimiter(qrEmpresa.DatabaseName);

  if zDirAtual <> zDirPadrao then
    Begin
      SetCurrentDir(zDirPadrao);

    End;
end;

function TfrmOrca.TemAtributo(Attr, Val: Integer): Boolean;
begin
  Result := Attr and Val = Val;
end;

procedure TfrmOrca.Timer1Timer(Sender: TObject);
var
  zArq : string;
begin
  Timer1.Enabled := False;
  if xTipo = 1 then // Orcamento
    begin
      zArq := ExtractFilePath(Application.ExeName)+ 'Modelos\Orcamento\'+ cbModelos.Text;
      if  (FileExists(zArq))  then
        begin
          rpOrcamento.Template.FileName := zArq;
          rpOrcamento.Template.LoadFromFile;
          AtribuirLabels;
          AtribuirImg_Orcamento;
          rpOrcamento.Print;

         end

    end
  else if xTipo = 2  then
    Begin
      zArq := ExtractFilePath(Application.ExeName)+ 'Modelos\OS\'+ cbModelos.Text;
        if  (FileExists(zArq))  then
          begin
            rpOs.Template.FileName := zArq;
            rpOS.Template.LoadFromFile;
            AtribuirLabels;
            AtribuirImg_OS ;
            rpOS.Print;

          end;

    end
  else if xTipo = 3  then
    Begin
      zArq := ExtractFilePath(Application.ExeName)+ 'Modelos\Venda\'+ cbModelos.Text;
        if  (FileExists(zArq))  then
          begin
            rpVenda.Template.FileName := zArq;
            rpVenda.Template.LoadFromFile;
            AtribuirLabels;
            AtribuirImg_Venda;
            rpVenda.Print;

          end;

    end;
end;

procedure TfrmOrca.SetaDiretorio2;
var
    zDirAtual,zDirPadrao : string;
begin
  zDirAtual := GetCurrentDir;
  zDirPadrao := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));

  if zDirAtual <> zDirPadrao then
    Begin
      SetCurrentDir(zDirPadrao);

    End;
end;

end.
