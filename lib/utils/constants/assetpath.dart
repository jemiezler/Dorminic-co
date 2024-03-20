
/* -- App Image Strings -- */

import 'package:flutter_svg/flutter_svg.dart';

/// This class contains all the App Images in String formats.
class AssetsPath {

  // -- App Logos
  static const String darkAppLogo = "assets/icons/App-icon-dark.png";
  static const String lightAppLogo = "assets/icons/App-icon.png";

  // -- Social Logos
  static SvgPicture google = SvgPicture.string(
      '''
      <svg height="100%" viewBox="0 0 20 20" width="100%" fit="" preserveAspectRatio="xMidYMid meet" focusable="false">
        <path d="M19.6 10.23c0-.82-.1-1.42-.25-2.05H10v3.72h5.5c-.15.96-.74 2.31-2.04 3.22v2.45h3.16c1.89-1.73 2.98-4.3 2.98-7.34z" fill="#4285F4"></path>
        <path d="M13.46 15.13c-.83.59-1.96 1-3.46 1-2.64 0-4.88-1.74-5.68-4.15H1.07v2.52C2.72 17.75 6.09 20 10 20c2.7 0 4.96-.89 6.62-2.42l-3.16-2.45z" fill="#34A853"></path>
        <path d="M3.99 10c0-.69.12-1.35.32-1.97V5.51H1.07A9.973 9.973 0 000 10c0 1.61.39 3.14 1.07 4.49l3.24-2.52c-.2-.62-.32-1.28-.32-1.97z" fill="#FBBC05"></path>
        <path d="M10 3.88c1.88 0 3.13.81 3.85 1.48l2.84-2.76C14.96.99 12.7 0 10 0 6.09 0 2.72 2.25 1.07 5.51l3.24 2.52C5.12 5.62 7.36 3.88 10 3.88z" fill="#EA4335"></path>
      </svg>
      ''',
    );
  static SvgPicture apple = SvgPicture.string(
    '''
    <svg xmlns="http://www.w3.org/2000/svg" xml:space="preserve" width="814" height="1000">
      <path d="M788.1 340.9c-5.8 4.5-108.2 62.2-108.2 190.5 0 148.4 130.3 200.9 134.2 202.2-.6 3.2-20.7 71.9-68.7 141.9-42.8 61.6-87.5 123.1-155.5 123.1s-85.5-39.5-164-39.5c-76.5 0-103.7 40.8-165.9 40.8s-105.6-57-155.5-127C46.7 790.7 0 663 0 541.8c0-194.4 126.4-297.5 250.8-297.5 66.1 0 121.2 43.4 162.7 43.4 39.5 0 101.1-46 176.3-46 28.5 0 130.9 2.6 198.3 99.2zm-234-181.5c31.1-36.9 53.1-88.1 53.1-139.3 0-7.1-.6-14.3-1.9-20.1-50.6 1.9-110.8 33.7-147.1 75.8-28.5 32.4-55.1 83.6-55.1 135.5 0 7.8 1.3 15.6 1.9 18.1 3.2.6 8.4 1.3 13.6 1.3 45.4 0 102.5-30.4 135.5-71.3z" fill="white"/>
    </svg>
    ''',
  );

  // -- Category Icons
  static const String sportIcon = "assets/icons/categories/icons8-bowling-64.png";
  static const String clothIcon = "assets/icons/categories/icons8-tailors-dummy-64.png";
  static const String shoeIcon = "assets/icons/categories/icons8-shoes-64.png";
  static const String cosmeticsIcon = "assets/icons/categories/icons8-cosmetics-64.png";
  static const String animalIcon = "assets/icons/categories/icons8-dog-heart-64.png";
  static const String toyIcon = "assets/icons/categories/icons8-wooden-toy-car-50.png";
  static const String furnitureIcon = "assets/icons/categories/icons8-dining-chair-64.png";
  static const String jeweleryIcon = "assets/icons/categories/icons8-sparkling-diamond-64.png";
  static const String electronicsIcon = "assets/icons/categories/icons8-smartphone-64.png";

  // -- Brand Icons
  static const String nikeLogo = "assets/icons/brands/nike.png";
  static const String adidasLogo = "assets/icons/brands/adidas-logo.png";
  static const String appleLogo = "assets/icons/brands/apple-logo.png";
  static const String jordanLogo = "assets/icons/brands/jordan-logo.png";
  static const String pumaLogo = "assets/icons/brands/puma-logo.png";
  static const String zaraLogo = "assets/icons/brands/zara-logo.png";
  static const String kenwoodLogo = "assets/icons/brands/kenwood-logo.png";
  static const String hermanMillerLogo = "assets/icons/brands/herman-miller-logo.png";
  static const String ikeaLogo = "assets/icons/brands/ikea_logo.png";
  static const String acerlogo = "assets/icons/brands/acer_logo.png";

