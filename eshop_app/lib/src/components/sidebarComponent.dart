import 'package:eshop_app/src/pages/addCatagoryPage.dart';
import 'package:eshop_app/src/pages/cartPage.dart';
import 'package:eshop_app/src/pages/dashboardPage.dart';
import 'package:eshop_app/src/pages/homePage.dart';
import 'package:eshop_app/src/pages/productFavoritePage.dart';
import 'package:eshop_app/src/widgets/kText.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class SidebarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        30,
      ),
      child: Drawer(
        child: Container(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 140,
                    width: Get.width,
                    color: Color(0xFFFFFFFF),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 15,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Text(
                              'E',
                              style: GoogleFonts.averiaLibre(
                                color: Colors.blue.shade900,
                                fontSize: 80,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 60,
                          top: 35,
                          child: Text(
                            'Shoper',
                            style: GoogleFonts.acme(
                              color: Colors.lightBlue,
                              fontSize: 40,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 165,
                          top: 25,
                          child: Icon(
                            EvaIcons.shoppingCartOutline,
                            size: 40,
                            color: Colors.green,
                          ),
                        ),
                        Positioned(
                          left: 20,
                          top: 95,
                          child: KText(
                            text: 'A Online Digital Product Shop  ',
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: HexColor('3D4584'),
                    height: Get.height,
                    child: ListView(
                      shrinkWrap: true,
                      primary: false,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () => Get.to(HomePage()),
                          child: ListTile(
                            title: KText(
                              text: 'Home',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            leading: Icon(
                              Icons.home_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                        ListTile(
                          onTap: () => Get.to(DashboardPage()),
                          title: KText(
                            text: 'Dashboard',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          leading: Icon(
                            Icons.dashboard_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        ListTile(
                          onTap: () => Get.to(AddCatagoryPage()),
                          title: KText(
                            text: 'All Catagorys',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          leading: Icon(
                            Icons.category_sharp,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        ListTile(
                          onTap: () => Get.to(CartPage()),
                          title: KText(
                            text: 'Your Cart',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          leading: Icon(
                            EvaIcons.shoppingCartOutline,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        ListTile(
                          onTap: () => Get.to(ProductFavoritePage()),
                          title: KText(
                            text: 'Favourites',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          leading: Icon(
                            EvaIcons.heart,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        ListTile(
                          onTap: () => print('order'),
                          title: KText(
                            text: 'Your Order',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          leading: SvgPicture.asset(
                            'assets/images/order.svg',
                            height: 27,
                            color: Colors.white,
                          ),
                        ),
                        ListTile(
                          onTap: () => print('payment'),
                          title: KText(
                            text: 'Payments',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          leading: SvgPicture.asset(
                            'assets/images/bill.svg',
                            height: 30,
                            color: Colors.white,
                          ),
                        ),
                        ListTile(
                          onTap: () => print('team'),
                          title: KText(
                            text: 'Teams',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          leading: SvgPicture.asset(
                            'assets/images/teams.svg',
                            height: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
