import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class SampleExam extends StatelessWidget {
  const SampleExam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pdf Viewr'),
        ),
        body: SfPdfViewer.asset('assets/images/examq.pdf'));
  }
}
