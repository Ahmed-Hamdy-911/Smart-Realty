import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:smart_realty/core/theme/colors/colors.dart';
import 'package:smart_realty/features/chats/presentation/views/chats_view.dart';
import 'package:smart_realty/features/privacy/privacy_policy_view.dart';
import 'package:smart_realty/features/profile/presentation/view/userProfile/user_profile_view.dart';
import 'package:smart_realty/features/property/presentation/view/add_property_view.dart';
import 'package:smart_realty/generated/l10n.dart';

import '../../../../core/components/custom_bottom_sheet.dart';
import '../../../../core/widgets/custom_text.dart';
import 'widgets/custom_profile_icon.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          ListTile(
            contentPadding: EdgeInsetsDirectional.zero,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserProfileView()),
              );
            },
            leading: const CircleAvatar(
              radius: 40,
            ),
            title: CustomText(
              text: "Ahmed Hamdy",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              customStyle: Theme.of(context).textTheme.bodyMedium,
            ),
            subtitle: CustomText(
              text: "Admin",
              customStyle: Theme.of(context).textTheme.bodySmall,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: AppColor.kMainColor,
            ),
          ),
          CustomBuildProfileItem(
            iconLeading: Icons.add_business_outlined,
            itemTitle: S.of(context).AddProperties,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddPropertyView(),
                  ));
            },
          ),
          CustomBuildProfileItem(
            iconLeading: Icons.business,
            itemTitle: S.of(context).MyProperties,
            onTap: () {},
          ),
          CustomBuildProfileItem(
            iconLeading: IconlyLight.chat,
            itemTitle: S.of(context).Chats,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatsView(),
                ),
              );
            },
          ),
          CustomBuildProfileItem(
            iconLeading: Icons.payment_rounded,
            itemTitle: S.of(context).PaymentMethod,
            onTap: () {},
          ),
          CustomBuildProfileItem(
            iconLeading: IconlyLight.setting,
            itemTitle: S.of(context).Settings,
            onTap: () {},
          ),
          CustomBuildProfileItem(
            iconLeading: IconlyLight.info_circle,
            itemTitle: S.of(context).HelpCenter,
            onTap: () {},
          ),
          CustomBuildProfileItem(
            iconLeading: Icons.privacy_tip_outlined,
            itemTitle: S.of(context).PrivacyPolicy,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PrivacyPolicyView(),
                  ));
            },
          ),
          CustomBuildProfileItem(
            iconLeading: IconlyLight.add_user,
            itemTitle: S.of(context).InviteFriends,
            onTap: () {},
          ),
          CustomBuildProfileItem(
            iconLeading: IconlyLight.logout,
            itemTitle: S.of(context).LogOut,
            onTap: () {
              showConfirmationBottomSheet(
                context,
                title: S.of(context).Logout,
                height: MediaQuery.of(context).size.height * 0.26,
                descriptionWidget: CustomText(
                  text: S.of(context).LogoutConfirmation,
                ),
                titleOfConfirm: S.of(context).ConfirmLogout,
                onConfirm: () {},
              );
            },
          ),
        ],
      ),
    );
  }
}
