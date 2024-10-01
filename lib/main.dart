import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Fungsi pembantu untuk membuat kolom dengan ikon dan teks
  Widget _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8), // Margin atas untuk memisahkan teks dari ikon
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // Warna utama diambil dari tema
    Color color = Theme.of(context).primaryColor;

    // Bagian kolom pada judul
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Alas Purwo di Banyuwangi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Tegaldlimo, Banyuwangi, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    // Bagian tombol dengan tiga kolom, menggunakan _buildButtonColumn
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Sejajarkan kolom secara merata
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Bagian teks yang diinginkan
    Widget textSection = Container(
      padding: const EdgeInsets.all(32), // Padding di sepanjang setiap tepinya
      child: const Text(
        'Tempat ini memiliki banyak cerita legenda dan mitos sebagai tempat kerajaan jin oleh warga lokal. '
            'Maka dari itu, warga sekitar percaya jika pengunjung yang datang ke tempat ini dengan niat yang buruk, '
            'orang tersebut tidak akan bisa kembali.',
        softWrap: true, // Teks akan otomatis terbungkus jika melebihi lebar layar
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Dhafa Firjatullah Hikmal dan 362358302074 Anda',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            // Menampilkan gambar yang ada di folder images
            Image.asset('images/alaspurwo.jpg'),
            titleSection,  // Bagian judul
            buttonSection, // Bagian tombol
            textSection,   // Bagian teks
          ],
        ),
      ),
    );
  }
}
