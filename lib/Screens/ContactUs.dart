import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  // WebViewController webViewController = WebViewController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Terms and Condition'),
        ),

        body: WebView(
          initialUrl: 'https://learningx.in/about',
          javascriptMode: JavascriptMode.unrestricted,
        ),
    );
  }
}
