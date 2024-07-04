import 'package:flutter/material.dart';

import '../actions/add_comment/add_comment.dart';
import '../actions/get_comments/get_comments.dart';
import '../models/comment/comment.dart';
import 'containers/comments_container.dart';
import 'utils/extensions.dart';

class ForumPage extends StatefulWidget {
  const ForumPage({super.key});

  @override
  State<ForumPage> createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  final TextEditingController _messageController = TextEditingController();

  String _formatDate(DateTime dateTime) {
    return '${dateTime.day}.${dateTime.month}.${dateTime.year}, ${dateTime.hour}:${dateTime.minute}';
  }

  @override
  Widget build(BuildContext context) {
    return CommentsContainer(builder: (BuildContext context, List<Comment>? comments) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              if (context.store.state.user!.role == 'admin') {
                Navigator.pushReplacementNamed(context, '/adminHomeScreenPage');
              } else if (context.store.state.user!.role == 'user') {
                Navigator.pushReplacementNamed(context, '/homeScreenPage');
              }
            },
          ),
          title: const Text('Forum'),
        ),
        body: comments == null || comments.isEmpty
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 256),
                  const Center(child: Text('No comments found.')),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              maxLines: null,
                              controller: _messageController,
                              decoration: const InputDecoration(
                                hintText: 'Enter your message',
                              ),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.send),
                            onPressed: () {
                              if (_messageController.text.isNotEmpty) {
                                context.dispatch(AddComment(
                                    text: _messageController.text,
                                    createdAt: DateTime.now(),
                                    idUser: context.store.state.user!.uid,
                                    firstNameUser: context.store.state.user!.firstName,
                                    lastNameUser: context.store.state.user!.lastName));
                                context.dispatch(const GetComments());
                                _messageController.clear();
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            : Column(
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      reverse: true,
                      itemCount: comments.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Comment comment = comments[index];
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Card(
                            color: const Color.fromRGBO(112, 197, 225, 1),
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    '${comment.firstNameUser} ${comment.lastNameUser}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    comment.text,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    _formatDate(comment.createdAt),
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            maxLines: null,
                            controller: _messageController,
                            decoration: const InputDecoration(
                              hintText: 'Enter your message',
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.send),
                          onPressed: () {
                            if (_messageController.text.isNotEmpty) {
                              context.dispatch(AddComment(
                                  text: _messageController.text,
                                  createdAt: DateTime.now(),
                                  idUser: context.store.state.user!.uid,
                                  firstNameUser: context.store.state.user!.firstName,
                                  lastNameUser: context.store.state.user!.lastName));
                              context.dispatch(const GetComments());
                              _messageController.clear();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      );
    });
  }
}
