
function limparFormulario() {
    document.getElementById("form_cadastro").reset();
}

function cadastrar() {
    aguardar();

    var formulario = new URLSearchParams(new FormData(document.getElementById("form_cadastro")));

    var nome = formulario.get("nome");
    var email = formulario.get("email");
    var senha = formulario.get("senha");
    var confirmacaoSenha = formulario.get("confirmacaosenha");

    // TODO: VERIFICAR AS VALIDAÇÕES QUE ELES ESTÃO APRENDENDO EM ALGORITMOS 
    if (nome == "" || email == "" || senha == "" || confirmacaoSenha == "") {

        window.alert("Preencha todos os campos para prosseguir!");
        if (nome == "") {
            console.log('nome está em branco')
        }
        if (email == "") {
            console.log('email está em branco')
        }
        if (senha == "") {
            console.log('senha está em branco')
        }
        if (confirmacaoSenha == "") {
            console.log('confirmacaoSenha está em branco')
        }
        finalizarAguardar();
        return false;
    }

    if (email.indexOf("@") == -1 || email.indexOf(".com") == -1) {
        window.alert("Ops, e-mail inválido! Verifique e tente novamente.");
        finalizarAguardar();
        return false;
    }

    if (senha != confirmacaoSenha) {
        window.alert("As senhas inseridas devem ser iguais para prosseguir!");
        finalizarAguardar();
        return false;
    }

    fetch("/usuarios/cadastrar", {
        method: "POST",
        body: formulario
    }).then(function (resposta) {

        console.log("resposta: ", resposta);

        if (resposta.ok) {
            window.alert("Cadastro realizado com sucesso!");
            window.location = "login.html";
            limparFormulario();
            finalizarAguardar();
        } else {
            throw ("Houve um erro ao tentar realizar o cadastro!");
        }
    }).catch(function (resposta) {
        console.log(`#ERRO: ${resposta}`);
        finalizarAguardar();
    });

    return false;
}