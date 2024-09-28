import 'package:flutter/material.dart';
import 'package:tugas_state_management_getx_movies/page/widget/my_button.dart';
import 'package:tugas_state_management_getx_movies/page/widget/my_text.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF282828),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/backgrond profile.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 0,
                  right: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/kucing.png'),
                      ),
                      const SizedBox(height: 20),
                      MyText(
                        hintText: 'Alejandro Garnacho',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        colors: Colors.white,
                        padding: const EdgeInsets.only(top: 10),
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.grey,
                  size: 18,
                ),
                const SizedBox(width: 5),
                MyText(
                  hintText: 'Kudus, Central Java, Indonesian',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  colors: Colors.grey,
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  textButton: 'History',
                  backgroundColor: Colors.grey[800]!,
                  textColor: Colors.white,
                  radius: 8.0,
                  onPressed: () {},
                ),
                const SizedBox(width: 10),
                MyButton(
                  textButton: 'Edit Profile',
                  backgroundColor: Colors.grey[800]!,
                  textColor: Colors.white,
                  radius: 8.0,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 30),
            MyText(
              hintText: 'Achievement',
              fontSize: 14,
              fontWeight: FontWeight.bold,
              colors: Colors.grey,
              padding: const EdgeInsets.symmetric(horizontal: 20),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10.0,
              children: [
                Chip(
                  label: MyText(
                    hintText: 'Penonton Setia',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    colors: Colors.white,
                  ),
                  backgroundColor: Colors.grey[800],
                  avatar: const Icon(
                    Icons.watch_outlined,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                Chip(
                  label: MyText(
                    hintText: 'Penjelajah Genre',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    colors: Colors.white,
                  ),
                  backgroundColor: Colors.grey[800],
                  avatar: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                Chip(
                  label: MyText(
                    hintText: 'Penonton Lama',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    colors: Colors.white,
                  ),
                  backgroundColor: Colors.grey[800],
                  avatar: const Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                Chip(
                  label: MyText(
                    hintText: 'Master Dokumen',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    colors: Colors.white,
                  ),
                  backgroundColor: Colors.grey[800],
                  avatar: const Icon(
                    Icons.document_scanner,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                Chip(
                  label: MyText(
                    hintText: 'Penggila Aksi',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    colors: Colors.white,
                  ),
                  backgroundColor: Colors.grey[800],
                  avatar: const Icon(
                    Icons.local_fire_department_sharp,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                Chip(
                  label: MyText(
                    hintText: 'Penggemar Animasi',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    colors: Colors.white,
                  ),
                  backgroundColor: Colors.grey[800],
                  avatar: const Icon(
                    Icons.accessibility_new,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
