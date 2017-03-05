
<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Monitores extends CI_Controller {
    function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->library('grocery_CRUD');
    }

    public function index()
    {
        // content
    }

    public function list_monitores()
    {
        $crud = new grocery_CRUD();
        $crud->set_theme('datatables');
        $crud->set_subject('monitor');
        $crud->set_table('monitores');
        $crud->columns('monitorId','name','lastName','course','semester','dni','phoneNumber','email');
        $crud->fields('name','lastName','course','semester','dni','phoneNumber','email');

        $crud->display_as('name', 'Nombre');
        $crud->display_as('lastName', 'Apellido');
        $crud->display_as('course', 'Programa');
        $crud->display_as('semester', 'Semestre');
        $crud->display_as('dni', 'Cédula');
        $crud->display_as('phoneNumber', 'Teléfono');
        $crud->display_as('email', 'Correo');

        $output = $crud->render();
        $this->show_monitores($output);
    }

    public function show_monitores($output = null)
    {
        $this->load->view('template.php', $output);
    }
}