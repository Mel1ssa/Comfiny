<?php

namespace ComfinyMeliBlueBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use ComfinyMeliBlueBundle\Entity\Post;

class DefaultController extends Controller
{
    /**
     * @Route("/")
     */
    public function indexAction()
    {
        $postRepository = $this->getDoctrine()->getRepository(Post::class);
        return $this->render('ComfinyMeliBlueBundle:Default:index.html.twig', ["posts"=> $postRepository->findAll()]);
    }

    /**
     * @Route("/post/{id}", requirements={"id" = "\d+"})
     */
    public function postAction($id)
    {
        $postRepository = $this->getDoctrine()->getRepository(Post::class);
        return $this->render('ComfinyMeliBlueBundle:Default:post.html.twig', ["post" => $postRepository->find($id)]);
    }
}
