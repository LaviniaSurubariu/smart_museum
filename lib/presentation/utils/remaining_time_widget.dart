import 'package:flutter/material.dart';

class RemainingTimeWidget extends StatefulWidget {
  const RemainingTimeWidget({super.key, required this.endSubscriptionDate});

  final DateTime endSubscriptionDate;

  @override
  State<RemainingTimeWidget> createState() => _RemainingTimeWidgetState();
}

class _RemainingTimeWidgetState extends State<RemainingTimeWidget> {
  late Stream<Duration> remainingTimeStream;

  @override
  void initState() {
    super.initState();
    remainingTimeStream = _remainingTimeStream();
  }

  Stream<Duration> _remainingTimeStream() async* {
    while (true) {
      yield widget.endSubscriptionDate.difference(DateTime.now());
      await Future<dynamic>.delayed(const Duration(seconds: 1));
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Duration>(
      stream: remainingTimeStream,
      builder: (BuildContext context, AsyncSnapshot<Duration> snapshot) {
        if (!snapshot.hasData) {
          return const Text('Calculating...', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold));
        }

        final Duration remainingTime = snapshot.data!;
        if (remainingTime.isNegative) {
          return const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                title: Text(
                  'You do not have an active subscription',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(
                  Icons.timer_off,
                  color: Color.fromRGBO(112, 197, 225, 1),
                ),
              ),
            ],
          );
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              title:
                  const Text('Your subscription ends in:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              subtitle: Text(
                '${remainingTime.inDays} days ${remainingTime.inHours % 24} hours ${remainingTime.inMinutes % 60} minutes ${remainingTime.inSeconds % 60} seconds',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              leading: const Icon(Icons.timer, color: Color.fromRGBO(112, 197, 225, 1)),
            ),
          ],
        );
      },
    );
  }
}
