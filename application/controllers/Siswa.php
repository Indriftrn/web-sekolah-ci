<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Siswa extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('m_siswa');
	}

	public function index()
	{
		$data = array(
            'title'  => 'SMAN 1 Pamarican',
            'title2' => 'Data Siswa',
            'siswa'	 => $this->m_siswa->lists(),
            'isi'    => 'admin/siswa/v_list'
        );
        $this->load->view('admin/layout/v_wrapper',$data,FALSE);
	}

	public function add()
    {

        $this->form_validation->set_rules('nis', 'NIS', 'required');
        $this->form_validation->set_rules('nisn', 'NISN', 'required');
        $this->form_validation->set_rules('nama_siswa', 'Nama Siswa', 'required');
        $this->form_validation->set_rules('jenis_kelamin', 'Jenis Kelamin', 'required');
        $this->form_validation->set_rules('kelas', 'Kelas', 'required');

        if ($this->form_validation->run() == FALSE) {
            
                        $data = array(
                            'title'  => 'SMAN 1 Pamarican',
                            'title2' => 'Add Data Siswa',
                            'error' => $this->upload->display_errors(),
                            'isi'    => 'admin/siswa/v_add'
                        );
                        $this->load->view('admin/layout/v_wrapper',$data,FALSE);
                }
                else
                {
                        

                        $data = array(
                                    'nis'            => $this->input->post('nis'),
                                    'nisn'            => $this->input->post('nisn'),
                                    'nama_siswa'      => $this->input->post('nama_siswa'),
                                    'jenis_kelamin'  => $this->input->post('jenis_kelamin'),
                                    'kelas'       => $this->input->post('kelas'),
                                    

                                     );

                        $this->m_siswa->add($data);
                        $this->session->flashdata('pesan', 'Data Berhasil Di Tambahkan!!');
                        redirect('siswa');
                }
                 

            $data = array(
                'title'  => 'SMAN 1 Pamarican',
                'title2' => 'Add Data Siswa',
                'isi'    => 'admin/siswa/v_add'
                );
                $this->load->view('admin/layout/v_wrapper',$data,FALSE);

    }
    public function edit($id_siswa)
    {
        $this->form_validation->set_rules('nis', 'NIS', 'required');
        $this->form_validation->set_rules('nisn', 'NISN', 'required');
        $this->form_validation->set_rules('nama_siswa', 'Nama Siswa', 'required');
        $this->form_validation->set_rules('jenis_kelamin', 'Jenis Kelamin', 'required');
        $this->form_validation->set_rules('kelas', 'Kelas', 'required');

        if ($this->form_validation->run() == FALSE) {
            
                        $data = array(
                            'title'  => 'SMAN 1 Pamarican',
                            'title2' => 'Edit Data Siswa',
                            'error'  => $this->upload->display_errors(),
                            'siswa'   =>$this->m_siswa->detail($id_siswa),
                            'isi'    => 'admin/siswa/v_edit'
                        );
                        $this->load->view('admin/layout/v_wrapper',$data,FALSE);
                }
                else
                {
                        
                        $data = array(
                            'id_siswa'       =>$id_siswa,
                            'nis'            => $this->input->post('nis'),
                            'nisn'            => $this->input->post('nisn'),
                            'nama_siswa'      => $this->input->post('nama_siswa'),
                            'jenis_kelamin'  => $this->input->post('jenis_kelamin'),
                            'kelas'       => $this->input->post('kelas'),

                            );
                        $this->m_siswa->edit($data);
                        $this->session->set_flashdata('pesan', 'Data Berhasil Di Edit!!');
                        redirect('siswa');
                    
                    

                        $data = array(
                            'id_siswa'       =>$id_siswa,
                            'nis'            => $this->input->post('nis'),
                            'nisn'            => $this->input->post('nisn'),
                            'nama_siswa'      => $this->input->post('nama_siswa'),
                            'jenis_kelamin'  => $this->input->post('jenis_kelamin'),
                            'kelas'       => $this->input->post('kelas'),

                                     );

                        $this->m_siswa->edit($data);
                        $this->session->set_flashdata('pesan', 'Data Berhasil Di Edit!!');
                        redirect('siswa');
                }

                $data = array(
                    'title'  => 'SMAN 1 Pamarican',
                    'title2' => 'Edit Data Siswa',
                    'siswa'  =>$this->m_siswa->detail($id_siswa),
                    'isi'    => 'admin/siswa/v_edit'
                    );

                $this->load->view('admin/layout/v_wrapper',$data,FALSE);

            }

            public function delete($id_siswa)
            {           

                $data = array('id_siswa' => $id_siswa );
                $this->m_siswa->delete($data);
                $this->session->set_flashdata('pesan', 'Data Berhasil Di Hapus');
                redirect('siswa');
                        
            }
    }


