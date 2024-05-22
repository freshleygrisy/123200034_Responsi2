import 'package:flutter/material.dart';
import 'jobdata.dart'; 
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';


class JobDetail extends StatelessWidget {
  final Jobs job; // Model data pekerjaan

  JobDetail({required this.job}); // Konstruktor dengan parameter wajib

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Job Details'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              job.jobTitle ?? '',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              job.companyName ?? '',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Description:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Html(
              data: job.jobDescription ?? '',
              style: {
                'div': Style(fontSize: FontSize(16.0)),
                'p': Style(fontSize: FontSize(16.0)),
                'li': Style(fontSize: FontSize(16.0)),
              },
            ),
            SizedBox(height: 16),
            Text(
              'How to apply:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            // Html(
            //   data: job.howToApply ?? '',
            //   style: {
            //     'div': Style(fontSize: FontSize(16.0)),
            //     'p': Style(fontSize: FontSize(16.0)),
            //     'li': Style(fontSize: FontSize(16.0)),
            //   },
            // ),
            SizedBox(height: 16),
            Text(
              'Location:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              job.jobGeo ?? '',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Salary:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '£${job.annualSalaryMin ?? ''} - £${job.annualSalaryMax ?? ''} ${job.salaryCurrency ?? ''}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
