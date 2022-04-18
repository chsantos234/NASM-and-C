# Comparativo de tempo de execução entre NASM e C
Este git apresenta exemplos de scripts em NASM e C em suas respectivas pastas. Ambos os scripts atuam na chamada de sistema SYS_FORK, gerando um processo pai e um processo filho, no qual, cada processo retorna ao usuário um print, identificando-se como "Processo pai" ou "Processo filho". O objetivo deste exercício é a comparação da velocidade de execução de duas diferentes linguagens de programação em uma mesma tarefa, onde cada script foi executado mil vezes, tendo seu tempo salvo pelo Time, comando do linux bash. Ao final das mil execuções, os dados foram tratados e utilizados no desenvolvimento das contas de média, desvio padrão e intervalo de confiança para script. O tratamento e o desenvolvimento das contas podem ser acessadas pelo arquivo tratamento.ipynb.

Resultados encontrados: 
Para NASM:
Média: 0.016 
Desvio Padrão: 0.125475097130865 
Intervalo de confiança: (0.008209786210530673, 0.023790213789469328) 

Para C:
Média: 0.515 
Desvio Padrão: 0.5017718605103318 
Intervalo de confiança: (0.48384712459844964, 0.5461528754015503) 
