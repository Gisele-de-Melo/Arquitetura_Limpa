//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------

// Unit de Implementação de Repositório
unit ProductRepository;

interface

uses
  ProductRepositoryInterface, ProductEntity, System.Generics.Collections;

type
  TProductRepository = class(TInterfacedObject, IProductRepository)
  private
    FProducts: TDictionary<Integer, TProduct>;
    FNextID: Integer;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Save(AProduct: TProduct);
    function FindByID(AID: Integer): TProduct;
    function GetAll: TList<TProduct>;
  end;

implementation

constructor TProductRepository.Create;
begin
  FProducts := TDictionary<Integer, TProduct>.Create;
  FNextID := 1;
end;

destructor TProductRepository.Destroy;
begin
  FProducts.Free;
  inherited;
end;

procedure TProductRepository.Save(AProduct: TProduct);
begin
  AProduct.ID := FNextID;
  Inc(FNextID);

  FProducts.Add(AProduct.ID, AProduct);
end;

function TProductRepository.FindByID(AID: Integer): TProduct;
begin
  FProducts.TryGetValue(AID, Result);
end;

function TProductRepository.GetAll: TList<TProduct>;
var
  Product: TProduct;
  ProductList: TList<TProduct>;
begin
  ProductList := TList<TProduct>.Create;
  for Product in FProducts.Values do
  begin
    ProductList.Add(Product);
  end;
  Result := ProductList;
end;

end.
