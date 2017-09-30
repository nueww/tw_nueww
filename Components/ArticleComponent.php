<?php

/**
 * tw_nueww
 *
 * @category Jkphl
 * @package Jkphl\Micrometa
 * @subpackage Tollwerk\TwNueww\Component
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

namespace Tollwerk\TwNueww\Component;

use Tollwerk\TwComponentlibrary\Component\FluidTemplateComponent;

class ArticleComponent extends FluidTemplateComponent
{
    /**
     * Component status
     *
     * @var int
     */
    protected $status = self::STATUS_WIP;

    /**
     * Configure the component
     *
     * Gets called immediately after construction. Override this method in components to set their properties.
     *
     * @return void
     */
    protected function configure()
    {
        $this->setTemplate('EXT:tw_nueww/Resources/Private/Partials/Components/Article/Template.html');

        $this->setParameter('headline-prio', 1);
        $this->setParameter('title', 'NUEWW next year will be sponsored by ACME');
        $this->setParameter('publDt', date('U'));
        $this->setParameter('publDtFormat', 'j. M Y');
        $this->setParameter('teaser', 'Regarding to the CEO of ACME, the sponsoring contract will be extended.');
        $this->setParameter('href', '/');

//        $this->preview->addHeaderInclude('fileadmin/fischer/js/icons-loader.html');
//        $this->preview->addStylesheet('EXT:tw_fischer/Resources/Public/Css/B_button.min.css');
    }
}
