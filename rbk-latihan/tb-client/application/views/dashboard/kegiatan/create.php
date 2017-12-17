
<form action="<?php echo base_url(); ?>index.php/kegiatan/create" method="post">
    <table>
        <tr>
            <td>ID</td>
            <td><input type="text" name="id_kegiatan"></td>
        </tr>
        <tr>
            <td>Nama Kegiatan</td>
            <td><input type="text" name="nama_kegiatan"></td>
        </tr>
        <tr>
            <td>Waktu Kegiatan</td>
            <td><input type="date" name="waktu_kegiatan" id="datetimepicker"></td>
        </tr>
        <tr>
            <td>Tempat Kegiatan</td>
            <td><input type="text" name="tempat_kegiatan"></td>
        </tr>
        <tr>
            <td>Sifat Kegiatan</td>
            <td><select name="sifat_kegiatan">
                <option value="Rapat Rutin">RAPAT RUTIN</option>
                <option value="Rapat Khusus">RAPAT KHUSUS</option>
                <option value="Kegiatan rutin">KEGIATAN RUTIN</option>
            </select></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" name="tambah"></td>
        </tr>
    </table>    
</form>