  // -- Animations
  static const String productsIllustration = "assets/images/animations/sammy-line-workout.gif";
  static const String productsSaleIllustration = "assets/images/animations/sammy-line-sale.png";
  static const String staticSuccessIllustration = "assets/images/animations/sammy-line-success.png";
  static const String deliveredInPlaneIllustration = "assets/images/animations/sammy-line-come-back-later.png";
  static const String deliveredEmailIllustration = "assets/images/animations/sammy-line-man-receives-a-mail.png";
  static const String verifyIllustration = "assets/images/animations/sammy-line-travel-backpack-with-passport-and-air-ticket.gif";

  // -- OnBoarding Texts
  static const String onBoardingImage1 = "assets/images/onboard/onboard_pic_1.png";
  static const String onBoardingImage2 = "assets/images/onboard/onboard_pic_2.png";
  // static const String onBoardingImage3 = "assets/images/onboard/";

  // -- Products
  static const String productImage1 = "assets/images/products/nike-shoes.png";
  static const String productImage2 = "assets/images/products/product-1.png";
  static const String productImage3 = "assets/images/products/product-jacket.png";
  static const String productImage4 = "assets/images/products/product-jeans.png";
  static const String productImage5 = "assets/images/products/product-shirt.png";
  static const String productImage6 = "assets/images/products/product-slippers.png";
  static const String productImage7 = "assets/images/products/NikeAirJOrdonBlackRed.png";
  static const String productImage8 = "assets/images/products/NikeAirJOrdonOrange.png";
  static const String productImage9 = "assets/images/products/NikeAirJordonwhiteMagenta.png";
  static const String productImage10 = "assets/images/products/NikeAirJOrdonWhiteRed.png";
  static const String productImage11 = "assets/images/products/samsung_s9_mobile.png";
  static const String productImage12 = "assets/images/products/samsung_s9_mobile_withback.png";
  static const String productImage13 = "assets/images/products/samsung_s9_mobile_back.png";
  static const String productImage14 = "assets/images/products/iphone8_mobile.png";
  static const String productImage15 = "assets/images/products/iphone8_mobile_back.png";
  static const String productImage16 = "assets/images/products/iphone8_mobile_dual_side.png";
  static const String productImage17 = "assets/images/products/iphone8_mobile_front.png";
  static const String productImage18 = "assets/images/products/tomi_dogfood.png";
  static const String productImage19 = "assets/images/products/NikeAirJordonSingleBlue.png";
  static const String productImage20 = "assets/images/products/NikeAirJordonSingleOrange.png";
  static const String productImage21 = "assets/images/products/NikeAirMax.png";
  static const String productImage22 = "assets/images/products/NikeBasketballShoeGreenBlack.png";
  static const String productImage23 = "assets/images/products/NikeWildhorse.png";
  static const String productImage24 = "assets/images/products/tracksuit_black.png";
  static const String productImage25 = "assets/images/products/tracksuit_blue.png";
  static const String productImage26 = "assets/images/products/tracksuit_red.png";
  static const String productImage27 = "assets/images/products/trcksuit_parrotgreen.png";
  static const String productImage28 = "assets/images/products/Adidas_Football.png";
  static const String productImage29 = "assets/images/products/baseball_bat.png";
  static const String productImage30 = "assets/images/products/cricket_bat.png";
  static const String productImage31 = "assets/images/products/tennis_racket.png";
  static const String productImage32 = "assets/images/products/bedroom_bed.png";
  static const String productImage33 = "assets/images/products/bedroom_lamp.png";
  static const String productImage34 = "assets/images/products/bedroom_sofa.png";
  static const String productImage35 = "assets/images/products/bedroom_wardrobe.png";
  static const String productImage36 = "assets/images/products/kitchen_counter.png";
  static const String productImage37 = "assets/images/products/kitchen_dining table.png";
  static const String productImage38 = "assets/images/products/kitchen_refrigerator.png";
  static const String productImage39 = "assets/images/products/office_chair_1.png";
  static const String productImage40 = "assets/images/products/office_chair_2.png";
  static const String productImage41 = "assets/images/products/office_desk_1.png";
  static const String productImage42 = "assets/images/products/office_desk_2.png";
  static const String productImage43 = "assets/images/products/bedroom_bed_black.png";
  static const String productImage44 = "assets/images/products/bedroom_bed_grey.png";
  static const String productImage45 = "assets/images/products/bedroom_bed_simple_brown.png";
  static const String productImage46 = "assets/images/products/bedroom_bed_with_comforter.png";
  static const String productImage47 = "assets/images/products/acer_laptop_1.png";
  static const String productImage48 = "assets/images/products/acer_laptop_2.png";
  static const String productImage49 = "assets/images/products/acer_laptop_3.png";
  static const String productImage50 = "assets/images/products/acer_laptop_4.png";
  static const String productImage51 = "assets/images/products/iphone_13_pro.png";
  static const String productImage52 = "assets/images/products/iphone_14_pro.png";
  static const String productImage53 = "assets/images/products/iphone_14_white.png";
  static const String productImage54 = "assets/images/products/product-shirt_blue_1.png";
  static const String productImage55 = "assets/images/products/product-shirt_blue_2.png";
  static const String productImage56 = "assets/images/products/acer_laptop_var_1.png";
  static const String productImage57 = "assets/images/products/acer_laptop_var_2.png";
  static const String productImage58 = "assets/images/products/acer_laptop_var_3.png";
  static const String productImage59 = "assets/images/products/acer_laptop_var_4.png";
  static const String productImage60 = "assets/images/products/tshirt_red_collar.png";
  static const String productImage61 = "assets/images/products/tshirt_yellow_collar.png";
  static const String productImage62 = "assets/images/products/tshirt_green_collar.png";
  static const String productImage63 = "assets/images/products/tshirt_blue_collar.png";
  static const String productImage64 = "assets/images/products/leather_jacket_1.png";
  static const String productImage65 = "assets/images/products/leather_jacket_2.png";
  static const String productImage66 = "assets/images/products/leather_jacket_3.png";
  static const String productImage67 = "assets/images/products/leather_jacket_4.png";
  static const String productImage68 = "assets/images/products/tshirt_blue_without_collar_back.png";
  static const String productImage69 = "assets/images/products/tshirt_blue_without_collar_front.png";
  static const String productImage70 = "assets/images/products/iphone_12_red.png";
  static const String productImage71 = "assets/images/products/iphone_12_blue.png";
  static const String productImage72 = "assets/images/products/iphone_12_green.png";
  static const String productImage73 = "assets/images/products/iphone_12_black.png";
  static const String productImage74 = "assets/images/products/slipper-product-1.png";
  static const String productImage75 = "assets/images/products/slipper-product-2.png";
  static const String productImage76 = "assets/images/products/slipper-product-3.png";
  static const String productImage77= "assets/images/products/slipper-product.png";




