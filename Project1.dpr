program Project1;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form1},
  ProductEntity in 'ProductEntity.pas',
  ProductRepositoryInterface in 'ProductRepositoryInterface.pas',
  ProductUseCase in 'ProductUseCase.pas',
  ProductRepository in 'ProductRepository.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
