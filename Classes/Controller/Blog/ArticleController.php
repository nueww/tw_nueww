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

namespace Tollwerk\TwNueww\Controller\Blog;


use Tollwerk\TwNueww\Domain\Model\Blog\Article;
use Tollwerk\TwNueww\Domain\Repository\Blog\ArticleRepository;
use TYPO3\CMS\Extbase\Mvc\Controller\ActionController;

class ArticleController extends ActionController
{
    /**
     * @var ArticleRepository
     */
    protected $articleRepository = null;

    /**
     * Inject the article repository
     *
     * @param ArticleRepository $articleRepository
     */
    public function injectArticleRepository(ArticleRepository $articleRepository)
    {
        $this->articleRepository = $articleRepository;
    }

    /**
     * List action
     */
    public function listAction(){
        $articles = $this->articleRepository->findAll();
        $this->view->assign('articles',$articles);
    }

    /**
     * Show action
     * @param \Tollwerk\TwNueww\Domain\Model\Blog\Article $article
     */
    public function showAction(Article $article = null){
        $this->view->assign('article', $article);
    }
}