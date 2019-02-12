<?php $this->load->view('user_header.php');
if(!islogin()){
    redirect('user/viewlogin');
   
} ?>
    <div class="col col-md-12">
    <p>Hello <?= getuserlogin('fullname') ?>, Dibawah ini merupakan guide menggunakan website ini.</p>
    </div>
    <div id="accordion" role="tablist">
        <div class="card">
            <div class="card-header" role="tab" id="headingOne">
                <h5 class="mb-0">
                    <a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    Training
                    </a>
                </h5>
                </div>

                <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                <div class="card-body">
                    Di Training terbagi 2 Fitur yaitu: <br>
                    <li>yang petama Add new Training
                    Disini kamu bisa menambahkan jenis training baru dengan memasukkan Format yang
                    telah di sediakan dan memilih jenis tipe training</li>
                    <li>
                    yang kedua Training List
                    kamu bisa melihat semua data pegawai berdasarkan TNA(Training Need Analyze 
                    Lalu ada juga filter by Unit Organisasi Maupun Tipe Training,Jika kamu ingin
                    Mengconvert File yang data ada di website kamu tinggal memilih format yg 
                    tersedia seperti CSV,Excel dan PDF atau bisa langsung kamu Print dengan Menklik
                    Button Print Lalu Ok</li>

                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header" role="tab" id="headingTwo">
            <h5 class="mb-0">
                <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                Branches
                </a>
            </h5>
            </div>
            <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
            <div class="card-body">
            Dsini juga ada 2 fitur yaitu:
            <li>yang pertama add new Branches, Untuk menambah jika ada Cabang baru yang dibuka
            dengan cara Mengisi Nama Cabang dan keterangan(Jika dibutuhkan)</li>
            <li>yang kedua Branches List
            Kamu bisa melihat cabang cabang  yang ada di pelindo 1</li>
            </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header" role="tab" id="headingThree">
            <h5 class="mb-0">
                <a class="collapsed" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                Training Type
                </a>
            </h5>
            </div>
            <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
            <div class="card-body">
            <li>Add new Traning</li>
            Untuk menambahkan jika ada jenis training yang baru dengan memasukkan 
            Training type dan Keterangan(Jika dibutuhkan)
            <li>Training List</li>
            Kamu dapat melihat Macam macan jenis traning yang ada saat ini tersedia juga 
            fitur Edit dan Hapus
            </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header" role="tab" id="headingFour">
            <h5 class="mb-0">
                <a class="collapsed" data-toggle="collapse" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                User
                </a>
            </h5>
            </div>
            <div id="collapseFour" class="collapse" role="tabpanel" aria-labelledby="headingFour" data-parent="#accordion">
            <div class="card-body">
            <li>New User</li>
            Disini kita membutuhkan user untuk bisa login ke website ini:) agar tidak
            sembarangan untuk melihat data training yang diwebsite ini
            <li>User list</li>
            Fitur ini adalah untuk mengetahui List User yang sudah terdaftar diwebsite
            </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header" role="tab" id="headingFive">
            <h5 class="mb-0">
                <a class="collapsed" data-toggle="collapse" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                User Training
                </a>
            </h5>
            </div>
            <div id="collapseFive" class="collapse" role="tabpanel" aria-labelledby="headingFive" data-parent="#accordion">
            <div class="card-body">
           <li> add new user training</li>
            Untuk menambahkan user ke data training list dengan jumlah yg banyak maka nama 
            user harus di resigtrasi ke sini terlebih daulu,jika hanya beberapa orng yang 
            akan di tambahkan bisa langsung di Fitur Add new Training 
            <li>User training List</li>
            Untuk melihat user yng sudah terdaftar dan mengikuti training
            </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header" role="tab" id="headingSix">
            <h5 class="mb-0">
                <a class="collapsed" data-toggle="collapse" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                Divisions
                </a>
            </h5>
            </div>
            <div id="collapseSix" class="collapse" role="tabpanel" aria-labelledby="headingSix" data-parent="#accordion">
            <div class="card-body">
            <li>new Devisions</li>
            Menambahkan Divisi kerja untuk bisa filter by Divisi sesuai dengan unit organisasi
            <li>Devision List</li>
            Melihat Divisi yang sudah ada di Website ini
            </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header" role="tab" id="headingSeven">
            <h5 class="mb-0">
                <a class="collapsed" data-toggle="collapse" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                Setting
                </a>
            </h5>
            </div>
            <div id="collapseSeven" class="collapse" role="tabpanel" aria-labelledby="headingSeven" data-parent="#accordion">
            <div class="card-body">
            Setting adalah Fitur yang paling berpengaruh
            <li>Tersedia User Training File</li>
            untuk mendaftarkan User yang akan ditraining terlebih dahulu agar bisa di
            tambahkan ke Training list dengan Format Excel dan hanya bisa membaca 1 Sheet 
            saja
            <li>Training File</li>
            Setelah file user Training sudah terupload langkah kedua adalah Upload File 
            Training Untuk menampilkan User sesuai dengan data training
            </div>
            </div>
        </div>
    </div>
<?php $this->load->view('user_footer.php'); ?>
<script>
(function () {
  'use strict'

  if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
    var msViewportStyle = document.createElement('style')
    msViewportStyle.appendChild(
      document.createTextNode(
        '@-ms-viewport{width:auto!important}'
      )
    )
    document.head.appendChild(msViewportStyle)
  }

}())
</script>