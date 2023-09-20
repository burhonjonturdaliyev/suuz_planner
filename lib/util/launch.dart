import 'dart:io';

import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> Clicker(String url) async {
  try {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception("Cannot launch $url");
    }
  } on SocketException catch (_) {
    print("SocketException: Unable to establish a network connection.");
  } on PlatformException catch (e) {
    print("PlatformException: ${e.message}");
  } catch (e) {
    print("Generic Exception: $e");
  }
}
