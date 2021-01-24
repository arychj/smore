import { Controller } from 'stimulus';

export default class extends Controller {
    connect() {
        let modal = $(this.element);
        let id = $(this.element).attr('id');
        let query = $(this.element).find('#query');

        $(modal).modal({
            'opacity': 0.75,
            'onOpenEnd': () => $(query).select()
        });
    }
}
