<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use App\Models\CompanyModel;
use App\Models\UserModel;

class Companies extends BaseController
{
    protected $helpers = ['form', 'url'];

    private CompanyModel $companies;
    private UserModel $users;

    public function __construct()
    {
        $this->companies = new CompanyModel();
        $this->users = new UserModel();
    }

    public function index()
    {
        $currentUser = $this->currentUser();
        $allcompanies = $this->companies->orderBy('name', 'ASC')->findAll();

        return view('company/index', [
            'currentUser' => $currentUser,
            'company' => $allcompanies,
        ]);
    }

    private function currentUser(): array
    {
        $session = session();
        $userId = $session->get('user_id');
        if (!$userId) {
            redirect()->to(site_url('login'))->send();
            exit;
        }

        $user = $this->users->find($userId);
        if (!$user) {
            session()->destroy();
            redirect()->to(site_url('login'))->send();
            exit;
        }

        if (!in_array($this->normalizeRole((string) $user['role']), ['admin', 'pc', 'construction'], true)) {
            redirect()->to(site_url('dc'))->send();
            exit;
        }

        return $user;
    }

    private function normalizeRole(string $role): string
    {
        return match ($role) {
            'drafter' => 'construction',
            'reviewer' => 'qc',
            'approver' => 'pc',
            default => $role,
        };
    }

    public function create()
    {
        $currentUser = $this->currentUser();
        return view('company/create', [
            'currentUser' => $currentUser,
        ]);
    }

    public function store()
    {
        $data = [
            'name'     => $this->request->getPost('name')
        ];
        $name = (string) $this->request->getPost('name');
        $exists = $this->companies->where('name', $name)->first();
        if ($exists) {
            return redirect()->back()->withInput()->with('error', 'Nama perusahaan sudah digunakan.');
        }

        $this->companies->insert($data, true);

        return redirect()->to(site_url('admin/companies'))->with('success', 'Perusahaan berhasil ditambahkan.');
    }

    public function edit(int $id)
    {
        $company = $this->companies->find($id);
        if (!$company) {
            return redirect()->to(site_url('company/index'))->with('error', 'Perusahaan tidak ditemukan.');
        }

        return view('company/edit', [
            'company'        => $company,
        ]);
    }

    public function update(int $id)
    {
        $company = $this->companies->find($id);
        if (!$company) {
            return redirect()->to(site_url('company/index'))->with('error', 'Perusahaan tidak ditemukan.');
        }

        $name = (string) $this->request->getPost('name');
        $exists = $this->companies->where('name', $name)->where('id !=', $id)->first();
        if ($exists) {
            return redirect()->back()->withInput()->with('error', 'Nama perusahaan sudah digunakan.');
        }

        $data = [
            'name'  => $this->request->getPost('name'),
        ];

        $this->companies->update($id, $data);
        return redirect()->to(site_url('company/index'))->with('success', 'Perusahaan berhasil diupdate.');
    }

    public function delete(int $id)
    {
        $company = $this->companies->find($id);
        if (!$company) {
            return redirect()->to(site_url('admin/companies'))->with('error', 'Perusahaan tidak ditemukan.');
        }

        $this->companies->delete($id);

        return redirect()->to(site_url('admin/companies'))->with('success', 'Perusahaan berhasil dihapus.');
    }
}
