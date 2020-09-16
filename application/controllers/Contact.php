 <?php

defined('BASEPATH') OR exit('NO direct script access allowed');

class HOME extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('utl');
     
    }

    public function index()
    {
    	$this->load->view("v_about");
    }

	public function SendMail()
	{
	        if (isset($_POST['submit_email'])) {
	        	$email = $this->input->post('email');
	        	$subject = $this->input->post('subject');
	        	$message = $this->input->post('message');
	        

		        if (!empty($email)) {
		        	// configuration to email & proccess

		        	$config = [
		        				'mailtype' => 'text',
		        				'charset' => 'iso-8859-1',
		        				'protocol' => 'smtp',
		        				'smtp-host' => 'ssl://smtp.googlemail.com',
		        				'smtp-user' => 'indrifitriani340@gmail',
		        				'smtp-pass' => '@Indrif340',
		        				'smtp-port' => 465
		        	];

		        	$this->load->library('email', $config);
		        	$this->email->initialize($config);

		        	// end config

		        	$this->email->from('emailfrom');
		        	$this->email->to($email);
		        	$this->email->subject($subject);
		        	$this->email->message($message);

		        	if ($this->email->send()) {
		        		echo "email berhasil dikirim...";
		        	} else {
		        		show_error($this->email->print_debugger());
		        	}

		        }
		    }
	       
	}
}

/* End of file Contact.php */