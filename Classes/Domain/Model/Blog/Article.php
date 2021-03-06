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

namespace Tollwerk\TwNueww\Domain\Model\Blog;

use Tollwerk\TwNueww\Domain\Model\Traits\ImageTrait;
use Tollwerk\TwNueww\Domain\Repository\Blog\ArticleRepository;
use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Extbase\DomainObject\AbstractEntity;
use TYPO3\CMS\Extbase\Object\ObjectManager;

class Article extends AbstractEntity
{
    use ImageTrait;

    /**
     * @var string
     */
    protected $title = '';

    /**
     * @var string
     */
    protected $teaserText = '';

    /**
     * @var string
     */
    protected $bodyText = '';

    /**
     * @var int
     */
    protected $starttime = 0;

    /**
     * @var int
     */
    protected $endtime = 0;

    /**
     * @var int
     */
    protected $crdate = 0;

    /**
     * @var int
     */
    protected $tstamp = 0;

    /**
     * Blog series
     * @var \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\Tollwerk\TwNueww\Domain\Model\Blog\Series>
     * @lazy
     */
    protected $series = null;

    /**
     * Persons
     * @var \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\Tollwerk\TwNueww\Domain\Model\Person>
     * @lazy
     */
    protected $persons = null;

    /**
     * Organizations
     * @var \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\Tollwerk\TwNueww\Domain\Model\Organization\Organization>
     * @lazy
     */
    protected $organizations = null;
    
    /**
     * Tags
     * @var \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\Tollwerk\TwNueww\Domain\Model\Blog\Tag>
     * @lazy
     */
    protected $tags = null;

    /**
     * Comments
     * @var \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\Tollwerk\TwNueww\Domain\Model\Blog\Comment>
     * @lazy
     */
    protected $comments = null;

    /**
     * @return string
     */
    public function getTitle()
    {
        return $this->title;
    }

    /**
     * @param string $title
     */
    public function setTitle($title)
    {
        $this->title = $title;
    }

    /**
     * @return string
     */
    public function getTeaserText()
    {
        return $this->teaserText;
    }

    /**
     * @param string $teaserText
     */
    public function setTeaserText($teaserText)
    {
        $this->teaserText = $teaserText;
    }


    /**
     * @return string
     */
    public function getBodyText()
    {
        return $this->bodyText;
    }

    /**
     * @param string $bodyText
     */
    public function setBodyText($bodyText)
    {
        $this->bodyText = $bodyText;
    }

    /**
     * @return int
     */
    public function getStarttime()
    {
        return $this->starttime;
    }

    /**
     * @param int $starttime
     */
    public function setStarttime($starttime)
    {
        $this->starttime = $starttime;
    }

    /**
     * @return int
     */
    public function getEndtime()
    {
        return $this->endtime;
    }

    /**
     * @param int $endtime
     */
    public function setEndtime($endtime)
    {
        $this->endtime = $endtime;
    }

    /**
     * @return int
     */
    public function getCrdate()
    {
        return $this->crdate;
    }

    /**
     * @param int $crdate
     */
    public function setCrdate($crdate)
    {
        $this->crdate = $crdate;
    }

    /**
     * @return int
     */
    public function getTstamp()
    {
        return $this->tstamp;
    }

    /**
     * @param int $tstamp
     */
    public function setTstamp($tstamp)
    {
        $this->tstamp = $tstamp;
    }


    /**
     * Adds a Series
     *
     * @param \Tollwerk\TwNueww\Domain\Model\Blog\Series $series
     * @return void
     */
    public function addSeries(\Tollwerk\TwNueww\Domain\Model\Blog\Series $series)
    {
        $this->series->attach($series);
    }

    /**
     * Removes a Series
     *
     * @param \Tollwerk\TwNueww\Domain\Model\Blog\Series $seriesToRemove The Series to be removed
     * @return void
     */
    public function removeSeries(\Tollwerk\TwNueww\Domain\Model\Blog\Series $seriesToRemove)
    {
        $this->series->detach($seriesToRemove);
    }

    /**
     * Returns the series
     *
     * @return \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\Tollwerk\TwNueww\Domain\Model\Blog\Series>
     */
    public function getSeries()
    {
        return $this->series;
    }

    /**
     * Sets the series
     *
     * @param \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\Tollwerk\TwNueww\Domain\Model\Blog\Series> $series
     * @return void
     */
    public function setSeries(\TYPO3\CMS\Extbase\Persistence\ObjectStorage $series)
    {
        $this->series = $series;
    }


    /**
     * Adds a Person
     *
     * @param \Tollwerk\TwNueww\Domain\Model\Person $person
     * @return void
     */
    public function addPerson(\Tollwerk\TwNueww\Domain\Model\Person $person)
    {
        $this->persons->attach($person);
    }

