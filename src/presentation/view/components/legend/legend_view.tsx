import { ReactElement, memo } from 'react';
import './legend.scss'
import requiredMask from '../../../../assets/images/png/required-mask.png'
import recommendedMask from '../../../../assets/images/png/recommended-mask.png'
import requiredTowel from '../../../../assets/images/png/required-towel.png'
import recommendeTowel from '../../../../assets/images/png/recommended-towel.png'
import partialFountain from '../../../../assets/images/png/partial-fountain.png'
import notAllowedFountain from '../../../../assets/images/png/forbidden-fountain.png'
import partialLockerroom from '../../../../assets/images/png/partial-lockerroom.png'
import requiredLockerroom from '../../../../assets/images/png/required-lockerroom.png'
import forbiddenLockerroom from '../../../../assets/images/png/forbidden-lockerroom.png'

export function LegendView(): ReactElement{
  return (
    <div className="legend">
      <div className="legend-item">
        <h4>Máscara</h4>
        <div className="legend-images">
          <div className="legend-image">
            <img src={requiredMask} alt="Obrigatório"/>
            <p>Obrigatório</p>
          </div>
          <div className="legend-image">
            <img src={recommendedMask} alt="Recomendado"/>
            <p>Recomendado</p>
          </div>
        </div>
      </div>
      <div className="legend-item">
        <h4>Toalha</h4>
        <div className="legend-images">
          <div className="legend-image">
            <img src={requiredTowel} alt="Obrigatório"/>
            <p>Obrigatório</p>
          </div>
          <div className="legend-image">
            <img src={recommendeTowel} alt="Recomendado"/>
            <p>Recomendado</p>
          </div>
        </div>
      </div>
      <div className="legend-item">
        <h4>Bebedouro</h4>
        <div className="legend-images">
          <div className="legend-image">
            <img src={partialFountain} alt="Parcial"/>
            <p>Parcial</p>
          </div>
          <div className="legend-image">
            <img src={notAllowedFountain} alt="Proibido"/>
            <p>Proibido</p>
          </div>
        </div>
      </div>
      <div className="legend-item">
        <h4>Vestiários</h4>
        <div className="legend-images">
          <div className="legend-image">
            <img src={partialLockerroom} alt="Liberado"/>
            <p>Liberado</p>
          </div>
          <div className="legend-image">
            <img src={requiredLockerroom} alt="Parcial"/>
            <p>Parcial</p>
          </div>
          <div className="legend-image">
            <img src={forbiddenLockerroom} alt="Fechado"/>
            <p>Fechado</p>
          </div>
        </div>
      </div>
    </div>
  );
};

export default memo(LegendView);
