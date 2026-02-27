<?= $this->extend('layouts/dc') ?>

<?= $this->section('content') ?>
<div class="dc-card">
    <?php
    $roleMap = [
        'drafter' => 'construction',
        'reviewer' => 'qc',
        'approver' => 'pc',
    ];
    $roleLabels = [
        'construction' => 'Construction',
        'qc' => 'Quality Control (QC)',
        'pc' => 'Project Control (PC)',
        'owner' => 'Owner',
        'admin' => 'Admin',
    ];
    ?>
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h2 class="h5 mb-0">Manajemen Perusahaan</h2>
            <a class="btn btn-success" href="<?= site_url('admin/companies/create') ?>">+ Tambah Perusahaan</a>
    </div>

    <div class="table-responsive">
        <table class="dc-table">
            <thead>
                <tr>
                    <th>Nama</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($company as $u): ?>
                    <tr>
                        <td><?= esc($u['name']) ?>
                        <td>
                            <div class="dc-actions">
                                <a class="btn btn-sm btn-outline-secondary" href="<?= site_url('admin/companies/' . $u['id'] . '/edit') ?>">Edit</a>
                                <form action="<?= site_url('admin/companies/' . $u['id'] . '/delete') ?>" method="post" onsubmit="return confirm('Hapus Perusahaan ini?')">
                                    <button class="btn btn-outline-danger" type="submit">Hapus</button>
                                </form>
                            </div>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>
<?= $this->endSection() ?>