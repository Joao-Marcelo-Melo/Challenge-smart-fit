import { ReactElement } from 'react';
import './card-list.scss'
import CardComponent from '../card/card_view';
import viewModel from '../../../view_model/view_model';


export function CardList(): ReactElement {

    const { gyms } = viewModel();

    return (
        <ul className="card-list">
            {gyms.map((gym) => (
                <CardComponent key={gym.id} card={gym} />
            ))}
        </ul>
    );
};

export default CardList;
