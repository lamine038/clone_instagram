import 'package:flutter/material.dart';
import 'package:instagram/model/comment.dart';

class CommentSection extends StatelessWidget {
  final List<Comment> comments;

  const CommentSection({super.key, required this.comments});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: comments.map((comment) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage(comment.userImage),
              ),
              SizedBox(width: 8),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: comment.username,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: " ${comment.text}",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "${comment.date.hour}:${comment.date.minute}",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
