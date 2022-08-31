unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UIntHerMult, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    animal: IAnimal;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  animal := TGato.New;
  ShowMessage(animal.Voz);
  ShowMessage(TGato(animal).Movimento);

  animal := TGalinha.New;
  ShowMessage(animal.Voz);

  animal := TCachorro.New;
  ShowMessage(animal.Voz);

end;

end.
