import './header.scss';
import { memo } from 'react';
import logo from '../../../../assets/images/svg/logo.svg'
import { ReactElement } from 'react';

export function HeaderComponent(): ReactElement {
    return (
        <header>
            <div className="logo-container">
                <img src={logo} alt="Logo" />
            </div>
            <div className="text-container">
                <div className="heading">
                    <h1>REABERTURA <br />SMART FIT</h1>
                    <span className="heading-border"></span>
                </div>
                <p>O horário de funcionamento das nossas unidades está seguindo os decretos de cada município. Por isso, confira aqui se a sua unidade está aberta e as medidas de segurança que estamos seguindo.</p>
            </div>
        </header>
    );
}

export default memo(HeaderComponent);
