<!doctype html>
<html lang="id">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Quality Acceptance Letter</title>
    <style>
        @page {
            size: A4;
            margin: 12mm;
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            color: #111;
            font-size: 11px;
        }

        .sheet {
            border: 1px solid #222;
            padding: 8px;
        }

        .text-center {
            text-align: center;
        }

        .text-right {
            text-align: right;
        }

        .text-small {
            font-size: 10px;
        }

        .title {
            font-weight: 700;
            letter-spacing: 0.8px;
            font-size: 14px;
            margin: 4px 0 8px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td,
        th {
            padding: 4px 6px;
            vertical-align: top;
        }

        /* th {
            background: #f2f2f2;
        } */

        .no-border {
            border: 0 !important;
        }

        .mt-8 {
            margin-top: 8px;
        }

        .mt-12 {
            margin-top: 12px;
        }

        .signature-box {
            height: 44px;
            border-bottom: 1px solid #222;
            margin-bottom: 4px;
        }

        .action {
            margin: 8px 0;
        }

        .print-btn {
            margin-bottom: 10px;
        }

        @media print {
            .no-print {
                display: none;
            }
        }
    </style>
</head>

<body>
    <button class="no-print print-btn" onclick="window.print()">Print</button>
    <h1 class="text-center title">LAPORAN PENDATAAN DOKUMEN QAL<br />KONSORIUM PT.BRA_PT.BKP<br />
    Bulan <?= $month; ?>
        <table class="mt-8">
            <tr style=" border-bottom: 3px solid black;">
                <th style="width: 20%;">No QAL</th>
                <th style="width: 30%;">Tanggal QAL</th>
                <th style="width: 50%;">Owner</th>
            </tr>
            <?php
            foreach ($document as $dc) { ?>
                <tr>
                    <th style="width: 20%;"><?= esc($dc['doc_number'] ?? '-') ?></th>
                    <th style="width: 30%;"><?= esc($dc['approved_at'] ?? '-') ?></th>
                    <th style="width: 50%;"><?= esc($dc['approver_name'] ?? '-') ?></th>
                </tr>
            <?php  } ?>
        </table>

</body>

</html>