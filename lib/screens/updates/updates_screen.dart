import 'package:flutter/material.dart';
import 'package:whoishe/common/widgets/appbar.dart';
import 'package:whoishe/screens/updates/components/body.dart';
import 'package:whoishe/screens/updates/components/widgets/floating_action_btn.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Updates'),
      body: const UpdatesScreenBody(),
      floatingActionButton: const AddStatusNoteorAddMedia(),
    );
  }
}
