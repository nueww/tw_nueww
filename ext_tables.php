<?php

if (!defined('TYPO3_MODE')) {
    die('Access denied.');
}

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addStaticFile(
    $_EXTKEY,
    'Configuration/TypoScript/Static',
    'Project: NUEWW 2018'
);

// Register classes
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::allowTableOnStandardPages('tx_twnueww_domain_model_blog_article');

// Register Plugins
\TYPO3\CMS\Extbase\Utility\ExtensionUtility::registerPlugin(
    'Tollwerk.' . $_EXTKEY,
    'Blog',
    'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:list_type.blog',
    \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::siteRelPath('tw_nueww') . 'Resources/Public/Icons/Article.png'
);