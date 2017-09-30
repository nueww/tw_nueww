<?php

/***********************************************************************************
 *  The MIT License (MIT)
 *
 *  Copyright © 30.09.2017 Klaus Fielder <klaus@tollwerk.de> / @kftw
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

namespace Tollwerk\TwNueww\Domain\Model\Traits;


/**
 * Class ImageTrait
 *
 * Use this trait to add a property called "images" for TYPO3 FAL images to a domain model.
 * Don't forget to add the images property in TCA configuration for the model and in ext_tables.sql as well!
 *
 * @package Tollwerk\TwNueww\Traits
 */
trait ImageTrait
{

    /**
     * Images
     *
     * @var \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\TYPO3\CMS\Extbase\Domain\Model\FileReference>
     * @cascade remove
     */
    protected $images = null;

    /**
     * Initializes all ObjectStorage properties
     *
     * @return void
     */
    protected function initImagesObjectStorage()
    {
        if (!$this->images) {
            $this->images = new ObjectStorage();
        }
    }

    /**
     * Returns the car images
     *
     * @return \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\TYPO3\CMS\Extbase\Domain\Model\FileReference> $images
     */
    public function getImages()
    {
        $this->initImagesObjectStorage();
        return $this->images;
    }

    /**
     * Sets the images
     *
     * @param \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\TYPO3\CMS\Extbase\Domain\Model\FileReference> $images
     * @return void
     */
    public function setImages(\TYPO3\CMS\Extbase\Persistence\ObjectStorage $images)
    {
        $this->initImagesObjectStorage();
        $this->images = $images;
    }

    /**
     * Adds an image
     *
     * @param FileReference $image Image
     */
    public function addImage(FileReference $image)
    {
        $this->initImagesObjectStorage();
        $this->images->attach($image);
    }

    /**
     * Removes an image
     *
     * @param SystemFileReference $imageToRemove The image to remove
     */
    public function removeImage(SystemFileReference $imageToRemove)
    {
        $this->initImagesObjectStorage();
        $this->images->detach($imageToRemove);
    }

}