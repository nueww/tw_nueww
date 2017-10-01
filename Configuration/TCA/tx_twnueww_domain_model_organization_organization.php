<?php
return array(
    'ctrl' => array(
        'title' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_organization_organization',
        'label' => 'title',
        'tstamp' => 'tstamp',
        'crdate' => 'crdate',
        'cruser_id' => 'cruser_id',
        'dividers2tabs' => true,
        'default_sortby' => 'title',
        'delete' => 'deleted',
        'enablecolumns' => array(
            'disabled' => 'hidden'
        ),
        'searchFields' => 'title, description',
        'iconfile' => \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::siteRelPath('tw_nueww').'Resources/Public/Icons/Organization.png',
    ),
    'interface' => array(
        'showRecordFieldList' => 'hidden, title',
    ),
    'types' => array(
        '1' => array('showitem' => 'images,title,address,sectors,
        --palette--;;contact,
        --div--;Social,--palette--;;social,
        --div--;LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:tabs.access,hidden;;1'
        ),
    ),
    'palettes' => array(
        'contact' => array('showitem' => 'email, phone, www'),
        'social' => array('showitem' => 'facebook, twitter, xing, linkedin, instagram'),
    ),
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
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_organization_organization.title',
            'config' => array(
                'type' => 'input',
                'size' => 30,
                'eval' => 'trim'
            ),
        ),
        'address' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_organization_organization.address',
            'config' => array(
                'type' => 'text',
                'cols' => 40,
                'rows' => 5,
                'eval' => 'trim',
            ),
        ),
        'description' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_organization_organization.description',
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
        'images' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_organization_organization.images',
            'config' => \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::getFileFieldTCAConfig(
                'images',
                array(
                    'appearance' => array(
                        'createNewRelationLinkTitle' => 'LLL:EXT:cms/locallang_ttc.xlf:images.addFileReference',
                        'fileUploadAllowed' => false,
                    ),
                    'foreign_types' => array(
                        '0' => array(
                            'showitem' => '
							--palette--;LLL:EXT:lang/locallang_tca.xlf:sys_file_reference.imageoverlayPalette;imageoverlayPalette,
							--palette--;;filePalette'
                        ),
                        \TYPO3\CMS\Core\Resource\File::FILETYPE_TEXT => array(
                            'showitem' => '
							--palette--;LLL:EXT:lang/locallang_tca.xlf:sys_file_reference.imageoverlayPalette;imageoverlayPalette,
							--palette--;;filePalette'
                        ),
                        \TYPO3\CMS\Core\Resource\File::FILETYPE_IMAGE => array(
                            'showitem' => '
							--palette--;LLL:EXT:lang/locallang_tca.xlf:sys_file_reference.imageoverlayPalette;imageoverlayPalette,
							--palette--;;filePalette'
                        ),
                        \TYPO3\CMS\Core\Resource\File::FILETYPE_AUDIO => array(
                            'showitem' => '
							--palette--;LLL:EXT:lang/locallang_tca.xlf:sys_file_reference.imageoverlayPalette;imageoverlayPalette,
							--palette--;;filePalette'
                        ),
                        \TYPO3\CMS\Core\Resource\File::FILETYPE_VIDEO => array(
                            'showitem' => '
							--palette--;LLL:EXT:lang/locallang_tca.xlf:sys_file_reference.imageoverlayPalette;imageoverlayPalette,
							--palette--;;filePalette'
                        ),
                        \TYPO3\CMS\Core\Resource\File::FILETYPE_APPLICATION => array(
                            'showitem' => '
							--palette--;LLL:EXT:lang/locallang_tca.xlf:sys_file_reference.imageoverlayPalette;imageoverlayPalette,
							--palette--;;filePalette'
                        )
                    ),
                    'maxitems' => 1,
                    'minitems' => 0,
                ),
                $GLOBALS['TYPO3_CONF_VARS']['GFX']['imagefile_ext']
            ),
        ),
        'www' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_organization_organization.www',
            'config' => array(
                'type' => 'input',
                'size' => 128,
                'eval' => 'trim'
            ),
        ),
        'phone' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_organization_organization.phone',
            'config' => array(
                'type' => 'input',
                'size' => 64,
                'eval' => 'trim'
            ),
        ),
        'email' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_organization_organization.email',
            'config' => array(
                'type' => 'input',
                'size' => 128,
                'eval' => 'trim'
            ),
        ),
        'facebook' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_organization_organization.facebook',
            'config' => array(
                'type' => 'input',
                'size' => 128,
                'eval' => 'trim'
            ),
        ),
        'twitter' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_organization_organization.twitter',
            'config' => array(
                'type' => 'input',
                'size' => 128,
                'eval' => 'trim'
            ),
        ),
        'xing' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_organization_organization.xing',
            'config' => array(
                'type' => 'input',
                'size' => 128,
                'eval' => 'trim'
            ),
        ),
        'linkedin' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_organization_organization.linkedin',
            'config' => array(
                'type' => 'input',
                'size' => 128,
                'eval' => 'trim'
            ),
        ),
        'instagram' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_nueww/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_organization_organization.instagram',
            'config' => array(
                'type' => 'input',
                'size' => 128,
                'eval' => 'trim'
            ),
        ),
        'sectors' => array(
            'exclude' => 0,
            'label' => 'LLL:EXT:tw_fischer/Resources/Private/Language/locallang_db.xlf:tx_twnueww_domain_model_organization_organization.sectors',
            'config' => array(
                'type' => 'select',
                'renderType' => 'selectMultipleSideBySide',
                'foreign_table' => 'tx_twnueww_domain_model_organization_sector',
                'MM' => 'tx_twnueww_organization_sector_mm',
                'size' => 3,
                'autoSizeMax' => 10,
                'maxitems' => 9999,
                'multiple' => 0,
            ),
        ),
    ),
);
