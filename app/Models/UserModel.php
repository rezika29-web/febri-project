<?php

namespace App\Models;

use CodeIgniter\Model;

class UserModel extends Model
{
    protected $table = 'users';
    protected $primaryKey = 'id';
     protected $useSoftDeletes   = true;  
    protected $deletedField     = 'deleted_at';
    protected $allowedFields = ['name', 'email', 'password', 'role', 'companies_id', 'created_at', 'updated_at'];
    protected $useTimestamps = true;
}
