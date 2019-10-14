import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';



import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;


  ProductManager({this.startingProduct = "Sweets Tester"});


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState("nada");
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];
   String _barcodeNuevo;

  _ProductManagerState(this._barcodeNuevo);

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context)  {
    // TODO: implement build
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            child: Text("Add Product"),
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(()  {
                _getBarcode();
                _products.add(_barcodeNuevo);
              });
            },
          ),
        ),
        //c
        Producsts(_products)
      ],
    );
  }


  Future _getBarcode() async{

    String _code = await FlutterBarcodeScanner.scanBarcode("#004297", "Cancel", true, ScanMode.BARCODE);

    setState(() {

      _barcodeNuevo = _code;
    });
  }
}
