# Summary Basic Version and Branch management Git
Sejarah
- Version Control System (VCS)
    Single User : SCSS - 1972 Unix olny, RCS 1982 Cross Platform, text only
    Centralized : CVS - 1986 File focus, Perforce -1995, Subversion -2000 -track directory structure
    -Microsoft Team Foundation Server - 2005
    Distributed : Git - 2005,Mercurial - 2005, Bazaar - 2005
    Git dibuat oleh Linus Torvalds (2005)
Git Repository (folder project)
Github memungkinkan beberapa orang bekerjasama dalam project yang sama
THE STAGING AREA 
(Working directory) git add>> (Staging area) git commit>> (repository) lalu di git push origin /sync change di vs code untuk menampilkan di repository
    git status (Digunakan untuk mengecek status repository lokal)
    git add <directory> / git add hello.py (untuk menambahkan ke staging area hanya untuk folder/file tertentu)
    git add . (memasukan semua file)
    git diff (mengetahui perubahan dari file yang kita edit)
    git stash (untuk menyimpan perubahan - perubahan yang kita inginkan)
    git log (menampilkan apa saja yang sudah kita commit)
    git checkout (menerapkan commit log yang kita inginkan,ke versi sebelumnya) checkout juga dapat digunakan untuk pindah branch
    git reset --soft/--hard(mengembalikan berkas atau file ke dalam keadaan staged.)
    git pull origin master (mengambil dari repository)
Branches berfungsi melindungi main project
    git branch ---list (show list branch)
    git branch <branch> (membuat branch baru dengan nama "branch")
    git branch -D <branch> (menghapus branch secara spesifik sesuai nama branch)
    git push -u origin namabranch (untuk push branch yang kita buat di local ke github)
    git merge <branch> (menggabungkan branch menjadi 1)
    fork (untuk menyalin repository milik orang lain ke dalam akun GitHub)
    Pull request (saat ingin berkontribusi pada suatu project di github,kontribusi disini seperti menambahkan fitur baru atau fix bugg)

    conflict (mengubah 1 lain yang sama di branch yang berbedaaa)

