unit uNumGrande;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.IniFiles, TlHelp32,
  Vcl.Buttons;

type
  TfrmNumero = class(TForm)
    lbl1: TLabel;
    btnOk: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }

    procedure WMMove(var Msg: TWMMove); message WM_MOVE;

  protected


  public
    { Public declarations }
    procedure tbLoadFormStatus(Form: TForm; const Section: string);
    procedure tbSaveFormStatus(Form: TForm; const Section: string);
    procedure setNumero(Numero, Titulo: String);
    function ForceForegroundWindow(hwnd: THandle): Boolean;
  end;

var
  frmNumero: TfrmNumero;

implementation

{$R *.dfm}


procedure TfrmNumero.tbSaveFormStatus(Form: TForm; const Section: string);
var
  Ini: TIniFile;
  Maximized: boolean;
begin
  Ini := TIniFile.Create(ChangeFileExt(
  ExtractFileName(ParamStr(0)),'.INI'));
  try
    Maximized := Form.WindowState = wsMaximized;
    Ini.WriteBool(Section, 'Maximized', Maximized);
    if not Maximized then begin
      Ini.WriteInteger(Section, 'Left', Form.Left);
      Ini.WriteInteger(Section, 'Top', Form.Top);
      Ini.WriteInteger(Section, 'Width', Form.Width);
      Ini.WriteInteger(Section, 'Height', Form.Height);
    end;
  finally
    Ini.Free;
  end;
end;

procedure TfrmNumero.tbLoadFormStatus(Form: TForm; const Section: string);
var
  Ini: TIniFile;
  Maximized: boolean;
begin
  Maximized := false; { Evita msg do compilador }
  Ini := TIniFile.Create(ChangeFileExt(
  ExtractFileName(ParamStr(0)),'.INI'));
  try
    Maximized := Ini.ReadBool(Section, 'Maximized', Maximized);
    Form.Left := Ini.ReadInteger(Section, 'Left', Form.Left);
    Form.Top := Ini.ReadInteger(Section, 'Top', Form.Top);
    Form.Width := Ini.ReadInteger(Section, 'Width', Form.Width);
    Form.Height := Ini.ReadInteger(Section, 'Height', Form.Height);
    if Maximized then
      Form.Perform(WM_SIZE, SIZE_MAXIMIZED, 0);
    { A propriedade WindowState apresenta Bug.
    Por isto usei a mensagem WM_SIZE }
  finally
    Ini.Free;
  end;
end;

procedure TfrmNumero.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tbSaveFormStatus(Self, Self.Name);
end;

procedure TfrmNumero.FormCreate(Sender: TObject);
begin
  tbLoadFormStatus(Self, Self.Name);
end;

procedure TfrmNumero.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #27) or (Key = #13) then
  begin
    Key := #0;
    Close;
  end;
end;

procedure TfrmNumero.FormShow(Sender: TObject);
begin
  ShowWindow(Self.Handle, SW_SHOWNOACTIVATE);
end;

procedure TfrmNumero.setNumero(Numero, Titulo: String);
begin
  lbl1.Caption := Numero;
  frmNumero.Caption := Titulo;
end;

procedure TfrmNumero.WMMove(var Msg: TWMMove);
begin
  if Left < 0 then
    Left := 0;
  if Top < 0 then
    Top := 0;
  if Screen.Width - (Left + Width) < 0 then
    Left := Screen.Width - Width;
  if Screen.Height - (Top + Height) < 0 then
    Top := Screen.Height - Height;
end;

procedure TfrmNumero.btnOkClick(Sender: TObject);
begin
  Close;
end;

function TfrmNumero.ForceForegroundWindow(hwnd: THandle): Boolean;
const
  SPI_GETFOREGROUNDLOCKTIMEOUT = $2000;
  SPI_SETFOREGROUNDLOCKTIMEOUT = $2001;
var
  ForegroundThreadID: DWORD;
  ThisThreadID: DWORD;
  timeout: DWORD;
begin
  if IsIconic(hwnd) then ShowWindow(hwnd, SW_RESTORE);

  if GetForegroundWindow = hwnd then Result := True
  else
  begin
    // Windows 98/2000 doesn't want to foreground a window when some other
    // window has keyboard focus

    if ((Win32Platform = VER_PLATFORM_WIN32_NT) and (Win32MajorVersion > 4)) or
      ((Win32Platform = VER_PLATFORM_WIN32_WINDOWS) and
      ((Win32MajorVersion > 4) or ((Win32MajorVersion = 4) and
      (Win32MinorVersion > 0)))) then
    begin
     

      Result := False;
      ForegroundThreadID := GetWindowThreadProcessID(GetForegroundWindow, nil);
      ThisThreadID := GetWindowThreadPRocessId(hwnd, nil);
      if AttachThreadInput(ThisThreadID, ForegroundThreadID, True) then
      begin
        BringWindowToTop(hwnd); 
        SetForegroundWindow(hwnd);
        AttachThreadInput(ThisThreadID, ForegroundThreadID, False);
        Result := (GetForegroundWindow = hwnd);
      end;
      if not Result then
      begin
        // Code by Daniel P. Stasinski
        SystemParametersInfo(SPI_GETFOREGROUNDLOCKTIMEOUT, 0, @timeout, 0);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, TObject(0),
          SPIF_SENDCHANGE);
        BringWindowToTop(hwnd); 
        SetForegroundWindow(hWnd);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, TObject(timeout), SPIF_SENDCHANGE);
      end;
    end
    else
    begin
      BringWindowToTop(hwnd); 
      SetForegroundWindow(hwnd);
    end;

    Result := (GetForegroundWindow = hwnd);
  end;
end; { ForceForegroundWindow}


end.
