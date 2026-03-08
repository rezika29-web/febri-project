<?php

namespace App\Models;

use CodeIgniter\Model;

class CompanyModel extends Model
{
    protected $table = 'companies';
    protected $primaryKey = 'id';
    protected $useSoftDeletes   = true;  
    protected $deletedField     = 'deleted_at';
    protected $allowedFields = ['name', 'no_hp', 'alamat'];
}
