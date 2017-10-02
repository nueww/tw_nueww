<?php
return array(
    'ctrl' => array(
        'title' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_blog_tag',
        'label' => 'title',
        'tstamp' => 'tstamp',
        'crdate' => 'crdate',
        'cruser_id' => 'cruser_id',
        'dividers2tabs' => true,
        'delete' => 'deleted',
        'enablecolumns' => array(
            'disabled' => 'hidden',
        ),
        'searchFields' => 'title,description',
        'iconfile' => \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::siteRelPath('tw_nueww') . 'Resources/Public/Icons/Tag.png',
    ),
    'interface' => array(
        'showRecordFieldList' => 'hidden, title',
    ),
    'types' => array(
        '1' => array('showitem' =>
            'title,
            --div--;LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:tabs.access, hidden, --palette--;;startstop'
        ),
    ),
    'palettes' => array(),
    'columns' => array(
        'hidden' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.hidden',
            'config' => array(
                'type' => 'check',
            ),
        ),

        'title' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_blog_tag.title',
            'config' => array(
                'type' => 'input',
                'size' => 30,
                'eval' => 'trim'
            ),
        ),

    ),
);
