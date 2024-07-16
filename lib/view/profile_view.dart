import 'package:flutter/material.dart';
import 'package:language_learning_app_flutter/res/components/image_container.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                //Profile pic and Name
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 50,
                        child: Icon(
                          Icons.person_4_outlined,
                          size: 50,
                        ),
                      ),
                      Text(
                        'Hi, Zain',
                        style: TextStyle(fontSize: 40),
                      ),
                    ],
                  ),
                ),
              ),
              //Selected languages
              SizedBox(
                height: height * .03,
              ),
              const Text(
                'Selected Languages:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImageContainer(
                    imageUrl: 'assets/images/pakistan-flag.svg',
                  ),
                  ImageContainer(
                    imageUrl: 'assets/images/saudi-arabia-flag.svg',
                  ),
                  ImageContainer(
                    imageUrl: 'assets/images/spain-flag.svg',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
