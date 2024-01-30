import { HeaderComponent } from "./presentation/view/components/header/header_view";
import FormComponent from "./presentation/view/components/form/form_view";
import { LegendView } from "./presentation/view/components/legend/legend_view";
import { FooterView } from "./presentation/view/components/footer/footer_view";
import CardList from "./presentation/view/components/card-list/card-list";
import GymProvider from "./context/form_context";
import './presentation/styles/global.scss'

function App() {
  return (
    <GymProvider>
      <HeaderComponent />
      <FormComponent />
      <LegendView />
      <CardList />
      <FooterView />
    </GymProvider>
  );
}

export default App;
