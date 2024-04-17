## Configuração de Rede - Polícia Militar SP

<div align="center">
    <img src="https://github.com/alexandrefreitass//assets/109884524/b9dc215e-2f08-4a46-a900-74fb7830dd35" />
</div>

Este projeto consiste em uma aplicação desenvolvida em VBS e HTA para simplificar o processo de configuração de redes na Polícia Militar do Estado de São Paulo. Com essa ferramenta, é possível configurar IPs, gateways, DNS e proxies de forma rápida e eficiente, substituindo o processo manual anterior que era mais demorado e propenso a erros.

### Características

- **Facilidade de Uso**: Interface gráfica amigável que permite a configuração rápida de redes e proxies.
- **Eficiência**: Reduz o tempo necessário para alterações na configuração de rede.
- **Flexibilidade**: Suporte para configurações estáticas de IP e DHCP.
- **Segurança**: Permite ajustes precisos na configuração de proxies para segurança aprimorada na navegação.

### Funcionalidades

- Configuração de IP estático ou DHCP.
- Ajuste de DNS e Gateway.
- Habilitação ou desabilitação do Proxy com especificações detalhadas.
- Interface intuitiva com opções claramente definidas para cada configuração necessária.

### Como Usar

1. **Abrir a Aplicação**: Execute o arquivo HTA para abrir a interface de usuário.
2. **Escolher Configuração**:
   - Para configurar o IP: Clique em `Setar IP Estático` ou `Setar IP DHCP`.
   - Para configurar o Proxy: Clique em `Configurar Proxy` e escolha entre habilitar ou desabilitar.
3. **Realizar Ajustes**: Siga as instruções na tela para inserir detalhes como endereço IP, DNS, gateway, etc.
4. **Aplicar Configurações**: Clique no botão correspondente para aplicar as configurações. Uma mensagem de confirmação será exibida no rodapé da interface.
5. **Encerrar o Programa**: Clique em `Encerrar` para fechar a aplicação.

### Requisitos

- Sistema Operacional: Windows 10 ou superior.
- Permissões de administrador são necessárias para realizar alterações na configuração da rede.

### Código Fonte

O código fonte da aplicação é composto por scripts VBS e um arquivo HTA que compõem a interface de usuário e a lógica de controle. Abaixo está um exemplo da funcionalidade para configurar um IP estático:

```html
<input type='text' id='ipInput' placeholder='Exemplo:10.51.114.128' class='buttonconfigurar'>
<button onclick='setFixedIP()'>Configurar IP</button>

Sub setFixedIP()
    InputipAddress = document.getElementById("ipInput").value
    ipAddresses = Array(InputipAddress)
    ' Código para configuração do IP
End Sub
```

### Importante

O sistema se encontra no arquivo:
```
configurar-rede.hta
```
Os outros dois arquivos que se encontram na pasta servem apenas para dar privilegios de administrador ao arquivo principal

O arquivo
```
RunHTAAsAdmin.bat
```
É um bat que contém:
```
@echo off
setlocal
cd /d %~dp0
powershell -Command "Start-Process mshta.exe -ArgumentList 'caminho_do_arquivo_principal' -Verb runAs"
```
Você deve modificar o caminho conforme for renomeando pastas ou alterando local do arquivo

O Executável que está com o nome de:
```
Configurar Rede
```

É apenas um atalho do arquivo .bat porém com a permissão de administrador

Abaixo como habilitar a permissão de administrador no atalho:

<div align="center">
    <img src="https://github.com/alexandrefreitass//assets/109884524/b9dc215e-2f08-4a46-a900-74fb7830dd35" />
</div>

### Contribuições

Contribuições são bem-vindas! Para contribuir, por favor, crie um fork do repositório, faça suas alterações e submeta um pull request.

### Licença
Este projeto está sob a licença MIT. Consulte o arquivo <a href="https://github.com/alexandrefreitass/Configurar-Rede-VBS/blob/master/LICENSE.txt">LICENSE</a> para obter mais detalhes.

### Contato
Para mais informações, entre em contato através do email: xandy4321@hotmail.com.