  // -- Product Reviews
  static const String userProfileImage1 = "assets/images/reviews/review_profile_image_1.jpg";
  static const String userProfileImage2 = "assets/images/reviews/review_profile_image_2.jpeg";
  static const String userProfileImage3 = "assets/images/reviews/review_profile_image_3.jpeg";

  //Banners
  static const String promoBanner1 = "assets/images/products/promo-banner-1.png";
  static const String promoBanner2 = "assets/images/products/promo-banner-2.png";
  static const String promoBanner3 = "assets/images/products/promo-banner-3.png";
  static const String banner1 = "assets/images/banners/banner_1.jpg";
  static const String banner2 = "assets/images/banners/banner_2.jpg";
  static const String banner3 = "assets/images/banners/banner_3.jpg";
  static const String banner4 = "assets/images/banners/banner_4.jpg";
  static const String banner5 = "assets/images/banners/banner_5.jpg";
  static const String banner6 = "assets/images/banners/banner_6.jpg";
  static const String banner7 = "assets/images/banners/banner_7.jpg";
  static const String banner8 = "assets/images/banners/banner_8.jpg";


  //Profile
  static const String user = "assets/images/content/user.png";

  // -- Payment Methods
  static const String applePay = "assets/icons/payment_methods/apple-pay.png";
  static const String googlePay = "assets/icons/payment_methods/google-pay.png";
  static const String creditCard = "assets/icons/payment_methods/credit-card.png";
  static const String masterCard = "assets/icons/payment_methods/master-card.png";
  static const String paypal = "assets/icons/payment_methods/paypal.png";
  static const String visa = "assets/icons/payment_methods/visa.png";
  static const String paystack = "assets/icons/payment_methods/paystack.png";
  static const String paytm = "assets/icons/payment_methods/paytm.png";
  static const String successfulPaymentIcon = "assets/icons/payment_methods/successful_payment_icon.png";
}

