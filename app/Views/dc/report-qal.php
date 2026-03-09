<?= $this->extend('layouts/dc') ?>

<?= $this->section('content') ?>
<?php
$roleMap = [
    'drafter' => 'construction',
    'reviewer' => 'qc',
    'approver' => 'pc',
];
$normalizedRole = $roleMap[$currentUser['role']] ?? $currentUser['role'];

$statusCards = match ($normalizedRole) {
    'construction' => [
        ['label' => 'Draft', 'key' => 'draft'],
        ['label' => 'Submitted', 'key' => 'submitted'],
        ['label' => 'Revision Requested', 'key' => 'revision_requested'],
        ['label' => 'Reviewed', 'key' => 'reviewed'],
        ['label' => 'Approved & Archived', 'key' => 'archived'],
    ],
    'pc' => [
        ['label' => 'Submitted', 'key' => 'submitted'],
        ['label' => 'Revision Requested', 'key' => 'revision_requested'],
        ['label' => 'Reviewed', 'key' => 'reviewed'],
        ['label' => 'Approved & Archived', 'key' => 'archived'],
    ],
    'owner' => [
        ['label' => 'Submitted', 'key' => 'submitted'],
        ['label' => 'Revision Requested', 'key' => 'revision_requested'],
        ['label' => 'Reviewed', 'key' => 'reviewed'],
        ['label' => 'Approved & Archived', 'key' => 'archived'],
    ],
    default => [
        ['label' => 'Submitted', 'key' => 'submitted'],
        ['label' => 'Draft', 'key' => 'draft'],
        ['label' => 'Reviewed', 'key' => 'reviewed'],
        ['label' => 'PC Signed', 'key' => 'pc_signed'],
        ['label' => 'Revision Requested', 'key' => 'revision_requested'],
        ['label' => 'Archived', 'key' => 'archived'],
    ],
};

$bulan = [
    ['name' => 'January', 'number' => '01'],
    ['name' => 'February', 'number' => '02'],
    ['name' => 'March', 'number' => '03'],
    ['name' => 'April', 'number' => '04'],
    ['name' => 'May', 'number' => '05'],
    ['name' => 'June', 'number' => '06'],
    ['name' => 'July', 'number' => '07'],
    ['name' => 'August', 'number' => '08'],
    ['name' => 'September', 'number' => '09'],
    ['name' => 'October', 'number' => '10'],
    ['name' => 'November', 'number' => '11'],
    ['name' => 'December', 'number' => '12']
];

$canCreate = in_array($normalizedRole, ['construction', 'admin'], true);

$showConstruction = in_array($normalizedRole, ['admin', 'qc', 'pc', 'owner'], true);
$showQc = in_array($normalizedRole, ['admin', 'construction', 'pc', 'owner'], true);
$showPc = in_array($normalizedRole, ['admin', 'construction', 'qc', 'owner'], true);
$showOwner = in_array($normalizedRole, ['admin', 'construction', 'qc', 'pc'], true);
?>

<div class="dc-card">

    <div class="d-flex justify-content-between align-items-center mb-3 flex-wrap gap-2">
        <h2 class="h5 mb-0">Report QAL</h2>
        <div class="d-flex gap-2">
            <form class="d-flex gap-2" method="get" action="<?= site_url('dc/report-qal') ?>">
                <select class="form-select" name="month">
                    <option value="">Bulan</option>
                    <?php foreach ($bulan as $b): ?>
                        <option value="<?= $b['number'] ?>" <?= ($month === $b['number']) ? 'selected' : '' ?>>
                            <?= $b['name'] ?>
                        </option>
                    <?php endforeach; ?>
                </select>

                <button class="btn btn-outline-secondary" type="submit">Filter</button>
            </form>
            <a class="btn btn-outline-dark" href="<?= site_url('dc/' . $month . '/printQal') ?>" target="_blank">Print All</a>
        </div>
    </div>

    <?php if (empty($documents)): ?>
        <p class="text-muted">Belum ada QAL. Silakan buat draft baru.</p>
    <?php else: ?>
        <div class="table-responsive">
            <table class="dc-table">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Judul</th>
                        <th>Doc No</th>
                        <th>Perusahaan</th>
                        <th>Status</th>
                        <?php if ($showConstruction): ?><th>Construction</th><?php endif; ?>
                        <?php if ($showPc): ?><th>PC</th><?php endif; ?>
                        <?php if ($showOwner): ?><th>Owner</th><?php endif; ?>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($documents as $doc): ?>
                        <tr>
                            <td><?= esc($doc['id']) ?></td>
                            <td><?= esc($doc['title']) ?></td>
                            <td><?= esc($doc['doc_number']) ?></td>
                            <td><?= esc($doc['company_name']) ?></td>
                            <td>
                                <span class="dc-badge <?= esc($doc['status']) ?>">
                                    <?= esc(str_replace('_', ' ', strtoupper($doc['status']))) ?>
                                </span>
                            </td>
                            <?php if ($showConstruction): ?><td><?= esc($doc['owner_name']) ?></td><?php endif; ?>
                            <?php if ($showPc): ?><td><?= esc($doc['approver_name'] ?? '-') ?></td><?php endif; ?>
                            <?php if ($showOwner): ?><td><?= esc($doc['owner_approval_name'] ?? '-') ?></td><?php endif; ?>
                            <td>
                                <div class="dc-actions">
                                    <a class="btn btn-sm btn-outline-primary" href="<?= site_url('dc/' . $doc['id']) ?>">Detail</a>
                                    <?php if (
                                        $normalizedRole === 'admin'
                                        || (
                                            $normalizedRole === 'construction'
                                            && in_array($doc['status'], ['draft', 'revision_requested'], true)
                                        )
                                    ): ?>
                                        <a class="btn btn-sm btn-outline-secondary" href="<?= site_url('dc/' . $doc['id'] . '/edit') ?>">Edit</a>
                                    <?php endif; ?>
                                </div>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    <?php endif; ?>
</div>
<?= $this->endSection() ?>