<?php

if (!defined('TYPO3_MODE')) {
    die ('Access denied.');
}

\FluidTYPO3\Flux\Core::registerProviderExtensionKey('Tollwerk.TwNueww', 'Page');
\FluidTYPO3\Flux\Core::registerProviderExtensionKey('Tollwerk.TwNueww', 'Content');


// Configure plugins
\TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
    'Tollwerk.'.$_EXTKEY,
    'Blog',
    [
        'Blog\\Article' => 'list, show',
    ],
    [
        'Blog\\Article' => 'show',
    ]
);


\TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
    'Tollwerk.'.$_EXTKEY,
    'Person',
    [
        'Person' => 'list, show',
    ],
    [
        'Person' => 'show',
    ]
);

\TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
    'Tollwerk.'.$_EXTKEY,
    'Download',
    [
        'Download' => 'list',
    ],
    [
        'Download' => '',
    ]
);
