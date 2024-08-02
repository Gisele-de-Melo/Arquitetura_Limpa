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

unit MainForm;

interface

uses
  Vcl.Forms, Vcl.StdCtrls, System.Generics.Collections, Vcl.Controls, System.Classes, System.SysUtils, Vcl.Dialogs,
  ProductUseCase, ProductRepository, ProductRepositoryInterface, ProductEntity;

type
  TForm1 = class(TForm)
    btnAddProduct: TButton;
    edtProductName: TEdit;
    edtProductPrice: TEdit;
    btnListProducts: TButton;
    lbProducts: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnAddProductClick(Sender: TObject);
    procedure btnListProductsClick(Sender: TObject);
  private
    FProductUseCase: TProductUseCase;
    procedure ListProducts;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

constructor TForm1.Create(AOwner: TComponent);
var
  Repository: IProductRepository;
begin
  inherited Create(AOwner);
  Repository := TProductRepository.Create;
  FProductUseCase := TProductUseCase.Create(Repository);
end;

destructor TForm1.Destroy;
begin
  FProductUseCase.Free;
  inherited;
end;

procedure TForm1.btnAddProductClick(Sender: TObject);
var
  Product: TProduct;

begin
  Product.Name := edtProductName.Text;
  Product.Price := StrToFloat(edtProductPrice.Text);
  FProductUseCase.AddProduct(Product);
  ShowMessage('Product added successfully!');
  edtProductName.Clear;
  edtProductPrice.Clear;
  edtProductName.SetFocus;
end;

procedure TForm1.btnListProductsClick(Sender: TObject);
begin
  ListProducts;
end;

procedure TForm1.ListProducts;
var
  Products: TList<TProduct>;
  Product: TProduct;
begin
  lbProducts.Clear;
  Products := FProductUseCase.GetAllProducts;
  try
    for Product in Products do
    begin
      lbProducts.Items.Add(Format('ID: %d, Name: %s, Price: %.2f', [Product.ID, Product.Name, Product.Price]));
    end;
  finally
    Products.Free;
  end;
end;

end.
