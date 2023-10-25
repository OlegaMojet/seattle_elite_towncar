import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seattle_elite_towncar/core/utils/utils.dart';
import 'package:seattle_elite_towncar/core/widgets/back_button.dart';
import 'package:seattle_elite_towncar/modules/user/features/profile/presentation/widgets/profile_contact_element.dart';
import 'package:url_launcher/url_launcher.dart';

class UserProfileContactInformation extends StatelessWidget {
  const UserProfileContactInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        leading: AppBackButton(
          onTap: context.pop,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact information',
              style: context.theme.textTheme.headlineSmall,
            ),
            const SizedBox(height: 32),
            ProfileContactElement(
              title: 'Eastside Division',
              subtitle: '4253726570',
              onTap: () async {
                if (context.mounted) {
                  await launchUrl(
                    Uri(scheme: 'tel', path: '4253726570'),
                  );
                }
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(
                color: AppColors.lightGray,
                thickness: 1,
              ),
            ),
            ProfileContactElement(
              title: 'Southside Division (Airport)',
              subtitle: '206-453-9128',
              onTap: () async {
                if (context.mounted) {
                  await launchUrl(
                    Uri(scheme: 'tel', path: '2064539128'),
                  );
                }
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(
                color: AppColors.lightGray,
                thickness: 1,
              ),
            ),
            ProfileContactElement(
              title: 'Email',
              subtitle: 'INFO@SEATTLEELITETOWNCAR.COM',
              onTap: () async {
                if (context.mounted) {
                  await launchUrl(
                    Uri(scheme: 'mailto', path: 'info@seattleelitetowncar.com'),
                  );
                }
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(
                color: AppColors.lightGray,
                thickness: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
