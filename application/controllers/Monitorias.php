
<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Monitorias extends CI_Controller {
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

    public function list_monitorias()
    {
        $crud = new grocery_CRUD();
        $crud->set_theme('datatables');
        $crud->set_subject('monitorias');
        $crud->set_table('monitorias');
        $crud->columns('courseId','course','monitor','date','classroom');
        $crud->fields('course','monitor','date','classroom');

        $crud->display_as('course', 'Materia');
        $crud->display_as('monitor', 'Monitor');
        $crud->display_as('date', 'Fecha');
        $crud->display_as('classroom', 'Salón');

        $output = $crud->render();
        $this->show_monitorias($output);
    }

    public function show_monitorias($output = null)
    {
        $this->load->view('template.php', $output);
    }
}