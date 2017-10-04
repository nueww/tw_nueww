<?php

if (!defined('TYPO3_MODE')) {
    die('Access denied.');
}

$TCA['tt_content']['columns']['tx_twfischer_domain_model_article']['config']['type'] = 'passthrough';
