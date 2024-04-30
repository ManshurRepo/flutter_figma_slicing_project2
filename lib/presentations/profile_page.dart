import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: AppBar(
            backgroundColor: Color.fromARGB(255, 245, 244, 244),
            title: const Text(
              'My Profile',
              style: TextStyle(color: Color(0xff22215B)),
            ),
            centerTitle: true,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xff22215B),
                )),
            actions: const [
              Icon(
                Icons.more_horiz,
                color: Color(0xff22215B),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 249, 249, 249),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(35.0),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 52,
                        height: 52,
                        child: Image.asset(
                          'assets/images/profile.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'Neelesh Chaudhary',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 2),
                      const Text(
                        'UI / UX Designer',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xff22215B)),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xff22215B).withOpacity(0.6)),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 20,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xffFF317B)),
                      child: const Center(
                        child: Text(
                          'Pro',
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 10,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Folders',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff22215B),
                  ),
                ),
                Container(
                  width: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/icons/add.png'),
                      Image.asset('assets/icons/setting.png'),
                      Image.asset('assets/icons/arrow_right.png'),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                    title: 'Mobile Apps',
                    date: 'December 20.2020',
                    color: Color(0xff415EB6),
                    image: Image.asset('assets/images/folder.png')),
                SizedBox(),
                CardFolder(
                    title: 'SVG Icons',
                    date: 'December 14.2020',
                    color: Color(0xffFFB110),
                    image: Image.asset('assets/images/folder_kuning.png')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                    title: 'Prototypes',
                    date: 'November 22.2020',
                    color: Color(0xffAC4040),
                    image: Image.asset('assets/images/folder_merah.png')),
                CardFolder(
                    title: 'SVG Icons',
                    date: 'December 14.2020',
                    color: Color(0xff23B0B0),
                    image: Image.asset('assets/images/folder_tosca.png')),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Uploads',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff22215B),
                  ),
                ),
                Image.asset('assets/icons/sort.png')
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardFolder extends StatelessWidget {
  CardFolder({
    Key? key,
    required this.title,
    required this.date,
    required this.color,
    required this.image,
  }) : super(key: key);
  final String title;
  final String date;
  final Color color;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 107,
      width: 148,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(20),
        color: color.withOpacity(0.1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [image, SizedBox(), Icon(Icons.more_vert)],
          ),
          SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w500, color: color),
          ),
          Text(
            date,
            style: TextStyle(fontSize: 10, color: color),
          )
        ],
      ),
    );
  }
}
