// Definisikan kelas Course untuk merepresentasikan informasi tentang course
class Course {
  String judul;      
  String deskripsi;  

  Course(this.judul, this.deskripsi);  // Konstruktor untuk menginisialisasi atribut
}

// Definisikan kelas Student untuk merepresentasikan informasi tentang mahasiswa
class Student {
  String nama;              
  String kelas;             
  List<Course> daftarCourse = [];  

  Student(this.nama, this.kelas);  // Konstruktor untuk menginisialisasi atribut

  // Metode untuk menambahkan course ke daftar mahasiswa
  void tambahCourse(Course course) {
    daftarCourse.add(course);
    print('Course ${course.judul} ditambahkan untuk ${nama}');
  }

  // Metode untuk menghapus course dari daftar mahasiswa
  void hapusCourse(Course course) {
    daftarCourse.remove(course);
    print('Course ${course.judul} dihapus dari daftar ${nama}');
  }

  // Metode untuk melihat daftar course yang dimiliki mahasiswa
  void lihatDaftarCourse() {
    if (daftarCourse.isEmpty) {
      print('${nama} belum memiliki course.');
    } else {
      print('${nama} memiliki course:');
      for (var course in daftarCourse) {
        print('${course.judul} - ${course.deskripsi}');
      }
    }
  }
}

void main() {
  // Membuat objek course
  Course course1 = Course('Computer Network Security', 'Mata Kuliah Konsentrasi CNS');
  Course course2 = Course('Mobile Programming', 'Mata Kuliah Umum Pemograman Mobile');
  Course course3 = Course('Dart OOP', 'Pelajaran Dart OOP Altera Academy');

  // Membuat objek student
  Student student1 = Student('Hilman', 'Kelas TIFRP21CNSA');
  Student student2 = Student('Vito', 'Kelas TIFRP21CNSa');
  Student student3 = Student('Fery', 'Kelas FLUTTER-C');

  // Menambahkan course ke daftar mahasiswa
  student1.tambahCourse(course1);
  student1.tambahCourse(course2);
  student1.tambahCourse(course3);
  student2.tambahCourse(course2);
  student3.tambahCourse(course2);
  student3.tambahCourse(course3);

  // Menampilkan daftar course yang dimiliki mahasiswa
  student1.lihatDaftarCourse();
  student2.lihatDaftarCourse();

  // Menghapus course dari daftar mahasiswa
  student1.hapusCourse(course3);

  // Menampilkan daftar course yang dimiliki mahasiswa setelah menghapus
  student1.lihatDaftarCourse();
}
