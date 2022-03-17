# Pendahuluan - Apa itu VNC
VNC (Virtual Network Computing) memungkinkan Anda untuk mengontrol Jetson Development Kit dari komputer/laptop lain di jaringan yang sama. Untuk mempelajari lebih lanjut tentang VNC, klik [disini](https://en.wikipedia.org/wiki/Virtual_Network_Computing).


>**Catatan:**<br>
Jetson Development Kits dan komputer lain harus berada di jaringan yang sama. Diperlukan koneksi jaringan yang cukup cepat. Koneksi yang lebih lambat akan menurunkan kinerja antar interaksi desktop.


# Download Script activation VNC server
* Ketikkan script di bawah ini untuk mendownload melalui Terminal <br>
<div><pre>
  $ wget https://github.com/mluqmanbukhori/Jetson-Nano-VNC-server/raw/main/VNC-server-activation.sh
</pre></div>

* Atur Script `VNC-server-activation.sh` menggunakan Text Editor `nano / vim / gedit`
<div><pre>
  $ sudo nano VNC-server-activation.sh
</pre></div>
<div><pre>
  - Jika Anda menggunakan Jetson Nano 2GB Developer Kit (running LXDE) uncomment dan gunakan script ini
  -----------------------------------------------------------------------------------------------------
  mkdir -p ~/.config/autostart
  cp /usr/share/applications/vino-server.desktop ~/.config/autostart/. <br>
  - Untuk semua jenis Jetson Developer Kit (running GNOME) uncomment dan gunakan script ini
  -----------------------------------------------------------------------------------------------------
  cd /usr/lib/systemd/user/graphical-session.target.wants
  sudo ln -s ../vino-server.service ./. <br>
  - Atur password VNC Anda sendiri dengan mengganti `jetson`
  -----------------------------------------------------------------------------------------------------
  gsetting set org.gnome.Vino vnc-password $(echo -n 'jetson'|base64)
</pre></div>

* Set otoritas file dengan `chmod`
<div><pre>
  $ sudo chmod 755 ./VNC-server-activation.sh
</pre></div>

* Running (jalankan) script dengan perintah berikut:
> **Catatan:** <br>
Setelah selesai Activasi, program akan otomatis melakukan Rebooting Jetson Nano. Mohon pastikan data yang terbuka di keluarkan (close)
<div><pre>
  $ ./VNC-server-activation.sh
</pre></div>

# Kontribusi | Mau bertanya?
Jangan lupa follow media Sosial kami <br>
YouTube : [Elektro Project](https://www.youtube.com/elektroproject) <br>
Twitter : [@mluqmanbukhori](https://twitter.com/mluqmanbukhori) <br>
Instagram : [@mluqmanbukhori](https://instagram.com/mluqmanbukhori) | [@elektro.project](https://instagram.com/elektro.project)
