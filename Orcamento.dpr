library Orcamento;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  system.ShareMem,
  System.SysUtils,
  System.Classes,
  Winapi.Windows,
  Vcl.Forms,
  Vcl.Dialogs,
  System.IniFiles,
  Tlhelp32,
  uOrcamentos in 'uOrcamentos.pas' {frmOrca},
  uNumGrande in 'uNumGrande.pas' {frmNumero};

{$R *.res}

Procedure GerarOrcamento(pEmpresa, pNota,pVisualizar: PAnsiChar); Export; Stdcall;
{<md>Procedimento que chama as rotinas para gerar o orçamento através do ReportBuilder.</md>}
begin
  try
    {Cria o formulário para também criar as variáveis necessárias.}

    frmOrca := TfrmOrca.Create(Application);
    //Application.CreateForm(TfrmOrca,frmOrca);
    {Variáveis que serão usadas nas querys.}
    frmOrca.xTipo := 1; // Orcamento
    frmOrca.xVisualizar :=AnsiString(pVisualizar);
    frmOrca.pEmpresa := AnsiString(pEmpresa);
    frmOrca.pNota := AnsiString(pNota);
    frmOrca.ListarArquivos(ExtractFilePath(Application.ExeName)+ 'Modelos\Orcamento',False);
    if frmOrca.cbModelos.Items.Count > 1 then
      frmOrca.ShowModal
    else
      frmOrca.Show ;

  finally
    {Release serve para liberar o form da memória... mais ou menos como o Free,
     mas ele espera serem encerrados quaisquer eventos/métodos referentes aquele
     form, ou seja, irá processar cliques, teclas acionadas, etc para depois destruir o form. }
    //frmOrca.Release;
    {Fecha e libera da memória.}
    FreeAndNil(frmOrca);
  end;
end;

Procedure GerarOS(pEmpresa, pNota, pVisualizar: PAnsiChar); Export; Stdcall;
{<md>Procedimento que chama as rotinas para gerar a  Ordem de serviço através do ReportBuilder.</md>}
begin
  try
    {Cria o formulário para também criar as variáveis necessárias.}
    frmOrca := TfrmOrca.Create(Application);
    {Variáveis que serão usadas nas querys.}
    frmOrca.xTipo := 2; // OS
    frmOrca.xVisualizar := AnsiString(pVisualizar);
    frmOrca.pEmpresa := AnsiString(pEmpresa);
    frmOrca.pNota := AnsiString(pNota);
    frmOrca.ListarArquivos(ExtractFilePath(Application.ExeName)+ 'Modelos\OS',False);
    if frmOrca.cbModelos.Items.Count > 1 then
      frmOrca.ShowModal
    else
      frmOrca.Show ;
  finally
    {Release serve para liberar o form da memória... mais ou menos como o Free,
     mas ele espera serem encerrados quaisquer eventos/métodos referentes aquele
     form, ou seja, irá processar cliques, teclas acionadas, etc para depois destruir o form. }
    //frmOrca.Release;
    {Fecha e libera da memória.}
    FreeAndNil(frmOrca);
  end;
end;
Procedure GerarVenda(pEmpresa, pNota,pVisualizar: PAnsiChar); Export; Stdcall;
{<md>Procedimento que chama as rotinas para gerar a Venda através do ReportBuilder.</md>}
begin
  try
    {Cria o formulário para também criar as variáveis necessárias.}

    frmOrca := TfrmOrca.Create(Application);
    //Application.CreateForm(TfrmOrca,frmOrca);
    {Variáveis que serão usadas nas querys.}
    frmOrca.xTipo := 3; // Venda
    frmOrca.xVisualizar := AnsiString(pVisualizar);
    frmOrca.pEmpresa := AnsiString(pEmpresa);
    frmOrca.pNota := AnsiString(pNota);
    frmOrca.ListarArquivos(ExtractFilePath(Application.ExeName)+ 'Modelos\Venda',False);
    if frmOrca.cbModelos.Items.Count > 1 then
      frmOrca.ShowModal
    else
      frmOrca.Show ;

  finally
    {Release serve para liberar o form da memória... mais ou menos como o Free,
     mas ele espera serem encerrados quaisquer eventos/métodos referentes aquele
     form, ou seja, irá processar cliques, teclas acionadas, etc para depois destruir o form. }
    //frmOrca.Release;
    {Fecha e libera da memória.}
    FreeAndNil(frmOrca);

  end;
end;

Procedure ImprimeTxt(pArquivo,pModelo: PAnsiChar); Export; Stdcall;
{<md>Procedimento que chama as rotinas para carregar um txt através do ReportBuilder.</md>}
begin
  try
    {Cria o formulário para também criar as variáveis necessárias.}

    frmOrca := TfrmOrca.Create(Application);
    //Application.CreateForm(TfrmOrca,frmOrca);
    {Variáveis que serão usadas nas querys.}
      frmOrca.xTipo := 4; // Carregamento de Arquivo Txt
      frmOrca.xArquivo := AnsiString(pArquivo);
      frmOrca.xModelo  := AnsiString(pModelo);
      ///ShowMessage(frmOrca.xArquivo);
      frmOrca.ShowModal  ;

  finally
    {Release serve para liberar o form da memória... mais ou menos como o Free,
     mas ele espera serem encerrados quaisquer eventos/métodos referentes aquele
     form, ou seja, irá processar cliques, teclas acionadas, etc para depois destruir o form. }
    //frmOrca.Release;
    {Fecha e libera da memória.}
    FreeAndNil(frmOrca);

  end;
end;

function AcbrAtivo: Boolean; Export; Stdcall;
const
  PROCESS_TERMINATE=$0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32{declarar Uses Tlhelp32};
begin
  result := false;

  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := Sizeof(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle,FProcessEntry32);

  while integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) = UpperCase('ACbrMonitor.exe'))
    or (UpperCase(FProcessEntry32.szExeFile) = UpperCase('ACbrMonitor.exe'))) then
      begin
        Result := true;
        exit;
      end;
   ContinueLoop := Process32Next(FSnapshotHandle,FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
   if Result = False  then
     Application.MessageBox('O Acbr não está ativo!','Atenção',mb_ok+mb_iConInformation);
End;


procedure exibirNum(Num, TitForm: PAnsiChar); export; stdcall;
begin
  try
    if frmNumero = nil then
      frmNumero := TfrmNumero.Create(Application);
    frmNumero.setNumero(TitForm, Num);
//    ShowWindow(frmNumero.Handle, SW_SHOWNOACTIVATE);
    frmNumero.ShowModal;
  finally
    frmNumero.Release;
    FreeAndNil(frmNumero);
  end;
end;

procedure fecharNum; export; stdcall;
begin
  try
    frmNumero.tbSaveFormStatus(frmNumero, frmNumero.Name);
    frmNumero.Close;
//    ShowWindow(frmNumero.Handle, SW_HIDE);
  except
    on E: Exception do
    begin
      ShowMessage(e.Message);
    end;
  end;
end;
{Fim.==========================================================================}


Exports
  GerarOrcamento,
  GerarOS,
  GerarVenda,
  ImprimeTxt,
  AcbrAtivo,
  exibirNum,
  fecharNum;


begin
end.
