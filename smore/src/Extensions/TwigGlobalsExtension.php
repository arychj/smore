<?php
namespace App\Extensions;

use Symfony\Component\HttpFoundation\RequestStack;
use Twig\Extension\AbstractExtension;
use Twig\Extension\GlobalsInterface;

class TwigGlobalsExtension extends AbstractExtension implements GlobalsInterface {
    private $requestStack;

    public function __construct(RequestStack $requestStack) {
        $this->requestStack = $requestStack;
    }

    public function getGlobals(): array {
        return [
            '_route' => $this->requestStack->getCurrentRequest()->get('_route')
        ];
    }
}