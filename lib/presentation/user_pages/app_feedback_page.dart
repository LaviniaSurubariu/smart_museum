import 'package:flutter/material.dart';
import 'package:open_mail_app/open_mail_app.dart';

class AppFeedbackPage extends StatefulWidget {
  const AppFeedbackPage({super.key});

  @override
  State<AppFeedbackPage> createState() => _AppFeedbackPageState();
}

class _AppFeedbackPageState extends State<AppFeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/profilePage');
          },
        ),
        title: const Text('Application Feedback'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 28),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.feedback_outlined, color: Color.fromRGBO(112, 197, 225, 1)),
                          title: Text('Tell us what you think about this application', style: TextStyle(fontSize: 14)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 16.0, right: 16.0),
                          child: Divider(
                            color: Colors.black38,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                          child: ElevatedButton(
                            onPressed: () async {
                              final EmailContent email = EmailContent(
                                to: <String>[
                                  'smartmuseumemailservice@gmail.com',
                                ],
                                subject: 'Feedback on Smart Museum App',
                              );

                              final OpenMailAppResult result = await OpenMailApp.composeNewEmailInMailApp(
                                  nativePickerTitle: 'Select email app to compose', emailContent: email);
                              if (!result.didOpen && !result.canOpen) {
                                showNoMailAppsDialog(context);
                              } else if (!result.didOpen && result.canOpen) {
                                showDialog<dynamic>(
                                  context: context,
                                  builder: (_) => MailAppPickerDialog(
                                    mailApps: result.options,
                                    emailContent: email,
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black54,
                              minimumSize: const Size(double.infinity, 50),
                            ),
                            child: const Text('Give Feedback', style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showNoMailAppsDialog(BuildContext context) {
    showDialog<dynamic>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Open Mail App'),
          content: const Text('No mail apps installed'),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      },
    );
  }
}
