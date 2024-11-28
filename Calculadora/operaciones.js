// Función para obtener los valores de los inputs
function getInputs() {
    const n1 = parseFloat(document.getElementById('n1').value);
    const n2 = parseFloat(document.getElementById('n2').value);
    return { n1, n2 };
}

// Función para mostrar el resultado
function displayResult(result) {
    const respDiv = document.getElementById('resp');
    respDiv.innerHTML = `<h5>${result}</h5>`;
}

// Función para la suma
function suma() {
    const { n1, n2 } = getInputs();
    displayResult(n1 + n2);
}

// Función para la resta
function resta() {
    const { n1, n2 } = getInputs();
    displayResult(n1 - n2);
}

// Función para la división
function division() {
    const { n1, n2 } = getInputs();
    if (n2 !== 0) {
        displayResult(n1 / n2);
    } else {
        displayResult('Error: División por cero');
    }
}

// Función para la multiplicación
function multiplicacion() {
    const { n1, n2 } = getInputs();
    displayResult(n1 * n2);
}

// Asignación de eventos a los botones
document.getElementById('suma').addEventListener('click', suma);
document.getElementById('resta').addEventListener('click', resta);
document.getElementById('division').addEventListener('click', division);
document.getElementById('multiplicacion').addEventListener('click', multiplicacion);
