unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,IdMultiPartFormData,ShellApi,URLMON,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,WinHttp_TLB,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    IdHTTP1: TIdHTTP;
    Edit2: TEdit;
    Button3: TButton;
    Button4: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Button5: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Timer1: TTimer;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
      WinHttp: IWinHttpRequest;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  hr: HRESULT;
  UrlFile, SaveFile: String;
    begin
    UrlFile  := 'https://drive.google.com/u/0/uc?id=1eyYcNVRFFm6aZGmMtz_F_CgTLhe6ItZG&export=download';
  SaveFile := extractFilePath(Application.exeName)+'youtube-dl.exe';
  hr := URLDownloadToFile(nil, PChar(UrlFIle), PChar(SaveFile), 0, nil);
  if hr = S_OK then ShowMessage('설치가 완료되었습니다');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
txtFile : TextFile;
sFileName : string;

  AUrl       : String;
  DataPath   : String;
  sLogName    : String;
  DataStream : TIdMultiPartFormDataStream;
  ResStream  : TMemoryStream;
begin

if FileExists(''+extractFilePath(Application.exeName) + 'movie1.html') then
begin
DeleteFile(PChar(''+extractFilePath(Application.exeName) + 'movie1.html'));
end;

if FileExists(''+extractFilePath(Application.exeName) + 'movie1.bat') then
begin
DeleteFile(PChar(''+extractFilePath(Application.exeName) + 'movie1.bat'));
end;

sFileName := ''+extractFilePath(Application.exeName) + 'movie1.bat';

AssignFile(txtFile, sFileName);

  DeleteFile(sFileName) ;
  Rewrite(txtFile);
  //Writeln(txtFile,'cd..'#13#10'cd..'#13#10'youtube-dl.exe -g '+edit1.Text+'>>movie1.html');
  Writeln(txtFile,'youtube-dl.exe -g '+edit1.Text+'>>movie1.html');
CloseFile(txtFile);

ShellExecute(Handle, 'open', PChar(''+extractFilePath(Application.exeName)+'movie1.bat'), nil, nil, SW_SHOW);

sleep(10000);

  sLogName := (''+extractFilePath(Application.exeName) + 'movie1.html');
  DataPath   := sLogName;

    AUrl       := 'http://crcserver.dothome.co.kr/JDFF/movie.php';
  DataStream := TIdMultiPartFormDataStream.Create;
  ResStream  := TMemoryStream.Create;
    try
      DataStream.AddFile('upfile', sLogName, '');
      IdHTTP1.Post(AUrl, DataStream, ResStream);
      ResStream.Position := 0;
    finally
      FreeAndNil(DataStream);
      FreeAndNil(ResStream);
    end;
    DeleteFile(PChar(''+extractFilePath(Application.exeName) + 'movie1.html'));
    DeleteFile(PChar(''+extractFilePath(Application.exeName) + 'movie1.bat'));
    Edit1.Clear;
end;



procedure TForm1.Button3Click(Sender: TObject);
var
txtFile : TextFile;
sFileName : string;

  AUrl       : String;
  DataPath   : String;
  sLogName    : String;
  DataStream : TIdMultiPartFormDataStream;
  ResStream  : TMemoryStream;
begin

if FileExists(''+extractFilePath(Application.exeName) + 'movie2.html') then
begin
DeleteFile(PChar(''+extractFilePath(Application.exeName) + 'movie2.html'));

end;

if FileExists(''+extractFilePath(Application.exeName) + 'movie2.bat') then
begin
DeleteFile(PChar(''+extractFilePath(Application.exeName) + 'movie2.bat'));
end;

sFileName := ''+extractFilePath(Application.exeName) + 'movie2.bat';

AssignFile(txtFile, sFileName);

  DeleteFile(sFileName) ;
  Rewrite(txtFile);
  //Writeln(txtFile,'cd..'#13#10'cd..'#13#10'youtube-dl.exe -g '+edit1.Text+'>>movie1.html');
  Writeln(txtFile,'youtube-dl.exe -g '+edit2.Text+'>>movie2.html');
CloseFile(txtFile);

ShellExecute(Handle, 'open', PChar(''+extractFilePath(Application.exeName)+'movie2.bat'), nil, nil, SW_SHOW);

sleep(10000);

  sLogName := (''+extractFilePath(Application.exeName) + 'movie2.html');
  DataPath   := sLogName;

    AUrl       := 'http://crcserver.dothome.co.kr/JDFF/movie.php';
  DataStream := TIdMultiPartFormDataStream.Create;
  ResStream  := TMemoryStream.Create;
    try
      DataStream.AddFile('upfile', sLogName, '');

      IdHTTP1.Post(AUrl, DataStream, ResStream);

      ResStream.Position := 0;
    finally
      FreeAndNil(DataStream);
      FreeAndNil(ResStream);
    end;
    DeleteFile(PChar(''+extractFilePath(Application.exeName) + 'movie2.html'));
    DeleteFile(PChar(''+extractFilePath(Application.exeName) + 'movie2.bat'));
    Edit2.Clear;
  end;

procedure TForm1.Button4Click(Sender: TObject);
var
txtFile : TextFile;
sFileName : string;

  AUrl       : String;
  DataPath   : String;
  sLogName    : String;
  DataStream : TIdMultiPartFormDataStream;
  ResStream  : TMemoryStream;
begin

