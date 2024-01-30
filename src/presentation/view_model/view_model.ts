import { useState } from 'react';
import { submitForm } from '../../repositories/auth_repository';
// import { GymModel } from '../../models/gym_model';
import React, { useContext } from "react";
import { GymContext } from '../../context/form_context';


const viewModel = () => {
    const [selectedHour, setSelectedHour] = useState<string>('');
    const [responseCount, setResponseCount] = useState<number>(0)
    const [ShowClosed, SetShowClosed] = useState<boolean>(false)
    const { gyms, saveGyms } = useContext(GymContext);

    const handleChangeHour = (event: React.ChangeEvent<HTMLInputElement>) => {
        setSelectedHour(event.target.value);
    }

    const HandleShowClosed = () => {
        if (ShowClosed == false) {
            SetShowClosed(true)
        } else {
            SetShowClosed(false)
        }
    }

    const handleSubmit = async (event: React.MouseEvent<HTMLButtonElement>) => {
        event.preventDefault()
        const response = await submitForm({
            "horario": selectedHour,
            "incluir_fechadas": ShowClosed
        })

        if (Array.isArray(response)) {
            const arrayLength = response.length
            setResponseCount(arrayLength)
        }

        saveGyms(response)
        console.log(gyms[0].mascara)
        console.log(gyms)
    }

    const mapCards = (event: React.MouseEvent<HTMLButtonElement>) => {
        event.preventDefault()
        console.log(gyms)
        console.log(responseCount)
    }

    const handleClear = (event: React.MouseEvent<HTMLButtonElement>) => {
        event.preventDefault()
        setSelectedHour('')
        SetShowClosed(false)
        setResponseCount(0)
        saveGyms([])
    }

    return {
        selectedHour,
        responseCount,
        ShowClosed,
        handleChangeHour,
        HandleShowClosed,
        handleSubmit,
        handleClear,
        mapCards,
        gyms
    }
}

export default viewModel;
