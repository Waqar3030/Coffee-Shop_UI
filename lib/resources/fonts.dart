import '../export_all.dart';

class AppTextStyle {
  dynamic fontSize;
  static TextStyle get heading => GoogleFonts.pacifico(
        fontSize: 50,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      );
  static TextStyle get medium =>
      GoogleFonts.abel(fontSize: 28, fontWeight: FontWeight.w500);
  static TextStyle get small => GoogleFonts.pacifico(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Colors.white.withOpacity(0.8));
}
