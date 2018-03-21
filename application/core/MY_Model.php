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
 * MY_Model extends BF_Model for backwards compatibility, and to provide a
 * placeholder class that your project can customize/extend as needed.
 *
 * @package    Bonfire\Core\MY_Model
 * @author     Lonnie Ezell
 * @link       http://cibonfire.com/docs/developer/bonfire_models
 */
class MY_Model extends BF_Model
{

    /**
     * @var string[] The names of callback methods within the extending model which
     * will be called before the find method.
     *
     * @see $before_insert
     */

    function where_delete()
    {
        $where = array($this->table_name.'.deleted'=>0,$this->table_name.'status'=>0);

        
        $this->db->where($where);
    }
    
        /**
     * Return the number of rows in the table.
     *
     * @internal This is potentially confusing given that count_all() and
     * count_all_results() are different methods on $this->db, with the
     * difference being that count_all_results() is modified by previous use of
     * where(), like(), etc., while count_all() is not
     *
     * @return int
     */
    public function count_all()
    {
        $this->where_delete();
        return $this->db->count_all_results($this->table_name);
    }

    /**
     * Return the number of elements that match the field/value pair.
     *
     * @param string $field The field to search for.
     * @param string $value The value to match $field against.
     *
     * @return bool|int
     */
    public function count_by($field = '', $value = null)
    {

        
        if (empty($field)) {
            $this->error = lang('bf_model_count_error');
            $this->logit('[' . get_class($this) . ': ' . __METHOD__ . '] ' . lang('bf_model_count_error'));
            return false;
        }
        $this->where_delete();
        $this->db->where($field, $value);

        return (int)$this->db->count_all_results($this->table_name);
    }
    
}
/* End of file ./application/core/MY_Model.php */