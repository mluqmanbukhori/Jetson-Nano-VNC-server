# Pendahuluan - Apa itu VNC
VNC (Virtual Network Computing) memungkinkan Anda untuk mengontrol Jetson Development Kit dari komputer/laptop lain di jaringan yang sama. Untuk mempelajari lebih lanjut tentang VNC, klik [disini](https://en.wikipedia.org/wiki/Virtual_Network_Computing).


>**Catatan:**<br>
Jetson Development Kits dan komputer lain harus berada di jaringan yang sama. Diperlukan koneksi jaringan yang cukup cepat. Koneksi yang lebih lambat akan menurunkan kinerja antar interaksi desktop.


# Download Script activation VNC server
* Ketikkan script di bawah ini untuk mendownload melalui Terminal <br>
<div class="highlight highlight-source-shell position-relative overflow-auto" data-snippet-clipboard-copy-content="$ mkdir -p ~/.config/autostart $ cp /usr/share/applications/vino-server.desktop ~/.config/autostart/."><pre>
$ mkdir -p ~/.config/autostart
$ cp /usr/share/applications/vino-server.desktop ~/.config/autostart/.
</pre></div>
