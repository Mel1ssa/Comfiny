<?php

namespace ComfinyMeliBlueBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use ComfinyMeliBlueBundle\Entity\Post;
use Symfony\Component\HttpFoundation\Response;

class BlogController extends Controller
{
    /**
     * @Route("/{page}", requirements={"page" = "\d*"},  name="blog_home")
     */
    public function indexAction($page)
    {
        if($page== "")
            $page = 1;
        $postPerpage=4;

        $postRepository = $this->getDoctrine()->getRepository(Post::class);
        $posts = $postRepository->findPostsPerPage($page, $postPerpage);

        $nbPages = ceil(count($posts) / $postPerpage);

        // Si la page n'existe pas, on retourne une 404
        if ($page > $nbPages) {
            return $this->render('error404.html.twig');
        }

        return $this->render('ComfinyMeliBlueBundle:Default:index.html.twig', array(
            "posts"=> $posts,
            'nbPages'     => $nbPages,
            'page'        => $page
            ));
    }

    /**
     * @Route("/post/{slug}", requirements={"slug" = "[A-Za-z1-9_-]+"}, name="post_path")
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
