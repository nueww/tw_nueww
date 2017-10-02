<?php

/**
 * tw_nueww
 *
 * @category Jkphl
 * @package Jkphl\Micrometa
 * @subpackage Tollwerk\TwNueww\Controller
 * @author Joschi Kuphal <joschi@kuphal.net> / @jkphl
 * @copyright Copyright © 2017 Joschi Kuphal <joschi@kuphal.net> / @jkphl
 * @license http://opensource.org/licenses/MIT The MIT License (MIT)
 */

/***********************************************************************************
 *  The MIT License (MIT)
 *
 *  Copyright © 2017 Joschi Kuphal <joschi@kuphal.net> / @jkphl
 *
 *  Permission is hereby granted, free of charge, to any person obtaining a copy of
 *  this software and associated documentation files (the "Software"), to deal in
 *  the Software without restriction, including without limitation the rights to
 *  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 *  the Software, and to permit persons to whom the Software is furnished to do so,
 *  subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 *  FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 *  COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 *  IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 *  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 ***********************************************************************************/

namespace Tollwerk\TwNueww\Controller;

use TYPO3\CMS\Core\Resource\Collection\StaticFileCollection;
use TYPO3\CMS\Core\Resource\FileCollectionRepository;
use TYPO3\CMS\Core\Resource\FileRepository;
use TYPO3\CMS\Extbase\Mvc\Controller\ActionController;

/**
 * Download Controller
 */
class DownloadController extends ActionController
{
    /**
     * File collection repository
     *
     * @var \TYPO3\CMS\Core\Resource\FileCollectionRepository
     */
    protected $fileCollectionRepository;

    /**
     * File repository
     *
     * @var \TYPO3\CMS\Core\Resource\FileRepository
     */
    protected $fileRepository;

    /**
     * Inject the file collection repository
     *
     * @param \TYPO3\CMS\Core\Resource\FileCollectionRepository $fileCollectionRepository File collection repository
     */
    public function injectFileCollectionRepository(FileCollectionRepository $fileCollectionRepository)
    {
        $this->fileCollectionRepository = $fileCollectionRepository;
    }

    /**
     * Inject the file repository
     *
     * @param \TYPO3\CMS\Core\Resource\FileRepository $fileRepository File repository
     */
    public function injectFileRepository(FileRepository $fileRepository)
    {
        $this->fileRepository = $fileRepository;
    }

    /**
     * List action
     */
    public function listAction()
    {
        $collection = [];

        // If it's a file collection
        if (intval($this->settings['collection'])) {
            /** @var StaticFileCollection $collection */
            $collection = $this->fileCollectionRepository->findByUid($this->settings['collection']);
            $collection->loadContents();
            $collection = $collection->getItems();

            // Else it's a compilation of single files
        } elseif (intval($this->settings['files'])) {
            $contentObjectId = $this->configurationManager->getContentObject()->data['uid'];
            $collection = $this->fileRepository->findByRelation('tt_content', 'nueww_downloads', $contentObjectId);
        }

        $this->view->assign('collection', $collection);
    }
}