    /**
     * Removes a Person
     *
     * @param \Tollwerk\TwNueww\Domain\Model\Person $personToRemove The Person to be removed
     * @return void
     */
    public function removePerson(\Tollwerk\TwNueww\Domain\Model\Person $personToRemove)
    {
        $this->persons->detach($personToRemove);
    }

    /**
     * Returns the persons
     *
     * @return \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\Tollwerk\TwNueww\Domain\Model\Persons>
     */
    public function getPersons()
    {
        return $this->persons;
    }

    /**
     * Sets the persons
     *
     * @param \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\Tollwerk\TwNueww\Domain\Model\Person> $persons
     * @return void
     */
    public function setPersons(\TYPO3\CMS\Extbase\Persistence\ObjectStorage $persons)
    {
        $this->persons = $persons;
    }


    /**
     * Adds a Organization
     *
     * @param \Tollwerk\TwNueww\Domain\Model\Organization\Organization $organization
     * @return void
     */
    public function addOrganization(\Tollwerk\TwNueww\Domain\Model\Organization\Organization $organization)
    {
        $this->organizations->attach($organization);
    }

    /**
     * Removes a Organization
     *
     * @param \Tollwerk\TwNueww\Domain\Model\Organization\Organization $organizationToRemove The Organization to be removed
     * @return void
     */
    public function removeOrganization(\Tollwerk\TwNueww\Domain\Model\Organization\Organization $organizationToRemove)
    {
        $this->organizations->detach($organizationToRemove);
    }

    /**
     * Returns the organizations
     *
     * @return \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\Tollwerk\TwNueww\Domain\Model\Organization\Organizations>
     */
    public function getOrganizations()
    {
        return $this->organizations;
    }

    /**
     * Sets the organizations
     *
     * @param \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\Tollwerk\TwNueww\Domain\Model\Organization\Organization> $organizations
     * @return void
     */
    public function setOrganizations(\TYPO3\CMS\Extbase\Persistence\ObjectStorage $organizations)
    {
        $this->organizations = $organizations;
    }

   

     /** Adds a Tag
     *
     * @param \Tollwerk\TwNueww\Domain\Model\Blog\Tag $tag
     * @return void
     */
    public function addTag(\Tollwerk\TwNueww\Domain\Model\Blog\Tag $tag)
    {
        $this->tags->attach($tag);
    }

    /**
     * Removes a Tag
     *
     * @param \Tollwerk\TwNueww\Domain\Model\Blog\Tag $tagToRemove The Tag to be removed
     * @return void
     */
    public function removeTag(\Tollwerk\TwNueww\Domain\Model\Blog\Tag $tagToRemove)
    {
        $this->tags->detach($tagToRemove);
    }

    /**
     * Returns the tags
     *
     * @return \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\Tollwerk\TwNueww\Domain\Model\Blog\Tags>
     */
    public function getTags()
    {
        return $this->tags;
    }

    /**
     * Sets the tags
     *
     * @param \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\Tollwerk\TwNueww\Domain\Model\Blog\Tag> $tags
     * @return void
     */
    public function setTags(\TYPO3\CMS\Extbase\Persistence\ObjectStorage $tags)
    {
        $this->tags = $tags;
    }

   /**
     * Adds a Comment
     *
     * @param \Tollwerk\TwNueww\Domain\Model\Blog\Comment $comment
     * @return void
     */
    public function addComment(\Tollwerk\TwNueww\Domain\Model\Blog\Comment $comment)
    {
        $this->comments->attach($comment);
    }

    /**
     * Removes a Comment
     *
     * @param \Tollwerk\TwNueww\Domain\Model\Blog\Comment $commentToRemove The Comment to be removed
     * @return void
     */
    public function removeComment(\Tollwerk\TwNueww\Domain\Model\Blog\Comment $commentToRemove)
    {
        $this->comments->detach($commentToRemove);
    }

    /**
     * Returns the comments
     *
     * @return \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\Tollwerk\TwNueww\Domain\Model\Blog\Comments>
     */
    public function getComments()
    {
        return $this->comments;
    }

    /**
     * Sets the comments
     *
     * @param \TYPO3\CMS\Extbase\Persistence\ObjectStorage<\Tollwerk\TwNueww\Domain\Model\Blog\Comment> $comments
     * @return void
     */
    public function setComments(\TYPO3\CMS\Extbase\Persistence\ObjectStorage $comments)
    {
        $this->comments = $comments;
    }


    public function getReleaseDate(){
        if($this->starttime > 0){
            return $this->starttime;
        }

        return $this->crdate;
    }

    public function getRelatedArticles(){
        /**
         * @var ObjectManager $objectManager
         */
        $objectManager = GeneralUtility::makeInstance(ObjectManager::class);

        /**
         * @var ArticleRepository $articleRepository
         */
        $articleRepository = $objectManager->get(ArticleRepository::class);
        $relatedArticles = $articleRepository->findRelatedArticles($this);

        return $relatedArticles;
    }

}