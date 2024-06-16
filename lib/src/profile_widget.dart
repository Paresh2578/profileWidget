import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class ProfileWidget extends StatelessWidget {
  final String name;
  final String role;
  final String image;
  String? githubLink;
  String? linkedinLink;
  String? whatsappLink;
  String? instagramLink;
  Color? background;
  Color? color;
  double? height;
  double? width;
  BoxShadow? shadow;
  double? nameFontSize;
  double? roleFontSize;
  double? imageRadius;
  EdgeInsetsGeometry? padding;
  EdgeInsetsGeometry? margin;
  ProfileWidget(
      {super.key,
      required this.name,
      required this.role,
      this.githubLink,
      this.linkedinLink,
      this.whatsappLink,
      this.instagramLink,
      required this.image,
      this.background = Colors.white,
      this.color = Colors.black,
      this.height,
      this.width,
      this.shadow = const BoxShadow(
          offset: Offset(0, 5),
          color: Colors.black12,
          spreadRadius: 2,
          blurRadius: 20),
      this.nameFontSize = 25,
      this.roleFontSize = 18,
      this.imageRadius = 80,
      this.padding = const EdgeInsets.only(top: 10),
      this.margin = const EdgeInsets.symmetric(horizontal: 20)});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [shadow!]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
              radius: imageRadius,
              child: ClipOval(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover)),
                ),
              )),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.w500,
                fontSize: nameFontSize,
                color: color),
            textAlign: TextAlign.center,
          ),
          Text(
            role,
            style: GoogleFonts.nunito(
              fontSize: roleFontSize,
              color: color,
            ),
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //instagram
              githubLink != null
                  ? socialMediaIcon(
                      path: 'assets/icons/github.png', url: githubLink!)
                  : const SizedBox(),
              linkedinLink != null
                  ? socialMediaIcon(
                      path: 'assets/icons/linkedin.png', url: linkedinLink!)
                  : const SizedBox(),
              instagramLink != null
                  ? socialMediaIcon(
                      path: 'assets/icons/instagram.png', url: instagramLink!)
                  : const SizedBox(),
              whatsappLink != null
                  ? socialMediaIcon(
                      path: 'assets/icons/whatsapp.png', url: whatsappLink!)
                  : const SizedBox(),
            ],
          )
        ],
      ),
    );
  }

  Widget socialMediaIcon({required String path, required String url}) {
    return IconButton(
        onPressed: () {
          launchUrl(
            Uri.parse(url),
            mode: LaunchMode.externalApplication,
          );
        },
        icon: Image.asset(
          path,
          height: 20,
        ));
  }
}
