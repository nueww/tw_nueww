<?php

/**
 * tw_nueww
 *
 * @category Jkphl
 * @package Jkphl\Micrometa
 * @subpackage Tollwerk\TwNueww\Component\Core
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

namespace Tollwerk\TwNueww\Component\Styleguide;

use Sabberworm\CSS\Comment\Comment;
use Sabberworm\CSS\Parser;
use Sabberworm\CSS\Rule\Rule;
use Sabberworm\CSS\RuleSet\DeclarationBlock;
use Sabberworm\CSS\Value\Color;
use Tollwerk\TwComponentlibrary\Component\FluidTemplateComponent;
use TYPO3\CMS\Core\Utility\GeneralUtility;

/**
 * Colors
 */
class ColorsComponent extends FluidTemplateComponent
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
        $this->setTemplate('EXT:tw_nueww/Resources/Private/Partials/Global/Styleguide/Colors.html');

        $colorGroups = ['_' => []];
        $colorGroup = '_';

        $colorCSSFile = GeneralUtility::getFileAbsFileName(
            'EXT:tw_nueww/Resources/Private/Partials/Global/_Config/Variables/Colors.css'
        );
        $cssParser = new Parser(file_get_contents($colorCSSFile));
        $cssDocument = $cssParser->parse();

        // Run through all declaration blocks
        /** @var DeclarationBlock $declarationBlock */
        foreach ($cssDocument->getAllDeclarationBlocks() as $declarationBlock) {
            // Run through all rules
            /** @var Rule $rule */
            foreach ($declarationBlock->getRules() as $rule) {
                // Check if a new color group should be started
                $comments = $rule->getComments();
                if (count($comments)) {
                    /** @var Comment $comment */
                    $comment = array_shift($comments);
                    $colorGroup = trim($comment->getComment());
                    $colorGroups[$colorGroup] = [];
                }

                $color = $rule->getValue();
                if ($color instanceof Color) {
                    $colorGroups[$colorGroup][$rule->getRule()] = [
                        'hex' => strval($color),
                        'rgb' => array_map('strval', $color->getColor()),
                    ];
                }
            }
        }

        $this->setParameter('colorGroups', array_filter($colorGroups));

        $this->preview->addStylesheet('EXT:tw_nueww/Resources/Public/Global/_Styleguide.min.css');
    }
}