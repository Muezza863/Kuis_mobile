import 'package:flutter/material.dart';

class detailPage extends StatelessWidget {
  const detailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail UPNVY',
          style: TextStyle(fontWeight: FontWeight.bold), // Make title bold
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: const Color(0xFFE0EAD6), // Set background color to sage
        child: SingleChildScrollView( // Make the body scrollable
          child: Column(
            children: [
              Image.asset('assets/upn.jpg'), // Gambar gedung
              const SizedBox(height: 16.0), // Add some space below the image
              const Card(
                margin: EdgeInsets.all(16.0),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'PENDIDIKAN UPN VETERAN YOGYAKARTA',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Arah Pendidikan',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Arah pendidikan UPN "Veteran" Yogyakarta adalah mengembangkan ilmu pengetahuan dan teknologi yang dilandasi oleh nilai-nilai kedisiplinan, kejuangan, kreativitas, keunggulan, kebangsaan, dan kejujuran dalam rangka menunjang pembangunan nasional melalui bidang pendidikan tinggi dalam rangka terciptanya sumber daya manusia yang unggul di era global dengan dilandasi jiwa bela negara.',
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Tujuan Pendidikan',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Pendidikan di UPN "Veteran" Yogyakarta bertujuan untuk:',
                      ),
                      SizedBox(height: 8.0),
                      Text('1. Menyelenggarakan pendidikan dan pengajaran yang berkualitas guna menghasilkan lulusan berdaya saing global yang memiliki jiwa disiplin, berdaya juang dan, kreatif serta berwawasan kebangsaan dan mampu menjadi komponen pendukung dalam sistem pertahanan negara;'),
                      SizedBox(height: 4.0),
                      Text('2. Meningkatkan kuantitas dan kualitas penelitian guna:'),
                      SizedBox(height: 4.0),
                      Text('a. Menunjang pengembangan mutu pendidikan dan pengajaran;'),
                      Text('b. Mengembangkan dan menerapkan ilmu pengetahuan dan teknologi (IPTEK) untuk menunjang pengabdian kepada masyarakat; dan'),
                      Text('c. Menghasilkan modal intelektual dan karya ilmiah dalam rangka menunjang pembangunan nasional; dan'),
                      SizedBox(height: 4.0),
                      Text('3. Pengembangan kegiatan pengabdian kepada masyarakat melalui'),
                      SizedBox(height: 4.0),
                      Text('a. Penyediaan layanan ilmu pengetahuan dan teknologi (IPTEK) dalam rangka meningkatkan kesejahteraan masyarakat;'),
                      Text('b. Peningkatan keberdayaan masyarakat; dan'),
                      Text('c. Peningkatan reputasi UPN "Veteran" Yogyakarta.'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}