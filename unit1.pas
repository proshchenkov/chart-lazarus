unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  ExtDlgs, StdCtrls, TAGraph, TASeries, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Chart1: TChart;
    Chart1LineSeries1: TLineSeries;
    Chart1LineSeries2: TLineSeries;
    Chart1LineSeries3: TLineSeries;
    Chart1LineSeries4: TLineSeries;
    Chart1LineSeries5: TLineSeries;
    Chart1LineSeries6: TLineSeries;
    Chart1LineSeries7: TLineSeries;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    SavePictureDialog1: TSavePictureDialog;
    ToggleBox1: TToggleBox;
    ToggleBox2: TToggleBox;
    ToggleBox3: TToggleBox;
    ToggleBox4: TToggleBox;
    ToggleBox5: TToggleBox;
    ToggleBox6: TToggleBox;
    ToggleBox7: TToggleBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ToggleBox1Click(Sender: TObject);
    procedure ToggleBox2Click(Sender: TObject);
    procedure ToggleBox3Click(Sender: TObject);
    procedure ToggleBox4Click(Sender: TObject);
    procedure ToggleBox5Click(Sender: TObject);
    procedure ToggleBox6Click(Sender: TObject);
    procedure ToggleBox7Click(Sender: TObject);
  private

  public

  end;

const
  N = 1000;
  MIN = -100;
  MAX = 100;

var
  Form1: TForm1;
  i: integer;
  x: double;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ToggleBox1Click(Sender: TObject);
begin
  if ToggleBox1.Checked then
  begin
    for i := 0 to N - 1 do
    begin
      x := MIN + (MAX - MIN) * i / (N - 1);
      Chart1LineSeries1.AddXY(x, sin(x));
    end;
    ToggleBox1.Checked := True;
  end
  else
  begin
    Chart1LineSeries1.Clear;
    ToggleBox1.Checked := False;
  end;
end;

procedure TForm1.ToggleBox2Click(Sender: TObject);
begin
  if ToggleBox2.Checked then
  begin
    for i := 0 to N - 1 do
    begin
      x := MIN + (MAX - MIN) * i / (N - 1);
      Chart1LineSeries2.AddXY(x, cos(x));
    end;
    ToggleBox2.Checked := True;
  end
  else
  begin
    Chart1LineSeries2.Clear;
    ToggleBox2.Checked := False;
  end;
end;

procedure TForm1.ToggleBox3Click(Sender: TObject);
begin
  if ToggleBox3.Checked then
  begin
    for i := 0 to N - 1 do
    begin
      x := MIN + (MAX - MIN) * i / (N - 1);
      Chart1LineSeries3.AddXY(x, tan(x));
    end;
    ToggleBox3.Checked := True;
  end
  else
  begin
    Chart1LineSeries3.Clear;
    ToggleBox3.Checked := False;
  end;
end;

procedure TForm1.ToggleBox4Click(Sender: TObject);
begin
  if ToggleBox4.Checked then
  begin
    for i := 0 to N - 1 do
    begin
      x := MIN + (MAX - MIN) * i / (N - 1);
      Chart1LineSeries4.AddXY(x, cotan(x));
    end;
    ToggleBox4.Checked := True;
  end
  else
  begin
    Chart1LineSeries4.Clear;
    ToggleBox4.Checked := False;
  end;
end;

procedure TForm1.ToggleBox5Click(Sender: TObject);
begin
  if ToggleBox5.Checked then
  begin
    for i := 0 to N - 1 do
    begin
      x := MIN + (MAX - MIN) * i / (N - 1);
      Chart1LineSeries5.AddXY(x, arcsin(x));
    end;
    ToggleBox5.Checked := True;
  end
  else
  begin
    Chart1LineSeries5.Clear;
    ToggleBox5.Checked := False;
  end;
end;

procedure TForm1.ToggleBox6Click(Sender: TObject);
begin
  if ToggleBox6.Checked then
  begin
    for i := 0 to N - 1 do
    begin
      x := MIN + (MAX - MIN) * i / (N - 1);
      Chart1LineSeries6.AddXY(x, arccos(x));
    end;
    ToggleBox6.Checked := True;
  end
  else
  begin
    Chart1LineSeries6.Clear;
    ToggleBox6.Checked := False;
  end;
end;

procedure TForm1.ToggleBox7Click(Sender: TObject);
begin
  if ToggleBox7.Checked then
  begin
    for i := 0 to N - 1 do
    begin
      x := MIN + (MAX - MIN) * i / (N - 1);
      Chart1LineSeries7.AddXY(x, arctan(x));
    end;
    ToggleBox7.Checked := True;
  end
  else
  begin
    Chart1LineSeries7.Clear;
    ToggleBox7.Checked := False;
  end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  if SavePictureDialog1.Execute then
    Chart1.SaveToBitmapFile(SavePictureDialog1.FileName);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Chart1LineSeries1.Clear;
  Chart1LineSeries2.Clear;
  Chart1LineSeries3.Clear;
  Chart1LineSeries4.Clear;
  Chart1LineSeries5.Clear;
  Chart1LineSeries6.Clear;
  Chart1LineSeries7.Clear;
  ToggleBox1.Checked := False;
  ToggleBox2.Checked := False;
  ToggleBox3.Checked := False;
  ToggleBox4.Checked := False;
  ToggleBox5.Checked := False;
  ToggleBox6.Checked := False;
  ToggleBox7.Checked := False;
end;

end.
