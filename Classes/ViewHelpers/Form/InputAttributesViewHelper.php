<?php
/**
 * Created by PhpStorm.
 * User: klaus
 * Date: 03.10.2017
 * Time: 19:38
 */

namespace Tollwerk\TwNueww\ViewHelpers\Form;


use TYPO3\CMS\Fluid\Core\ViewHelper\AbstractViewHelper;

class InputAttributesViewHelper extends AbstractViewHelper
{
    protected $valueAttributes = [
        'name',
        'type',
        'value',
        'placeholder',
        'autocomplete'
    ];

    protected $attributes = [
        'required',
        'disabled',
        'readonly',
        'resizable'
    ];

    public function initializeArguments()
    {
        parent::initializeArguments();
        $this->registerArgument('valuesToCheck', 'array', 'Check this values and set element attributes accordingly', true);
    }

    public function render()
    {
        $valuesToCheck = $this->arguments['valuesToCheck'];
        $return = [];

        foreach ($valuesToCheck as $key => $value) {
            if (in_array($key, $this->valueAttributes) && $value) {
                $return[] = $key . '="' . $value . '"';
                continue;
            }
            if (in_array($key, $this->attributes) && $value) {
                $return[] = $key;
                continue;
            }
        }

        $return =  count($return) ? ' ' . implode(' ', $return) : '';
        return $return;
    }
}