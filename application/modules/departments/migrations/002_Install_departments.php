<?php defined('BASEPATH') || exit('No direct script access allowed');

class Migration_Install_departments extends Migration
{
	/**
	 * @var string The name of the database table
	 */
	private $table_name = 'departments';

	/**
	 * @var array The table's fields
	 */
	private $fields = array(
		'id' => array(
			'type'       => 'INT',
			'constraint' => 11,
			'auto_increment' => true,
		),
        'en_title' => array(
            'type'       => 'VARCHAR',
            'constraint' => 255,
            'null'       => false,
        ),
        'ar_title' => array(
            'type'       => 'VARCHAR',
            'constraint' => 255,
            'null'       => false,
        ),
        'en_description' => array(
            'type'       => 'TEXT',
            'null'       => false,
        ),
        'ar_description' => array(
            'type'       => 'TEXT',
            'null'       => false,
        ),
        'en_image_title' => array(
            'type'       => 'VARCHAR',
            'constraint' => 255,
            'null'       => false,
        ),
        'ar_image_title' => array(
            'type'       => 'VARCHAR',
            'constraint' => 255,
            'null'       => true,
        ),
        'en_image_description' => array(
            'type'       => 'TEXT',
            'null'       => true,
        ),
        'ar_image_description' => array(
            'type'       => 'TEXT',
            'null'       => true,
        ),
        'dep_image' => array(
            'type'       => 'VARCHAR',
            'constraint' => 255,
            'null'       => true,
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