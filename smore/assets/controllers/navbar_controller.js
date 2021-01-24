import { Controller } from 'stimulus';

export default class extends Controller {
    connect() {
        let path = window.location.pathname;
        let links = $(this.element).find('li>a');

        $(links).each(function(i, link){
            if($(link).attr('href') === path){
                $(link).closest('li').addClass('active');
            }
        });
    }
}
