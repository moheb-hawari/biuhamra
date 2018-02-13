<?php defined('BASEPATH') || exit('No direct script access allowed');

class Migration_Install_patients_say extends Migration
{
	/**
	 * @var string The name of the database table
	 */
	private $table_name = 'patients_say';

	/**
	 * @var array The table's fields
	 */
	private $fields = array(
		'id' => array(
			'type'       => 'INT',
			'constraint' => 11,
			'auto_increment' => true,
		),
        'en_name' => array(
            'type'       => 'VARCHAR',
            'constraint' => 255,
            'null'       => false,
        ),
        'ar_name' => array(
            'type'       => 'VARCHAR',
            'constraint' => 255,
            'null'       => false,
        ),
        'en_job_title' => array(
            'type'       => 'VARCHAR',
            'constraint' => 255,
            'null'       => false,
        ),
        'ar_job_title' => array(
            'type'       => 'VARCHAR',
            'constraint' => 255,
            'null'       => false,
        ),
        'en_comment' => array(
            'type'       => 'TEXT',
            'null'       => false,
        ),
        'ar_comment' => array(
            'type'       => 'TEXT',
            'null'       => false,
        ),
        'weight' => array(
            'type'       => 'INT',
            'constraint' => 11,
            'null'       => false,
        ),
        'status' => array(
            'type'       => 'TINYINT',
            'constraint' => 1,
            'null'       => false,
        ),
        'deleted' => array(
            'type'       => 'TINYINT',
            'constraint' => 1,
            'default'    => '0',
        ),
        'deleted_by' => array(
            'type'       => 'BIGINT',
            'constraint' => 20,
            'null'       => true,
        ),
        'created_on' => array(
            'type'       => 'datetime',
            'default'    => '0000-00-00 00:00:00',
        ),
        'created_by' => array(
            'type'       => 'BIGINT',
            'constraint' => 20,
            'null'       => false,
        ),
        'modified_on' => array(
            'type'       => 'datetime',
            'default'    => '0000-00-00 00:00:00',
        ),
        'modified_by' => array(
            'type'       => 'BIGINT',
            'constraint' => 20,
            'null'       => true,
        ),
	);

	/**
	 * Install this version
	 *
	 * @return void
	 */
	public function up()
	{
		$this->dbforge->add_field($this->fields);
		$this->dbforge->add_key('id', true);
		$this->dbforge->create_table($this->table_name);
	}

	/**
	 * Uninstall this version
	 *
	 * @return void
	 */
	public function down()
	{
		$this->dbforge->drop_table($this->table_name);
	}
}