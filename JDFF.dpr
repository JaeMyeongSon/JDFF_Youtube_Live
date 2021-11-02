program JDFF;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  WinHttp_TLB in 'WinHttp_TLB.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Blue');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
