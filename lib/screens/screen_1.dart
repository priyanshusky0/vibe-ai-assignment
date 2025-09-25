import 'package:assignment/widgets/activity_item.dart';
import 'package:assignment/widgets/stats_card.dart';
import 'package:flutter/material.dart';
import 'package:assignment/widgets/family_member.dart';



class FamilyDashboard extends StatelessWidget {
  const FamilyDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F7),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back, Sarah\nJohnson',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.1,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Here's what's happening with The Johnson\nFamily",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                  height: 1.3,
                ),
              ),
              SizedBox(height: 24),
              
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 26, 128, 238),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Invite Member',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32),
              
              StatsCard(
                title: 'Family Members',
                number: '4',
                subtitle: '2 online now',
                icon: Icons.people_outline,
              ),
              SizedBox(height: 20),
              
              StatsCard(
                title: 'Active Alarms',
                number: '8',
                subtitle: '3 scheduled today',
                icon: Icons.access_time,
              ),
              SizedBox(height: 20),
              
              StatsCard(
                title: 'Shared Items',
                number: '24',
                subtitle: 'Passwords & docs',
                icon: Icons.security_rounded,
              ),
              SizedBox(height: 20),
              
              StatsCard(
                title: 'Monthly Expenses',
                number: '\$2,340',
                subtitle: '+8% from last month',
                icon: Icons.credit_card,
              ),
              SizedBox(height: 32),
              
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: .05),
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
                        Icon(
                          Icons.people_outline,
                          color: Colors.black87,
                          size: 24,
                        ),
                        SizedBox(width: 12),
                        Text(
                          'Family Members',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Manage your family circle',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[500],
                      ),
                    ),
                    SizedBox(height: 24),
                    
                    FamilyMember(
                      'SJ',
                      'Sarah Johnson',
                      'now',
                      Colors.green,
                      'Owner'

                    ),
                    SizedBox(height: 20),
                    FamilyMember(
                      'MJ',
                      'Mike Johnson',
                      '2 hours ago',
                      Colors.orange,
                      'Admin',
                    ),
                    SizedBox(height: 20),
                    FamilyMember(
                      'EJ',
                      'Emma Johnson',
                      '5 minutes ago',
                      Colors.green,
                      'Member',
                    ),
                    SizedBox(height: 20),
                    FamilyMember(
                      'AJ',
                      'Alex Johnson',
                      '1 day ago',
                      Colors.grey,
                      'Member',
                    ),
                  ],
                ),
              ),
              
              SizedBox(height: 32),
              
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: .05),
                      blurRadius: 10,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recent Activity',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Latest family updates',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[500],
                      ),
                    ),
                    SizedBox(height: 24),
                    
                    ActivityItem(
                      Icons.access_time_outlined,
                      "Mike Johnson created alarm 'Family Dinner'",
                      '10 minutes ago',
                      Color(0xFF007AFF),
                    ),
                    SizedBox(height: 24),
                    ActivityItem(
                      Icons.photo_library_outlined,
                      "Emma Johnson uploaded 3 photos to 'Summer Vacation'",
                      '1 hour ago',
                      Color(0xFF007AFF),
                    ),
                    SizedBox(height: 24),
                    ActivityItem(
                      Icons.check_circle_outline,
                      "Alex Johnson completed task 'Take out trash'",
                      '2 hours ago',
                      Color(0xFF34C759),
                    ),
                    SizedBox(height: 24),
                   ActivityItem(
                      Icons.attach_money,
                      "Sarah Johnson added expense '\$45.50 - Groceries'",
                      '3 hours ago',
                      Color(0xFF34C759),
                    ),
                  ],
                ),
              ),
              
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}


 