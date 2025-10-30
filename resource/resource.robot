*** Settings ***
Documentation         https://superheroapi.com/api/
Library               RequestsLibrary
Library               Collections

*** Variables ***
${URL}      https://superheroapi.com/api/
${TOKEN}    3617586838252492
&{ID_HERO}            ID_Green_Arrow=298    ID_Flash=263    ID_Ant_Man=30

*** Keywords ***
## Actions
# Dado
Que esteja conectado na SuperHeroAPI
    Create Session    superheroapi    ${URL}/${TOKEN}   verify=True

# QUANDO
requisitar o histórico do super herói "Green Arrow"
    ${RESPONSE}     GET On Session    superheroapi    ${ID_HERO.ID_Green_Arrow}
    Set Test Variable    ${RESPONSE}

requisitar as estatísticas de poder dos super heróis "Flash" e "Ant-Man"
    ${RESPONSE_FLASH}     GET On Session    superheroapi    ${ID_HERO.ID_Flash}/powerstats
    ${RESPONSE_ANT_MAN}   GET On Session    superheroapi    ${ID_HERO.ID_Ant_Man}/powerstats
    Set Test Variable     ${RESPONSE_FLASH}
    Set Test Variable     ${RESPONSE_ANT_MAN}


# ENTÃO
deve ser retornado que a sua inteligência é superior a "${INTELLIGENCE}"
    Should Be True    (${RESPONSE.json()["powerstats"]["intelligence"]} > ${INTELLIGENCE})


deve ser retornado que o seu verdadeiro nome é ser "${REAL_NAME}"
    Should Be Equal As Strings    ${RESPONSE.json()["biography"]["full-name"]}    ${REAL_NAME}


deve ser retornado que é afiliado do grupo "${GROUP}"
    Should Contain Any      ${RESPONSE.json()["connections"]["group-affiliation"]}    ${GROUP}


deve ser retornado que o mais inteligente é o herói "Ant-Man"
    Should Be True    (${RESPONSE_ANT_MAN.json()["intelligence"]} > ${RESPONSE_FLASH.json()["intelligence"]})


deve ser retornado que o mais rápido é o herói "Flash"
    Should Be True    (${RESPONSE_FLASH.json()["speed"]} > ${RESPONSE_ANT_MAN.json()["speed"]})


deve ser retornado que o mais forte é o herói "Ant-Man"
    Should Be True    (${RESPONSE_ANT_MAN.json()["strength"]} > ${RESPONSE_FLASH.json()["strength"]})
