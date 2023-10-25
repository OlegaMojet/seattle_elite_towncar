import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/core/widgets/app_dropdown.dart';
import 'package:seattle_elite_towncar/core/widgets/back_button.dart';

class UserProfileNotifications extends StatefulWidget {
  const UserProfileNotifications({super.key});

  @override
  State<UserProfileNotifications> createState() =>
      _UserProfileNotificationsState();
}

class _UserProfileNotificationsState extends State<UserProfileNotifications> {
  final _notifyMeDropdownKey = GlobalKey<FormFieldState<String>>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        leading: AppBackButton(onTap: context.pop),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Notifications',
                  style: context.theme.textTheme.headlineSmall,
                ),
                Switch(
                  inactiveThumbColor: AppColors.mediumBlue,
                  inactiveTrackColor: AppColors.lightGray,
                  value: false,
                  onChanged: (value) {},
                ),
              ],
            ),
            const SizedBox(height: 32),
            AppDropdown(
              label: 'Notify me',
              fieldKey: _notifyMeDropdownKey,
              items: const [
                'For 1 hours',
                'For 2 hours',
                'For 1 day',
              ],
            ),
            const Spacer(),
            SizedBox(
              width: context.width,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
