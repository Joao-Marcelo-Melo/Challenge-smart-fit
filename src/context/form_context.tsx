import React from "react";
import { GymModel } from "../models/gym_model";

export type GymContextType = {
    gyms: GymModel[];
    saveGyms: (gyms: GymModel[]) => void;
  };

export const GymContext = React.createContext<GymContextType>({ gyms: [], saveGyms: () => {} });


const GymProvider: React.FC<{children: React.ReactNode}> = ({ children }) => {
    const [gyms, setGyms] = React.useState<GymModel[]>([]);

    const saveGyms = (gym: GymModel[]) => {
        setGyms(gym)
    }

    return (
        <GymContext.Provider value={{gyms, saveGyms}}>
            {children}
        </GymContext.Provider>
    )
}

export default GymProvider;
