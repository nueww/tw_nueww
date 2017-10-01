<?php

/***********************************************************************************
 *  The MIT License (MIT)
 *
 *  Copyright © 01.10.2017 Klaus Fielder <klaus@tollwerk.de> / @kftw
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

namespace Tollwerk\TwNueww\ViewHelpers;


use TYPO3Fluid\Fluid\Core\ViewHelper\AbstractTagBasedViewHelper;

class AbstractHViewHelper extends AbstractTagBasedViewHelper
{

    /**
     * Default tag name
     *
     * @var string
     */
    protected $tagName = 'div';

    /**
     * @var int
     */
    protected $h = 2;

    /**
     * Initialize the viewhelper arguments
     *
     * @return void
     */
    public function initializeArguments()
    {
        parent::initializeArguments();
        $this->registerUniversalTagAttributes();
        $this->registerArgument('start', 'int', 'The headline level to start with.', false, 1);

    }

    public function render()
    {
        $level = $this->h + ($this->arguments['start']-1);

        if($level <= 6){
            $tag = 'h'.$level;
        }else{
            $tag = 'strong';
            $class = $this->tag->getAttribute('class');
            $class .= (strlen($class) ? ' ' : '').'h'.$level;
            $this->tag->addAttribute('class', $class);
        }

        $this->tag->setTagName($tag );
        $this->tag->setContent($this->renderChildren());
        $this->tag->forceClosingTag(true);
        return $this->tag->render();

    }
}