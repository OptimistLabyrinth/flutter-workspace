import 'package:flutter/material.dart';
import 'package:flutter_application_04/pages/file_upload/file_upload_page.dart';
import 'package:flutter_application_04/pages/login/login_page.dart';
import 'package:flutter_application_04/pages/my_home/my_home_page.dart';
import 'package:flutter_application_04/pages/video_stream/video_stream_page.dart';
import 'package:flutter_application_04/routes/names.dart';
import 'package:flutter_application_04/routes/names_key.dart';

Route<dynamic>? onGenerateRouteBody(RouteSettings settings) {
  if (settings.name == null || settings.name == routeNames[namesKeyHome]) {
    return MaterialPageRoute(
      builder: (BuildContext context) => const MyHomePage(
        title: 'Flutter Toy Project',
      ),
    );
  }
  final uri = Uri.parse(settings.name ?? routeNames[namesKeyHome]!);
  if (uri.pathSegments.length == 1) {
    if (uri.pathSegments[0] == routeNames[namesKeyLogin]) {
      return MaterialPageRoute(
        builder: (BuildContext context) => const LoginPage(
          title: 'Login Page',
        ),
      );
    }
    if (uri.pathSegments[0] == routeNames[namesKeyFileUpload]) {
      return MaterialPageRoute(
        builder: (BuildContext context) => const FileUploadPage(
          title: 'File Upload Page',
        ),
      );
    }
    if (uri.pathSegments[0] == routeNames[namesKeyVideoStream]) {
      return MaterialPageRoute(
        builder: (BuildContext context) => const VideoStreamPage(
          title: 'Video Stream Page',
        ),
      );
    }
  }
}