if FileExists(''+extractFilePath(Application.exeName) + 'movie3.html') then
begin
DeleteFile(PChar(''+extractFilePath(Application.exeName) + 'movie3.html'));

end;

if FileExists(''+extractFilePath(Application.exeName) + 'movie3.bat') then
begin
DeleteFile(PChar(''+extractFilePath(Application.exeName) + 'movie3.bat'));
end;

sFileName := ''+extractFilePath(Application.exeName) + 'movie3.bat';

AssignFile(txtFile, sFileName);

  DeleteFile(sFileName) ;
  Rewrite(txtFile);
  //Writeln(txtFile,'cd..'#13#10'cd..'#13#10'youtube-dl.exe -g '+edit1.Text+'>>movie1.html');
  Writeln(txtFile,'youtube-dl.exe -g '+edit3.Text+'>>movie3.html');
CloseFile(txtFile);

ShellExecute(Handle, 'open', PChar(''+extractFilePath(Application.exeName)+'movie3.bat'), nil, nil, SW_SHOW);

sleep(10000);

  sLogName := (''+extractFilePath(Application.exeName) + 'movie3.html');
  DataPath   := sLogName;

    AUrl       := 'http://crcserver.dothome.co.kr/JDFF/movie.php';
  DataStream := TIdMultiPartFormDataStream.Create;
  ResStream  := TMemoryStream.Create;
    try
      DataStream.AddFile('upfile', sLogName, '');

      IdHTTP1.Post(AUrl, DataStream, ResStream);

      ResStream.Position := 0;
    finally
      FreeAndNil(DataStream);
      FreeAndNil(ResStream);
    end;
    DeleteFile(PChar(''+extractFilePath(Application.exeName) + 'movie3.html'));
    DeleteFile(PChar(''+extractFilePath(Application.exeName) + 'movie3.bat'));
    Edit3.Clear;
  end;

procedure TForm1.Button5Click(Sender: TObject);
var
txtFile : TextFile;
sFileName : string;

  AUrl       : String;
  DataPath   : String;
  sLogName    : String;
  DataStream : TIdMultiPartFormDataStream;
  ResStream  : TMemoryStream;
begin

if FileExists(''+extractFilePath(Application.exeName) + 'movie4.html') then
begin
DeleteFile(PChar(''+extractFilePath(Application.exeName) + 'movie4.html'));

end;

if FileExists(''+extractFilePath(Application.exeName) + 'movie4.bat') then
begin
DeleteFile(PChar(''+extractFilePath(Application.exeName) + 'movie4.bat'));
end;

sFileName := ''+extractFilePath(Application.exeName) + 'movie4.bat';

AssignFile(txtFile, sFileName);

  DeleteFile(sFileName) ;
  Rewrite(txtFile);
  //Writeln(txtFile,'cd..'#13#10'cd..'#13#10'youtube-dl.exe -g '+edit1.Text+'>>movie1.html');
  Writeln(txtFile,'youtube-dl.exe -g '+edit4.Text+'>>movie4.html');
CloseFile(txtFile);

ShellExecute(Handle, 'open', PChar(''+extractFilePath(Application.exeName)+'movie4.bat'), nil, nil, SW_SHOW);

sleep(10000);

  sLogName := (''+extractFilePath(Application.exeName) + 'movie4.html');
  DataPath   := sLogName;

    AUrl       := 'http://crcserver.dothome.co.kr/JDFF/movie.php';
  DataStream := TIdMultiPartFormDataStream.Create;
  ResStream  := TMemoryStream.Create;
    try
      DataStream.AddFile('upfile', sLogName, '');

      IdHTTP1.Post(AUrl, DataStream, ResStream);

      ResStream.Position := 0;
    finally
      FreeAndNil(DataStream);
      FreeAndNil(ResStream);
    end;
    DeleteFile(PChar(''+extractFilePath(Application.exeName) + 'movie4.html'));
    DeleteFile(PChar(''+extractFilePath(Application.exeName) + 'movie4.bat'));
    Edit4.Clear;
  end;


procedure TForm1.Button6Click(Sender: TObject);
begin
var
btn_select : integer;
begin
btn_select := MessageDlg('정말 업로드 하시겠습니까?', mtConfirmation, [mbYes, mbNo],0);

if btn_select = mrYes then

Button7.Click

else
if btn_select = mrNo then
  ShowMessage('취소 되었습니다.');
end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
button2.Click;
button3.Click;
button4.Click;
button5.Click;
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
showmessage('완료되었습니다');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
BorderStyle := bsSingle;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
Ben : String;
begin
Winhttp := coWinHttpRequest.Create;
try
Winhttp.Open('GET','http://crcserver.dothome.co.kr/frontis/IP.php', false);
WinHttp.Send(EmptyParam);
Ben := (Winhttp.ResponseText);
Winhttp.Open('GET','http://crcserver.dothome.co.kr/frontis/admin.txt', false);
WinHttp.Send(EmptyParam);
Form1.Enabled := true;
Form1.Visible := true;
Label6.Caption := Ben;
label7.Caption := '관리자님 어서오세요.';
Timer1.Enabled := false;

if not (AnsiPos((Ben), Winhttp.ResponseText) <> 0)then
begin
Timer1.Enabled := False;
ShowMessage('승인이 되어있지 않은 관리자 입니다. jmson.fro@hancom.com으로 문의 해주세요.'+#13#10+'IP : '+Ben);
application.Terminate;
end
finally
end;
end;

end.
