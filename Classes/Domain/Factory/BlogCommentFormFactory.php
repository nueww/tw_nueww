<?php

namespace Tollwerk\TwNueww\Domain\Factory;

use Doctrine\DBAL\Configuration;
use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Extbase\Object\ObjectManager;
use TYPO3\CMS\Extbase\Validation\Validator\EmailAddressValidator;
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


        // TODO: Set fluid template

        // Init stuff
        /**
         * @var ObjectManager $objectManager
         */
        $objectManager = GeneralUtility::makeInstance(ObjectManager::class);


        $prototypeName = 'blog-comment';

        /**
         * @var ConfigurationService $configurationService
         */
        $configurationService = $objectManager->get(ConfigurationService::class);
        $configurationService->initializeObject();

        $prototypeConfiguration = $configurationService->getPrototypeConfiguration($prototypeName);

        // Create form with a single form page
        /**
         * @var FormDefinition $form
         */
        $form = $objectManager->get(FormDefinition::class, 'BlogCommentForm', $prototypeConfiguration);
        $form->setRenderingOption('controllerAction', 'show');
        $form->setRenderingOption('addQueryString', true);
        $page = $form->createPage('page');


        // Create regular form fields
        $name = $page->createElement('name', 'Text');
        $name->setLabel('Name');
        $name->addValidator($objectManager->get(NotEmptyValidator::class));

        $email = $page->createElement('email', 'Text');
        $email->setLabel('Email');
        $email->addValidator($objectManager->get(EmailAddressValidator::class));
        $email->addValidator($objectManager->get(NotEmptyValidator::class));

        $message = $page->createElement('message', 'Textarea');
        $message->setLabel('Message');
        $message->addValidator($objectManager->get(NotEmptyValidator::class));

        $dropdown = $page->createElement('choice', 'SingleSelect');
        $dropdown->setProperty('options', [1 => 'foo', 2 => 'bar', 3 => 'baz']);
        $dropdown->setLabel('Your choice');


        // Create finishers
        $form->createFinisher('BlogComment', []);
        // TODO: Add antibot finisher


        // Build form
        $this->triggerFormBuildingFinished($form);
        return $form;
    }
}