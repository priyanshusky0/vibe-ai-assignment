import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String title;
  final String assignedTo;
  final String dueTime;
  final String priority;
  final Color priorityColor;

  const TaskItem({
    Key? key,
    required this.title,
    required this.assignedTo,
    required this.dueTime,
    required this.priority,
    required this.priorityColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87)),
              SizedBox(height: 4),
              Text('Assigned to: $assignedTo',
                  style: TextStyle(fontSize: 14, color: Colors.grey[600])),
              SizedBox(height: 4),
              Text(dueTime,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue[600],
                      fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: priorityColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(priority,
              style: TextStyle(
                  color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500)),
        ),
      ],
    );
  }
}