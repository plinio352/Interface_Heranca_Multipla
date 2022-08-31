unit UIntHerMult;

interface

type
  IAnimal = interface
    ['{7E73E11B-A0C1-4C40-8683-3AF1F73B1386}']
    function Voz: string;
  end;

  IGato = interface(IAnimal)
    ['{FA50EA3E-0D5C-49A6-8E76-FFF48560EE74}']
    function Movimento: string;
  end;

  ICachorro = interface(IAnimal)
    ['{AE6394BF-8D9E-4CF1-BC19-83B8833B3250}']
  end;

  IGalinha = interface(IAnimal)
    ['{275D4E4E-2E34-4DF2-8288-5C63A76412F5}']
  end;

  TGato = class(TInterfacedObject, IGato)
  public
    function Voz: string;
    function Movimento: string;
    class function New: IGato;
  end;

  TCachorro = class(TInterfacedObject, ICachorro)
  public
    function Voz: string;
    class function New: ICachorro;
  end;

  TGalinha = class(TInterfacedObject, IGalinha)
  public
    function Voz: string;
    class function New: IGalinha;
  end;

  TAnimal = class(TInterfacedObject, ICachorro, IGato, IGalinha, IAnimal)
  public
    function Voz: string;
    function Movimento: string;
    class function New: IAnimal;
  end;

implementation

{ TGalinha }

class function TGalinha.New: IGalinha;
begin
  Result := Self.Create;
end;

function TGalinha.Voz: string;
begin
  Result := 'Piu...piu!';
end;

{ TCachorro }

class function TCachorro.New: ICachorro;
begin
  Result := Self.Create;
end;

function TCachorro.Voz: string;
begin
  Result := 'Uau...Uau!';
end;

{ TGato }

function TGato.Movimento: string;
begin
  Result := 'Pula muro!';
end;

class function TGato.New: IGato;
begin
  Result := Self.Create;
end;

function TGato.Voz: string;
begin
  Result := 'Miau...Miau!';
end;

{ TAnimal }

function TAnimal.Movimento: string;
begin
  Result := Self.Movimento;
end;

class function TAnimal.New: IAnimal;
begin
  Result := Self.Create;
end;

function TAnimal.Voz: string;
begin
  Result := Self.Voz;
end;

end.
