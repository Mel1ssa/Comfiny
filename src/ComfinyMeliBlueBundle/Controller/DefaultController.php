<?php

namespace ComfinyMeliBlueBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class DefaultController extends Controller
{
    /**
     * @Route("/")
     */
    public function indexAction()
    {
        return $this->render('ComfinyMeliBlueBundle:Default:index.html.twig');
    }

    /**
     * @Route("/post/{index}")
     */
    public function postAction($index)
    {
        return $this->render('ComfinyMeliBlueBundle:Default:post.html.twig', ["index"=> $index]);
    }
}
