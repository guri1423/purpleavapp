import 'package:flutter/material.dart';
import 'package:purpleavapp/Modal/renter_model/product_model.dart';
import 'package:purpleavapp/Screens/RenterScreens/product_details.dart';
import 'package:purpleavapp/Services/ApiServices.dart';

class ViewProducts extends StatefulWidget {
  const ViewProducts({Key? key}) : super(key: key);

  @override
  State<ViewProducts> createState() => _ViewProductsState();
}

class _ViewProductsState extends State<ViewProducts> {
  late Future<ProductModel> _future;

@override
  void initState() {
 _future = getAllProduct();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff5600d4),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Text(
                "View Products",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          )
      ),
      body: FutureBuilder<ProductModel>(
        future: _future,
        builder: (context,snapshot){
          if(snapshot.hasData){
            return SingleChildScrollView(
              child: ListView.builder(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: snapshot.data!.products.length,
                  itemBuilder: (context,index){
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x42000000),
                        blurRadius: 3,
                        offset: Offset(0, 0),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Stack(
                    children:[
                      Positioned(
                        left: 18,
                        top: 17,
                        child: Container(
                          width: 144,
                          height: 136,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color(0xfff4f4f4),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 36,
                        top: 31,
                        child: Container(
                          width: 108,
                          height: 108,
                          child: Image.asset('images/cartimage.png'),
                        ),
                      ),
                      Positioned(
                        left: 186,
                        top: 33,
                        child: GestureDetector(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetails(product: snapshot.data!.products[index],)));
                        },
                          child: Text(
                            snapshot.data!.products[index].name!,
                            style: TextStyle(
                              color: Color(0xff727171),
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 186,
                        top: 85,
                        child: Text(
                          "Rent - \$${snapshot.data!.products[index].rentCost}/mo",
                          style: TextStyle(
                            color: Color(0xff0a0a0a),
                            fontSize: 18,
                            fontFamily: "Lato",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 186,
                        top: 123,
                        child: Container(
                          width: 186,
                          height: 26,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Color(0xff5600d4),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              Text(
                                "Add to Cart",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                );
              }),
            );
          }
          if(snapshot.hasError){
            return Center(
              child: Text("something went wrong"),
            );
          }
          return Center(child: CircularProgressIndicator());

        },
      ),
    );
  }
}
