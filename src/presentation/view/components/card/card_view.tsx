import { ReactElement } from "react";
import './card.scss'
import requiredMask from '../../../../assets/images/png/required-mask.png'
import recommendedMask from '../../../../assets/images/png/recommended-mask.png'
import requiredTowel from '../../../../assets/images/png/required-towel.png'
import recommendedTowel from '../../../../assets/images/png/recommended-towel.png'
import forbiddenFountain from '../../../../assets/images/png/forbidden-fountain.png'
import partialFountain from '../../../../assets/images/png/partial-fountain.png'
import allowedLockerroom from '../../../../assets/images/png/required-lockerroom.png'
import forbiddenLockerroom from '../../../../assets/images/png/forbidden-lockerroom.png'
import partialLockerroom from '../../../../assets/images/png/partial-lockerroom.png'


export function CardComponent({ card }: any): ReactElement {
  return (
    <div className={`card ${card.opened ? 'opened' : ''}`}>
      <span className={card.aberto ? 'opened' : ''}>{card.aberto ? 'Aberto' : 'Fechado'}</span>
      <h3>{card.titulo}</h3>
      <p dangerouslySetInnerHTML={{ __html: card.conteudo }}></p>
      <div className="divider"></div>
      <ul>
        <img src={card.mascara === "required" ? requiredMask : recommendedMask} alt="mascara" />
        <img src={card.toalha === "required" ? requiredTowel : recommendedTowel} alt="toalha" />
        <img src={card.bebedouro === "partial" ? partialFountain : forbiddenFountain} alt="bebedouro" />
        <img src={card.vestiario === "allowed" ? allowedLockerroom : card.vestiario === "partial" ? partialLockerroom : forbiddenLockerroom} alt="vestiario"
        />
      </ul>
      <ul>
        {card.agendamentos.map((agendamentos: any, index: any) => (
          <li key={index}>
            <b>{agendamentos.dias_semana}</b>
            {agendamentos.horarios}
          </li>
        ))}
      </ul>
    </div>
  );
};

export default CardComponent;
