@echo off
:: Infinite loop for perpetual questions
:loop
    set /p question="Enter your question (type 'exit' to quit): "

    :: Check if the user typed 'exit' to break the loop
    if "%question%"=="exit" goto end

    :: Run the model with the provided input
    Meta-Llama-3.2-1B-Instruct-Q8_0.llamafile.exe -p "%question%" --log-disable

    :: Go back to the loop for another question
    goto loop

:end
    echo Exiting...
