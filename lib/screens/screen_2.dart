import 'package:assignment/widgets/task_item.dart';
import 'package:flutter/material.dart';

class TaskManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFF5F5F5),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(16),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withValues(alpha: .1),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_today_outlined,
                                color: Colors.black87, size: 24),
                            SizedBox(width: 12),
                            Text(
                              'Upcoming Tasks',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Tasks due soon',
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey[600]),
                        ),
                        SizedBox(height: 24),
                        TaskItem(
                          title: 'Doctor appointment',
                          assignedTo: 'Emma Johnson',
                          dueTime: 'Today 3:00 PM',
                          priority: 'high',
                          priorityColor: Color(0xFFFF4444),
                        ),
                        SizedBox(height: 20),
                        TaskItem(
                          title: 'Pay utility bill',
                          assignedTo: 'Mike Johnson',
                          dueTime: 'Tomorrow',
                          priority: 'medium',
                          priorityColor: Color(0xFF999999),
                        ),
                        SizedBox(height: 20),
                        TaskItem(
                          title: 'Weekly grocery shopping',
                          assignedTo: 'Sarah Johnson',
                          dueTime: 'Saturday',
                          priority: 'low',
                          priorityColor: Color(0xFF999999),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withValues(alpha: .1),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Quick Actions',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Common family coordination tasks',
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey[600]),
                        ),
                        SizedBox(height: 24),
                        Column(
                          children: [
                            _buildQuickActionButton(
                                icon: Icons.access_time_outlined,
                                label: 'Create Alarm'),
                            SizedBox(height: 12),
                            _buildQuickActionButton(
                                icon: Icons.attach_money, label: 'Add Expense'),
                            SizedBox(height: 12),
                            _buildQuickActionButton(
                                icon: Icons.image_outlined, label: 'Upload Media'),
                            SizedBox(height: 12),
                            _buildQuickActionButton(
                                icon: Icons.chat_bubble_outline, label: 'Ask AI'),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 16),

                 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  

  Widget _buildQuickActionButton({
    required IconData icon,
    required String label,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, size: 32, color: Colors.grey[700]),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}