<?php defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Bonfire
 *
 * An open source project to allow developers to jumpstart their development of
 * CodeIgniter applications.
 *
 * @package   Bonfire
 * @author    Bonfire Dev Team
 * @copyright Copyright (c) 2011 - 2014, Bonfire Dev Team
 * @license   http://opensource.org/licenses/MIT
 * @link      http://cibonfire.com
 * @since     Version 1.0
 * @filesource
 */

/**
 * Emailer Model
 *
 * @package    Bonfire\Modules\Emailer\Models\Emailer_model
 * @author     Bonfire Dev Team
 * @link       http://cibonfire.com/docs/guides
 */
class Emailer_model extends BF_Model
{
    /** @var string Name of the table. */
    protected $table_name = 'email_queue';

    /** @var string Name of the primary key. */
    protected $key = 'id';

    /** @var boolean Whether to use soft deletes. */
    protected $soft_deletes = false;

    /** @var string The date format to use. */
    protected $date_format = 'datetime';

    /** @var boolean Whether to set the created time automatically. */
    protected $set_created = false;

    /** @var boolean Whether to set the modified time automatically. */
    protected $set_modified = false;
    
    protected $validation_rules 		= array(
		array(
			'field' => 'name',
			'label' => 'lang:emailer_validation_name',
			'rules' => 'required',
                        'errors' => array(
                            'required' => '%s.',
                    ),
		),
		array(
			'field' => 'email',
			'label' => 'lang:emailer_validation_email',
			'rules' => 'required|valid_email',
                    'errors' => array(
                        'required' => '%s.',
                        'valid_email' => '%s.',
                ),
		),
                array(
			'field' => 'phone',
			'label' => 'lang:emailer_validation_phone',
			'rules' => 'required|numeric',
                    'errors' => array(
                        'required' => '%s.',
                        'numeric' =>  '%s.',
                ),
		),
		array(
			'field' => 'message',
			'label' => 'lang:emailer_validation_message',
			'rules' => 'required|max_length[255]',
                    'errors' => array(
                        'required' => '%s.',
                ),
		),
	);
    	protected $insert_validation_rules  = array();
	protected $skip_validation 			= false;
        
        /**
     * Constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }
}
/* End of file /emailer/models/emailer_model.php */