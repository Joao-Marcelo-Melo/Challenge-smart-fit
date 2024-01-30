import { GymModel } from "../models/gym_model";
import client from "./connection";

export interface formDTO {
    horario: string;
    incluir_fechadas: boolean;
}

export const submitForm = ({ horario, incluir_fechadas }: formDTO): Promise<GymModel[]> => {
    return new Promise(async (resolve, reject) => {
        try {
            const response = await client.get<GymModel[]>('/localizacoes', {
                params: {
                    horario,
                    incluir_fechadas,
                },
            });
            resolve(response.data);
        } catch (error) {
            console.error("Erro na requisição:", error);
            reject(error);
        }
    });
};
