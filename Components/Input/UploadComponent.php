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

namespace Tollwerk\TwNueww\Component\Input;

use Tollwerk\TwComponentlibrary\Component\FluidTemplateComponent;

class UploadComponent extends FluidTemplateComponent
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
        $this->setTemplate('EXT:tw_nueww/Resources/Private/Partials/Components/InputUpload/Template.html');

        $this->setParameter('label', 'Deine Dateien');
        $this->setParameter('labelHidden', false);
        $this->setParameter('name', 'files');
        $this->setParameter('required', false);
        $this->setParameter('disabled', false);
        $this->setParameter('readonly', false);

        $this->preview->addStylesheet('EXT:tw_nueww/Resources/Public/Components/InputUpload.min.css');

        $this->preview->addHeaderScript('EXT:tw_nueww/Resources/Public/Global/Base.critical.min.js');
        $this->preview->addHeaderScript('EXT:tw_nueww/Resources/Public/Components/InputUpload.critical.min.js');
        $this->preview->addFooterScript('EXT:tw_nueww/Resources/Public/Global/Base.default.min.js');
        $this->preview->addFooterScript('EXT:tw_nueww/Resources/Public/Components/InputUpload.default.min.js');
    }
}
