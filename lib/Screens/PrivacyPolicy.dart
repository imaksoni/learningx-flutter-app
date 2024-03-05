import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  // WebViewController webViewController = WebViewController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Terms and Condition'),
        ),
        body: WebView(
          initialUrl: 'https://learningx.in/privacy-policy',
          javascriptMode: JavascriptMode.unrestricted,
        ),
    );
  }
}

