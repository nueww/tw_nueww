<?php

/***********************************************************************************
 *  The MIT License (MIT)
 *
 *  Copyright © 02.10.2017 Klaus Fielder <klaus@tollwerk.de> / @kftw
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

namespace Tollwerk\TwNueww\Domain\Finisher;



use Tollwerk\TwNueww\Domain\Model\Blog\Article;
use Tollwerk\TwNueww\Domain\Model\Blog\Comment;
use Tollwerk\TwNueww\Domain\Repository\Blog\ArticleRepository;
use Tollwerk\TwNueww\Domain\Repository\Blog\CommentRepository;
use TYPO3\CMS\Extbase\Persistence\Generic\PersistenceManager;
use TYPO3\CMS\Form\Domain\Finishers\AbstractFinisher;

class BlogCommentFinisher extends AbstractFinisher
{
    protected function executeInternal()
    {


        /**
         * @var ArticleRepository $articleRepository
         */
        $articleRepository = $this->objectManager->get(ArticleRepository::class);

        /**
         * @var Article $article
         */
        $article = $articleRepository->findByUid($_REQUEST['tx_twnueww_blog']['article']);

        /**
         * @var CommentRepository $commentRepository
         */
        $commentRepository = $this->objectManager->get(CommentRepository::class);

        /**
         * @var Comment $comment
         */
        $comment = $this->objectManager->get(Comment::class);

        $formValues = $this->finisherContext->getFormValues();
        $comment->setName($formValues['name']);
        $comment->setEmail($formValues['email']);
        $comment->setText($formValues['message']);
        $comment->_setProperty('pid',$article->_getProperty('pid'));
        $commentRepository->add($comment);
        $article->addComment($comment);
        $articleRepository->update($article);

        /**
         * @var PersistenceManager $peristenceManager
         */
        $peristenceManager = $this->objectManager->get(PersistenceManager::class);
        $peristenceManager->persistAll();
    }
}