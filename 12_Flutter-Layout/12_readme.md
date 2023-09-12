# Summary Flutter-Layout
- Apa itu Layout ? layout digunakan untuk mengatur tata letak material seperti image,text dll
    Layout berbentuk widget yang mengatur widget di dalamnya
- Single child layout : layout yang memiliki 1 buah child contohnya seperti widget container,sizedbox dll
    Container : - Membuat sebuah box 
                - Membungkus widget lain
                - Box memiliki margin,padding,dan border
    Center    : - Membuat sebuah box
                - membungkus widget lain 
                - memenuhi lebar dan tinggi ruang di luarnya
                - meletakkan widget berada di bagian tengan
    SizedBox  : - membuat sebuah box
                - membungkus widget lain
                - box dapat diatur lebar dan tingginya
                - lebih sederhana dari container 
- Multi Child Layout  : dimana kita ingin meletakan child lebih dari 1 dan disini menggunakan properti children yang typenya array widget 
    Column    : - Mengatur widget secara vertikal
    Row       : - Mengatur Widget secara horizontal
    ListView  : - Mengatur widget dalam bentuk list
                - memiliki kemampuan scroll
    Listtile  : - mengatur widget dalam bentuk list 
                - bisa memiliki scroll jika dimasukan dalam listView
    GridView  : - Mengatur widget dalam bentuk galeri