<?php defined('BASEPATH') OR exit('No direct script access allowed');
$images = array();
$files = array();
foreach ($attachments as $attachment)
{
	if (in_array(strtolower($attachment['ext']), array('jpg', 'jpeg', 'png', 'gif', 'webp'), TRUE)) $images[] = $attachment;
	else $files[] = $attachment;
}
?>
<!doctype html>
<html lang="vi">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<base href="<?php echo html_escape(base_url()); ?>">
	<link rel="stylesheet" href="<?php echo html_escape(admin_asset('assets/css/site.css')); ?>">
	<style>
		body.preview-page { background: #eee; }
		.preview-page .site-main { padding: 20px 12px; }
		.preview-page .site-main > .container { max-width: 960px; padding: 0; }
		.preview-page .article-cover { display: block; }
		.preview-note { margin: 0 0 14px; color: #596575; font: 600 13px/1.5 Arial, sans-serif; }
	</style>
</head>
<body class="preview-page">
	<main class="site-main"><div class="container">
		<p class="preview-note">Bản xem trước · Nội dung chưa được lưu hoặc xuất bản</p>
		<article class="panel">
			<header class="article-head">
				<h1><?php echo html_escape($title !== '' ? $title : 'Tin chưa có tiêu đề'); ?></h1>
				<?php if ($categoryName !== ''): ?><p class="article-meta"><?php echo html_escape($categoryName); ?></p><?php endif; ?>
			</header>
			<?php if ($excerpt !== ''): ?><p class="article-excerpt"><?php echo nl2br(html_escape($excerpt)); ?></p><?php endif; ?>
			<?php if ($coverUrl !== ''): ?><img class="article-cover" src="<?php echo html_escape($coverUrl); ?>" alt="<?php echo html_escape($title); ?>"><?php endif; ?>
			<?php if ($contentHtml !== ''): ?><div class="rich-text"><?php echo $contentHtml; ?></div><?php endif; ?>
			<?php if (! empty($images)): ?>
			<h2 class="panel-title panel-title--left" style="margin-top:18px">Hình ảnh</h2>
			<div class="gallery-grid">
				<?php foreach ($images as $image): ?>
				<a href="<?php echo html_escape(base_url($image['path'])); ?>" target="_blank" rel="noopener"><img src="<?php echo html_escape(base_url($image['path'])); ?>" alt="<?php echo html_escape($image['title']); ?>"></a>
				<?php endforeach; ?>
			</div>
			<?php endif; ?>
			<?php if (! empty($files)): ?>
			<h2 class="panel-title panel-title--left" style="margin-top:18px">Tệp đính kèm</h2>
			<ul class="attachment-list">
				<?php foreach ($files as $file): ?>
				<li><a href="<?php echo html_escape(base_url($file['path'])); ?>" target="_blank" rel="noopener"><?php echo html_escape($file['title']); ?></a></li>
				<?php endforeach; ?>
			</ul>
			<?php endif; ?>
		</article>
	</div></main>
</body>
</html>
