<?php

namespace ComfinyMeliBlueBundle\Controller;

use ComfinyMeliBlueBundle\Entity\Post;
use ComfinyMeliBlueBundle\Entity\Task;
use ComfinyMeliBlueBundle\Form\PostType;
use ComfinyMeliBlueBundle\Form\TaskType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class CRUDController extends Controller
{
    /**
     * @Route("/add",  name="post_add")
     */
    public function  newAction(Request $request){

        $post = new Post();

        $form = $this->createForm(PostType::class, $post);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $post = $form->getData();
            $post->setCreatedAt(new \DateTime('now'));
            $post->setModifiedAt(new \DateTime('now'));
            $em = $this->getDoctrine()->getManager();
            $em->persist($post);
             $em->flush();
            $request->getSession()->getFlashBag()->add('Notification', 'Article bien enregistré.');

            return $this->redirectToRoute('blog_home',array("page" => 1));
        }
        return $this->render('ComfinyMeliBlueBundle:CRUD:add.html.twig', array(
            'form' => $form->createView(),
        ));

    }



    /**
     * @Route("/edit/{slug}",  name="post_edit")
     */
    public function  editAction(Request $request, $slug){

        $postRepository = $this->getDoctrine()->getRepository(Post::class);
        $post = $postRepository->findOneBy(array('slug' =>$slug));

        $form = $this->createForm(PostType::class, $post);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $post = $form->getData();
            $post->setModifiedAt(new \DateTime('now'));
            $em = $this->getDoctrine()->getManager();
            $em->persist($post);
            $em->flush();
            $request->getSession()->getFlashBag()->add('Notification', 'L\'article a bien modifié.');

            return $this->redirectToRoute('blog_home',array("page" => 1));
        }
        return $this->render('ComfinyMeliBlueBundle:CRUD:add.html.twig', array(
            'form' => $form->createView(),
        ));

    }

    /**
     * @Route("/delete/{id}",  name="post_delete")
     */
    public function  deleteAction($id){
        $postRepository = $this->getDoctrine()->getRepository(Post::class);
        $post = $postRepository->find($id);

        $em = $this->getDoctrine()->getManager();
        $em->remove($post);
        $em->flush();
        return $this->redirectToRoute('blog_home',array("page" => 1));

    }
}