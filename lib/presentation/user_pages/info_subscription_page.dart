import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../actions/set/set.dart';
import '../utils/extensions.dart';
import '../utils/remaining_time_widget.dart';

class InfoSubscriptionPage extends StatefulWidget {
  const InfoSubscriptionPage({super.key});

  @override
  State<InfoSubscriptionPage> createState() => _InfoSubscriptionPageState();
}

class _InfoSubscriptionPageState extends State<InfoSubscriptionPage> {
  DateTime? startSubscriptionDate;
  DateTime? endSubscriptionDate;

  Future<void> _waitForNumberOfUsers() async {
    while (context.store.state.startSubscriptionDate == null || context.store.state.endSubscriptionDate == null) {
      await Future<dynamic>.delayed(const Duration(milliseconds: 100));
    }
    setState(() {
      startSubscriptionDate = context.store.state.startSubscriptionDate;
      endSubscriptionDate = context.store.state.endSubscriptionDate;
    });
  }

  int calculateSubscriptionDays(DateTime start, DateTime end) {
    int days = end.difference(start).inDays;
    if (days == 0 && end.difference(start).inMilliseconds > 0) {
      days = 1;
    }
    return days;
  }

  String formatDate(DateTime date) {
    return DateFormat('dd MMM yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _waitForNumberOfUsers(),
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        } else if (snapshot.hasError) {
          return Scaffold(
            body: Center(child: Text('Error: ${snapshot.error}')),
          );
        } else {
          int subscriptionDays = 0;
          String formattedStartDate = '';
          if (startSubscriptionDate != null && endSubscriptionDate != null) {
            subscriptionDays = calculateSubscriptionDays(startSubscriptionDate!, endSubscriptionDate!);
            formattedStartDate = formatDate(startSubscriptionDate!);
          }
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/profilePage');
                },
              ),
              title: const Text('Subscription Details'),
            ),
            body: endSubscriptionDate == null
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const SizedBox(height: 28),
                            Column(
                              children: <Widget>[
                                const Text(
                                  'Here you can see more details about your subscription',
                                  style: TextStyle(
                                    color: Color.fromRGBO(124, 163, 161, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 16),
                                RemainingTimeWidget(endSubscriptionDate: endSubscriptionDate!),
                                if (endSubscriptionDate!.isAfter(DateTime.now()))
                                  Column(
                                    children: <Widget>[
                                      const SizedBox(height: 16),
                                      ListTile(
                                        title: Text(
                                          'You have a $subscriptionDays day subscription starting from $formattedStartDate',
                                          style: const TextStyle(
                                            fontSize: 16,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        leading: const Icon(
                                          Icons.celebration_rounded,
                                          color: Colors.purple,
                                        ),
                                      ),
                                    ],
                                  )
                                else
                                  Column(
                                    children: <Widget>[
                                      const SizedBox(height: 16),
                                      const Text(
                                        'You can renew your subscription with only one click!',
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 32),
                                      ElevatedButton(
                                        onPressed: () {
                                          context.dispatch(const SetRouteSubscriptionIndex(1));
                                          Navigator.pushReplacementNamed(context, '/subscriptionPage');
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromRGBO(112, 197, 225, 1),
                                          side: BorderSide.none,
                                        ),
                                        child:
                                            const Text('Try premium account ', style: TextStyle(color: Colors.black)),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          );
        }
      },
    );
  }
}
