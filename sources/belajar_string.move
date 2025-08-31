module 0x0::belajar_string {
    use std::string::String;

    public struct Mahasiswa has key {
        id: object::UID,
        nama: String,
    }

    public fun buat_mahasiswa(nama: String, ctx: &mut tx_context::TxContext): Mahasiswa {
        Mahasiswa {
            id: object::new(ctx),
            nama,
        }
    }

    public fun ubah_nama(mahasiswa: &mut Mahasiswa, nama_baru: String) {
        mahasiswa.nama = nama_baru;
    }

    public fun get_nama(mahasiswa: &Mahasiswa): &String {
        &mahasiswa.nama
    }
}
