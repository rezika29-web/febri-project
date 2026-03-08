<?= $this->extend('layouts/dc') ?>
<?= $this->section('content') ?>
<div class="dc-card">
    <h2 class="h5 mb-3">Tambah Perusahaan</h2>
    <form action="<?= site_url('admin/companies/' . $company['id'] . '/update') ?>" method="post">
        <div class="row g-3">
            <div class="col-md-6">
                <label class="form-label">Nama</label>
                <input class="form-control" name="name" value="<?= esc($company['name']) ?>" required>
            </div>
            <div class="col-md-6">
                <label class="form-label">Alamat</label>
                <input class="form-control" name="alamat" value="<?= esc($company['alamat']) ?>" required>
            </div>
            <div class="col-md-6">
                <label class="form-label">Nomor HP</label>
                <input class="form-control" name="no_hp" value="<?= esc($company['no_hp']) ?>" required>
            </div>
            <div class="mt-4 d-flex gap-2">
                <button class="btn btn-success" type="submit">Simpan</button>
                <a class="btn btn-outline-secondary" href="<?= site_url('admin/companies') ?>">Batal</a>
            </div>
    </form>
</div>
<?= $this->endSection() ?>