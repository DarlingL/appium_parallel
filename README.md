
Automação Simples em Paralelo - Appium/Android

## Para Iniciar ##


### Instalar o bundler ###
Execute:
```shell
gem install bundler
```

### Instalar Gems Necessárias  ###
Execute:
```shell
bundle install
```

### Inicie os dois Emuladores ###
Após execute o comando para descobrir a UDID dos emuladores.
```shell
adb devices
```

### Configurando Capabilities ###
No Arquivo rakefile altere a propriedade "udid" (colocando os UDID informados ao rodar o comando anterior) nos métodos "self.one" e "self.two"

Altere também as propriedades "platformVersion" e "deviceName" conforme seus emuladores.



## Executando ##

### Rodar a Automação (ver a magia acontecer) ###
Após iniciar o servidor do appium, execute o comando:
```shell
rake paralelo
```
