import { useState } from 'react';
import { submitForm } from '../../repositories/auth_repository';
import React, { useContext } from "react";
import { GymContext } from '../../context/form_context';


const viewModel = () => {
    const [selectedHour, setSelectedHour] = useState<string>('');
    const [responseCount, setResponseCount] = useState<number>(0)
    const [ShowClosed, SetShowClosed] = useState<boolean>(false)
    const [errorMessage, setErrorMessage] = useState<string>('')
    const [sucessMessage, setSucessMessage] = useState<string>('')
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
        setErrorMessage('')
        try {
            const response = await submitForm({
                "horario": selectedHour,
                "incluir_fechadas": ShowClosed
            })
    
            if (Array.isArray(response)) {
                const arrayLength = response.length
                setResponseCount(arrayLength)
            }
            saveGyms(response)
            setSucessMessage('Academias listadas com sucesso ✔️')
        } catch (error: any) {
            if (error.request) {
                setErrorMessage('Não foi possivel se conectar com o servidor ❌')
            } else {
                setErrorMessage('Não foi possivel Listar as academias')
            }
        }
    }

    const handleClear = (event: React.MouseEvent<HTMLButtonElement>) => {
        event.preventDefault()
        setSelectedHour('')
        SetShowClosed(false)
        setResponseCount(0)
        saveGyms([])
        setErrorMessage('')
        setSucessMessage('')
    }

    return {
        selectedHour,
        responseCount,
        ShowClosed,
        handleChangeHour,
        HandleShowClosed,
        handleSubmit,
        handleClear,
        gyms,
        errorMessage,
        sucessMessage
    }
}

export default viewModel;
