
unit exemplo4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    EgrausC: TEdit;
    EgrausF: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EgrausCChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  F, C: double;
begin
  //Entrada
  C:= StrToFloat(EgrausC.Text);

  //Processamento
  F:=1.8*C+32;

  //Saída
  EgrausF.Text:= FloatToStr(F);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin

end;

procedure TForm1.EgrausCChange(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
var
  F,C: double;
begin
  //Entrada
  F := StrToFloat(EgrausF.Text);

  //Processamento
  C :=5/9*(F-32);

  //Saída
  EgrausC.Text:= FloatToStr(C);

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

end.

