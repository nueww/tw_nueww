<?php
return array(
    'ctrl' => array(
        'title' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_sponsoring',
        'label' => 'title',
        'tstamp' => 'tstamp',
        'crdate' => 'crdate',
        'cruser_id' => 'cruser_id',
        'dividers2tabs' => true,
        'default_sortby' => 'starttime DESC, uid DESC',
        'delete' => 'deleted',
        'enablecolumns' => array(
            'disabled' => 'hidden',
            'starttime' => 'starttime',
            'endtime' => 'endtime',
        ),
        'searchFields' => 'title,description',
        'iconfile' => \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::siteRelPath('tw_nueww') . 'Resources/Public/Icons/Extension.png',
    ),
    'interface' => array(
        'showRecordFieldList' => 'hidden, title',
    ),
    'types' => array(
        '1' => array('showitem' =>
            'title, type, description,
            --div--;LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tabs.references, series,
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
        'starttime' => array(
            'exclude' => 0,
            'l10n_mode' => 'mergeIfNotBlank',
            'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.starttime',
            'config' => array(
                'type' => 'input',
                'eval' => 'datetime',
                'renderType' => 'inputDateTime',
                'default' => 0,
            ),
        ),
        'endtime' => array(
            'exclude' => 0,
            'l10n_mode' => 'mergeIfNotBlank',
            'label' => 'LLL:EXT:lang/locallang_general.xlf:LGL.endtime',
            'config' => array(
                'type' => 'input',
                'eval' => 'datetime',
                'renderType' => 'inputDateTime',
                'default' => 0,
            ),
        ),
        'title' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_sponsoring.title',
            'config' => array(
                'type' => 'input',
                'size' => 30,
                'eval' => 'trim'
            ),
        ),
        'type' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_sponsoring.type',
            'config' => array(
                'type' => 'select',
                'renderType' => 'selectSingle',
                'items' => [
                    ['LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_sponsoring.type.1', 1],
                    ['LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_sponsoring.type.2', 2],
                    ['LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_sponsoring.type.3', 3]
                ]
            ),
        ),
        'description' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_sponsoring.description',
            'config' => array(
                'type' => 'text',
                'cols' => 40,
                'rows' => 15,
                'eval' => 'trim',
                'wizards' => array(
                    'RTE' => array(
                        'icon' => 'wizard_rte2.gif',
                        'notNewRecords' => 1,
                        'RTEonly' => 1,
                        'module' => array(
                            'name' => 'wizard_rich_text_editor',
                            'urlParameters' => array(
                                'mode' => 'wizard',
                                'act' => 'wizard_rte.php'
                            )
                        ),
                        'title' => 'LLL:EXT:cms/locallang_ttc.xlf:bodytext.W.RTE',
                        'type' => 'script'
                    )
                )
            ),
        ),
        'series' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_blog_article.series',
            'config' => array(
                'type' => 'select',
                'renderType' => 'selectMultipleSideBySide',
                'foreign_table' => 'tx_twnueww_domain_model_blog_series',
                'MM' => 'tx_twnueww_sponsoring_series_mm',
                'size' => 3,
                'autoSizeMax' => 10,
                'maxitems' => 9999,
                'multiple' => 0,
            ),
        ),
    ),
);
