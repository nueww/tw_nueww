<?php
return array(
    'ctrl' => array(
        'title' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_blog_article',
        'label' => 'title',
        'label_userFunc' => Tollwerk\TwNueww\Userfuncs\Tca::class . '->blogArticleLabel',
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
        'searchFields' => 'title,body_text,teaser_text',
        'iconfile' => \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::siteRelPath('tw_nueww') . 'Resources/Public/Icons/Article.png',
    ),
    'interface' => array(
        'showRecordFieldList' => 'hidden, title',
    ),
    'types' => array(
        '1' => array('showitem' =>
            'title, teaser_text, body_text;;;richtext:rte_transform[mode=ts_links],images,nested_content,
            --div--;LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tabs.tags, tags,
             --div--;LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tabs.references, persons, organizations, series,
            --div--;LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:tabs.access, hidden, --palette--;;startstop,
            --div--;LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tabs.comments, comments',

        ),
    ),
    'palettes' => array(
        'title' => array('showitem' => 'title'),
        'startstop' => array('showitem' => 'starttime, endtime')
    ),
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
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_blog_article.title',
            'config' => array(
                'type' => 'input',
                'size' => 30,
                'eval' => 'trim'
            ),
        ),
        'body_text' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_blog_article.body_text',
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
        'teaser_text' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_blog_article.teaser_text',
            'config' => array(
                'type' => 'text',
                'cols' => 40,
                'rows' => 5,
                'eval' => 'trim',
            ),
        ),
        'images' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_fischer/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_blog_article.images',
            'config' => \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::getFileFieldTCAConfig(
                'images',
                [
                    'appearance' => [
                        'createNewRelationLinkTitle' => 'LLL:EXT:cms/locallang_ttc.xlf:images.addFileReference',
                        'headerThumbnail' => true
                    ]
                ],

                $GLOBALS['TYPO3_CONF_VARS']['GFX']['imagefile_ext']
            ),
        ),

        'persons' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_blog_article.persons',
            'config' => array(
                'type' => 'select',
                'renderType' => 'selectMultipleSideBySide',
                'foreign_table' => 'tx_twnueww_domain_model_person',
                'MM' => 'tx_twnueww_blog_article_person_mm',
                'size' => 3,
                'autoSizeMax' => 10,
                'maxitems' => 9999,
                'multiple' => 0,
            ),
        ),

        'tags' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_blog_article.tags',
            'config' => array(
                'type' => 'select',
                'renderType' => 'selectCheckBox',
                'foreign_table' => 'tx_twnueww_domain_model_blog_tag',
                'MM' => 'tx_twnueww_blog_article_tag_mm',
                'size' => 3,
                'autoSizeMax' => 10,
                'maxitems' => 9999,
                'multiple' => 0,
            ),
        ),

        'organizations' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_blog_article.organizations',
            'config' => array(
                'type' => 'select',
                'renderType' => 'selectMultipleSideBySide',
                'foreign_table' => 'tx_twnueww_domain_model_organization_organization',
                'MM' => 'tx_twnueww_blog_article_organization_mm',
                'size' => 3,
                'autoSizeMax' => 10,
                'maxitems' => 9999,
                'multiple' => 0,
            ),
        ),

        'series' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_blog_article.series',
            'config' => array(
                'type' => 'select',
                'renderType' => 'selectMultipleSideBySide',
                'foreign_table' => 'tx_twnueww_domain_model_blog_series',
                'MM' => 'tx_twnueww_blog_article_series_mm',
                'size' => 3,
                'autoSizeMax' => 10,
                'maxitems' => 9999,
                'multiple' => 0,
            ),
        ),

        'comments' => [
            'exclude' => 1,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_blog_article.comments',
            'config' => [
                'readOnly' => true,
                'type' => 'inline',
                'foreign_table' => 'tx_twnueww_domain_model_blog_comment',
                'foreign_field' => 'article',
                'foreign_label' => 'text',
                'maxitems' => 99,
                'appearance' => [
                    'collapseAll' => 1,
                    'expandSingle' => 0,
                    'enabledControls' => [
                        'new' => false,
                        'sort' => true,
                        'dragdrop' => true
                    ]
                ],
            ],
        ],

        'nested_content' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:nested_content',
            'config' => array(
                'type' => 'inline',
                'foreign_table' => 'tt_content',
                'foreign_field' => 'tx_twnueww_domain_model_blog_article',
                'foreign_sortby' => 'sorting',
                'maxitems'      => 16,
                'appearance' => array(
                    'collapseAll' => 1,
                    'levelLinksPosition' => 'top',
                    'showSynchronizationLink' => 1,
                    'showPossibleLocalizationRecords' => 1,
                    'showAllLocalizationLink' => 1
                ),
            ),
        ),
    ),
);
