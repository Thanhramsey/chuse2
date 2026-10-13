<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Hide_placeholder_album extends CI_Migration
{
	public function up()
	{
		$this->db->where('slug', 'dummy')->update('albums', array('status' => 'draft'));
	}

	public function down()
	{
		// Keep the test entry hidden after rollback.
	}
}
