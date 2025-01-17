<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gerador de Códigos</title>
    <style>
        body {
            margin: 0;
            background: black;
            color: white;
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
        }
        .matrix {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: black;
            color: green;
            font-family: monospace;
            opacity: 0.2;
        }
        .container {
            z-index: 1;
            text-align: center;
        }
        .button {
            margin-top: 20px;
            padding: 15px 30px;
            border: none;
            background-color: #00ff00;
            color: black;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            box-shadow: 0 0 10px #00ff00;
        }
        .button:active {
            box-shadow: 0 0 5px #00ff00;
        }
        .hidden {
            display: none;
        }
    </style>
</head>
<body>
    <div class="matrix">101010101010101010101010101010101010101010</div>
    <div class="container" id="step1">
        <h1>Clique para Gerar seu código</h1>
        <button class="button" onclick="startGenerating()">Gerar</button>
    </div>
    
    <div class="container hidden" id="step2">
        <h1>Gerando...</h1>
        <div class="button">...</div>
    </div>

    <div class="container hidden" id="step3">
        <h1>Seu código é: <span id="code">#XXXXXX*</span></h1>
        <button class="button" onclick="copyCode()">Copiar Código</button>
        <a href="https://betlionpro.com?aff=13765" target="_blank">
            <button class="button">Acessar BetLionPro</button>
        </a>
    </div>

    <script>
        function startGenerating() {
            document.getElementById('step1').classList.add('hidden');
            document.getElementById('step2').classList.remove('hidden');
            
            setTimeout(() => {
                document.getElementById('step2').classList.add('hidden');
                document.getElementById('step3').classList.remove('hidden');
                generateCode();
            }, 3000);
        }

        function generateCode() {
            const code = `#${Math.random().toString(36).substr(2, 5).toUpperCase()}*`;
            document.getElementById('code').textContent = code;
        }

        function copyCode() {
            const code = document.getElementById('code').textContent;
            navigator.clipboard.writeText(code).then(() => {
                alert('Código copiado para a área de transferência!');
            }).catch(() => {
                alert('Falha ao copiar o código.');
            });
        }
    </script>
</body>
</html>
