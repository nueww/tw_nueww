<?php
namespace Tollwerk\TwNueww\Domain\Factory;

use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Extbase\Object\ObjectManager;
use TYPO3\CMS\Extbase\Validation\Validator\NotEmptyValidator;
use TYPO3\CMS\Extbase\Validation\Validator\StringLengthValidator;
use TYPO3\CMS\Form\Domain\Configuration\ConfigurationService;
use TYPO3\CMS\Form\Domain\Factory\AbstractFormFactory;
use TYPO3\CMS\Form\Domain\Model\FormDefinition;

class BlogCommentFormFactory extends AbstractFormFactory
{

    /**
     * Build a FormDefinition.
     * This example build a FormDefinition manually,
     * so $configuration and $prototypeName are unused.
     *
     * @param array $configuration
     * @param string $prototypeName
     * @return FormDefinition
     */
    public function build(array $configuration, string $prototypeName = null): FormDefinition
    {

        $prototypeName = 'standard';
        $configurationService = GeneralUtility::makeInstance(ObjectManager::class)->get(ConfigurationService::class);
        $prototypeConfiguration = $configurationService->getPrototypeConfiguration($prototypeName);


        /**
         * @var FormDefinition $form
         */
        $form = GeneralUtility::makeInstance(ObjectManager::class)->get(FormDefinition::class, 'BlogCommentForm', $prototypeConfiguration);
        $form->setRenderingOption('controllerAction', 'show');
        $form->setRenderingOption('addQueryString', true);

        $page = $form->createPage('page1');
        $name = $page->createElement('name', 'Text');
        $name->setLabel('Name');
        $name->addValidator(GeneralUtility::makeInstance(ObjectManager::class)->get(NotEmptyValidator::class));


        $article = $page->createElement('article','Hidden');
        if(isset($_GET['tx_twnueww_blog']['article'])){
            $article->setDefaultValue($_GET['tx_twnueww_blog']['article']);
        }

        $action = $page->createElement('action','Hidden');
        if(isset($_GET['tx_twnueww_blog']['action'])){
            $action->setDefaultValue($_GET['tx_twnueww_blog']['action']);
        }

        $controller = $page->createElement('controller','Hidden');
        if(isset($_GET['tx_twnueww_blog']['controller'])){
            $controller->setDefaultValue($_GET['tx_twnueww_blog']['controller']);
        }

        $form->createFinisher('BlogComment', []);



        $this->triggerFormBuildingFinished($form);
        return $form;
    }
}