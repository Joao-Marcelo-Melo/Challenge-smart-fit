import { GymModel } from "../models/gym_model";
import client from "./connection";

export interface formDTO {
    horarios: string;
    incluir_fechadas: boolean;
}

export const submitForm = ({ horarios, incluir_fechadas }: formDTO): Promise<GymModel[]> => {
    return new Promise(async (resolve, reject) => {
        try {
            const response = await client.get<GymModel[]>('/localizacoes', {
                params: {
                    horarios,
                    incluir_fechadas,
                },
            });
            console.log(horarios)
            resolve(response.data);
        } catch (error) {
            console.error("Erro na requisição:", error);
            reject(error);
        }
    });
};
