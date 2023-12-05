<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Tentang Kami - Hotel Mahkota</title>
  <link rel="stylesheet" href="cssIndex.css">
</head>
<body>
  <header>
  <h1>Selamat Datang di Hotel Mahkota</h1>
    <nav class="navbar">
      <ul>
        <li><a href="index.html">Produk</a></li>
        <li><a href="daftar-harga.html">Daftar Harga</a></li>
        <li><a href="about.html">Tentang Kami</a></li>
        <li><a href="Booking.html">Pesan Kamar</a></li>
        <li><a href="listBooking.php">History List</a></li>
      </ul>
    </nav>
  </header>

  <main>
    <section id="tentang-kami">
      <center><h2>Data Pemesanan</h2></center>
      <p id="deskripsiHotel"></p>
      <table>
        <tr>
          <th>ID</th>
          <th>Nama Pemesan</th>
          <th>Jenis Kelamin</th>
          <th>Nomor Identitas</th>
          <th>Tipe Kamar</th>
          <th>Tanggal Pesan</th>
          <th>Durasi Menginap</th>
          <th>Diskon</th>
          <th>Total Bayar</th>
        </tr>

        <?php
          // Koneksi ke database
          $servername = "localhost";
          $username = "root";
          $password = "";
          $dbname = "hotel";

          $conn = new mysqli($servername, $username, $password, $dbname);

          if ($conn->connect_error) {
            die("Koneksi Gagal: " . $conn->connect_error);
          }

          // Query SQL untuk mengambil data dari database
          $sql = "SELECT `id_History`, `Nama_Pemesan`, `JenisKelamin`, `Nomor_Identitas`, `Tipe_Kamar`, `Tanggal_Pesan`, CONCAT(Durasi_Menginap, ' - Day')  AS Durasi_Menginap , CONCAT(diskon, '%') AS diskon, CONCAT('Rp.',Total_Bayar) AS Total_Bayar FROM `history` WHERE 1";

          $result = $conn->query($sql);

          if ($result->num_rows > 0) {
            // Menampilkan data ke dalam tabel
            while($row = $result->fetch_assoc()) {
              echo "<tr>
                      <td>" . $row["id_History"] . "</td>
                      <td>" . $row["Nama_Pemesan"] . "</td>
                      <td>" . $row["JenisKelamin"] . "</td>
                      <td>" . $row["Nomor_Identitas"] . "</td>
                      <td>" . $row["Tipe_Kamar"] . "</td>
                      <td>" . $row["Tanggal_Pesan"] . "</td>
                      <td>" . $row["Durasi_Menginap"] . "</td>
                      <td>" . $row["diskon"] . "</td>
                      <td>" . $row["Total_Bayar"] . "</td>
                    </tr>";
            }
          } else {
            echo "0 hasil";
          }
          $conn->close();
        ?>
      </table>
    </section>
  </main>

  <footer>
    <p>Hak Cipta © 2023 Hotel Mahkota</p>
  </footer>
</body>
</html>
