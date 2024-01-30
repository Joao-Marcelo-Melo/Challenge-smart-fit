import './form.scss'
import { ReactElement } from 'react';
import horario from '../../../../assets/images/png/icon-hour.png'
import viewModel from '../../../view_model/view_model';


export function FormComponent(): ReactElement {

  const { selectedHour, responseCount, ShowClosed, handleChangeHour, HandleShowClosed, handleSubmit, handleClear, errorMessage, sucessMessage } = viewModel();

  return (
    <form className="form-group">
      <div className="form-icon">
        <img src={horario} alt="Icon" />
        Horário
      </div>
      <h3>Qual horário você quer treinar?</h3>
      <div className="radio-wrapper">
        <input type="radio" name="hour" checked={selectedHour == 'manha'} value="manha" onChange={handleChangeHour} />
        <label htmlFor="morning">Manhã</label>
        <span>06:00 às 12h</span>
      </div>
      <div className="radio-wrapper">
        <input type="radio" name="hour" checked={selectedHour == 'tarde'} value="tarde" onChange={handleChangeHour} />
        <label htmlFor="afternoon">Tarde</label>
        <span>12:01 às 18h</span>
      </div>
      <div className="radio-wrapper">
        <input type="radio" name="hour" checked={selectedHour == 'noite'} value="noite" onChange={handleChangeHour} />
        <label htmlFor="night">Noite</label>
        <span>18:01 às 23h</span>
      </div>
      <div className="checkbox-wrapper">
        <div className="checkbox">
          <input type="checkbox" name="showClosed" checked={ShowClosed} onChange={HandleShowClosed} />
          <label htmlFor="showClosed">Exibir unidades fechadas</label>
        </div>
        <span>Resultados encontrados: <strong>{responseCount}</strong></span>
      </div>
      <div className="btn-wrapper">
        <button type="submit" className="btn btn-primary" onClick={handleSubmit}>Encontrar unidade</button>
        <button type="button" className="btn btn-secondary" onClick={handleClear}>Limpar</button>
      </div>
      <div className='messages'>
        <p className='sucess-message'>{sucessMessage}</p>
        <p className='error-message'>{errorMessage}</p>
      </div>
    </form>
  );
}

export default (FormComponent);
