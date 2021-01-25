<?php
namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/samples")
 */
class SampleController extends AbstractController {

    /**
     * @Route("", name="samples")
     */
    public function samples() : Response {
        $number = random_int(0, 100);

        return $this->render('samples/index.html.twig', [
            'number' => $number,
        ]);
    }

    /**
     * @Route("/mine", name="samples_mine")
     */
    public function mine() : Response {
        return $this->render('samples/mine.html.twig');
    }

    /**
     * @Route("/favourites", name="samples_favourites")
     */
    public function favourites() : Response {
        return $this->render('samples/favourites.html.twig');
    }
}
