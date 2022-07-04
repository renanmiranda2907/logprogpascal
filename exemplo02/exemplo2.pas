unit exemplo2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
begin
        close;

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  s_altura, s_base, s_area: string;
  altura, base, area: double;
begin
      s_altura := InputBox('Digite a altura','Valor:','');
     s_base := InputBox('Digite a base', 'Valor:','');

     altura := StrToFloat(s_altura);
     base := StrToFloat(s_base);

     area := (base * altura) / 2;

     s_area:= FloatToStr(area);
     ShowMessage ('A área do triangulo é ' + s_area);
end;


end.

