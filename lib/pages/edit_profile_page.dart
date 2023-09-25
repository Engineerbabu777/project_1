import 'package:flutter/material.dart';
import 'package:project_1/colors.dart';
import 'package:project_1/components/app_textfield.dart';
import 'package:project_1/components/toolbar.dart';
import 'package:project_1/components/user_avatar.dart';
import 'package:project_1/styles_text.dart';

enum Gender {
  none,
  male,
  female,
  other,
}

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Edit Profile',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: UserAvatar(height: 120, width: 120),
                  ),
                  Positioned(
                    right: 8,
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: ColorConstants.primary,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            6,
                          ),
                        ),
                      ),
                      child: Icon(
                        Icons.edit,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 55,
              ),
              AppTextField(placeholder: 'First name'),
              SizedBox(
                height: 12,
              ),
              AppTextField(placeholder: 'Last name'),
              SizedBox(
                height: 12,
              ),
              AppTextField(placeholder: 'Phone number'),
              SizedBox(
                height: 12,
              ),
              AppTextField(placeholder: 'Location'),
              SizedBox(
                height: 12,
              ),
              AppTextField(placeholder: 'Birthday'),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.all(Radius.circular(16))
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Gender'),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          contentPadding: EdgeInsets.all(0),
visualDensity: VisualDensity(
  horizontal: VisualDensity.minimumDensity,
  vertical: VisualDensity.minimumDensity,
),
                          value: Gender.male,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = Gender.male;
                            });
                          },
                          title: Text(
                            'Male',
                          ),
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          contentPadding: EdgeInsets.all(0),
                          visualDensity: VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.minimumDensity,
                          ),
                          value: Gender.female,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = Gender.female;
                            });
                          },
                          title: Text(
                            'Female',
                          ),
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          contentPadding: EdgeInsets.all(0),
                          visualDensity: VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.minimumDensity,
                          ),
                          value: Gender.other,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = Gender.other;
                            });
                          },
                          title: Text(
                            'other',
                          ),
                        ),
                      )
                    ],
                  ),
                ],
                )

              ),
            ],
          ),
        ),
      ),
    );
  }
}
