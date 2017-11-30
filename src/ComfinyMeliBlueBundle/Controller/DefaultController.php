<?php

namespace ComfinyMeliBlueBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use ComfinyMeliBlueBundle\Entity\Post;
use Symfony\Component\HttpFoundation\Response;

class DefaultController extends Controller
{
    /**
     * @Route("/")
     */
    public function indexAction()
    {
        $postRepository = $this->getDoctrine()->getRepository(Post::class);
        return $this->render('ComfinyMeliBlueBundle:Default:index.html.twig', ["posts"=> $postRepository->find10LastPosts()]);
    }

    /**
     * @Route("/post/{slug}", requirements={"slug" = "[A-Za-z_-]+"})
     */
    public function postAction($slug)
    {
        $postRepository = $this->getDoctrine()->getRepository(Post::class);
        $post = $postRepository->findOneBy(array("slug"=>$slug));
        if($post== null)
            return $this->render('error404.html.twig');

        return $this->render('ComfinyMeliBlueBundle:Default:post.html.twig', ["post" => $post]);
    }
}
