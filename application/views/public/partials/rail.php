<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php if (! empty($sidebarMenu)): ?>
<nav class="home-sidebar-nav" aria-label="<?php echo $siteLang === 'en' ? 'Investment information' : 'Thông tin khu công nghiệp'; ?>">
	<?php foreach ($sidebarMenu as $menuItem): ?>
	<a href="<?php echo html_escape(public_safe_url($menuItem['url'])); ?>"><?php echo html_escape(public_label($menuItem, 'title', $siteLang)); ?></a>
	<?php endforeach; ?>
</nav>
<?php endif; ?>
<?php
/** @var array $sections Danh sách home_sections kèm 'items'. */
foreach ($sections as $section)
{
	$this->load->view('public/partials/widget', array('section' => $section, 'siteLang' => $siteLang));
}
