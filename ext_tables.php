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
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::allowTableOnStandardPages('tx_twnueww_domain_model_blog_series');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::allowTableOnStandardPages('tx_twnueww_domain_model_blog_tag');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::allowTableOnStandardPages('tx_twnueww_domain_model_blog_comment');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::allowTableOnStandardPages('tx_twnueww_domain_model_person');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::allowTableOnStandardPages('tx_twnueww_domain_model_organization_organization');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::allowTableOnStandardPages('tx_twnueww_domain_model_organization_sector');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::allowTableOnStandardPages('tx_twnueww_domain_model_sponsoring');


// Register Plugins
\TYPO3\CMS\Extbase\Utility\ExtensionUtility::registerPlugin(
    'Tollwerk.' . $_EXTKEY,
    'Blog',
    'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:list_type.blog',
    \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::siteRelPath('tw_nueww') . 'Resources/Public/Icons/Article.png'
);

\TYPO3\CMS\Extbase\Utility\ExtensionUtility::registerPlugin(
    'Tollwerk.' . $_EXTKEY,
    'Person',
    'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:list_type.person',
    \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::siteRelPath('tw_nueww') . 'Resources/Public/Icons/Person.png'
);