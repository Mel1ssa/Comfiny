<?php

namespace ComfinyMeliBlueBundle\Form;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

class PostType extends AbstractType
{
public function buildForm(FormBuilderInterface $builder, array $options)
{
    $builder
        ->add('title', TextType::class, array(
            'required' => true,
            'label' => false,
            'attr' => array(
                'class' => 'postTitle',
                'placeholder' => 'Titre'
            )

        ))
        ->add('content', TextareaType::class, array(
            'required' => true,
            'label' => false,
            'attr' => array(
                'class' => 'postContent',
                'placeholder' => 'tapez votre article ici (HTML permis)'

            )
        ))
        ->add('save', SubmitType::class, array(
            'label' => 'Enregistrer',
             'attr' => array(
                'class' => 'seeResult')
        ))
    ;
}
}