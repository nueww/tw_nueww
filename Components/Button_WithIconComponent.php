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

class Button_WithIconComponent extends FluidTemplateComponent
{
    /**
     * Component status
     *
     * @var int
     */
    protected $status = self::STATUS_WIP;

    /**
     * Alternative label
     *
     * @var string
     */
    protected $label = 'With icon';

    /**
     * Configure the component
     *
     * Gets called immediately after construction. Override this method in components to set their properties.
     *
     * @return void
     */
    protected function configure()
    {
        $this->setTemplate('EXT:tw_nueww/Resources/Private/Partials/Components/Button/Button.html');

        $this->setParameter('label', 'mybutton');
        $this->setParameter('type', null);
        $this->setParameter('href', null);
        $this->setParameter('icon', 'Star');
        $this->setParameter('target', null);

//        $this->preview->addHeaderInclude('fileadmin/fischer/js/icons-loader.html');
//        $this->preview->addStylesheet('EXT:tw_fischer/Resources/Public/Css/B_button.min.css');
    }
}
