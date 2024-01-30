import './footer.scss';
import { memo } from 'react';
import logo from '../../../../assets/images/svg/logo.svg'
import { ReactElement } from 'react';

export function FooterView(): ReactElement {
    return (
        <footer>
            <img src={logo}/>
            <p>Todos direitos reservados - 2023</p>
        </footer>
    );
}

export default memo(FooterView);
