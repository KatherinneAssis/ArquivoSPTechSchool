
int dht_pin = A2;
DHT  dht_1 = DHT(dht_pin, dht_type); //pode-se configurar diversos sensores DHTxx

// ´int lm35_pin = A0, leitura_lm35 = 0;
// float temperatura;

// int ldr_pin = A5, leitura_ldr = 0;

int switch_pin = 7;

void setup() 
{
  Serial.begin(9600);
  dht_1.begin();
  pinMode(switch_pin, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:

    float umidade = dht_1.readHumidity();
  float temperatura = dht_1.readTemperature();
  if (isnan(temperatura) or isnan(umidade)) 
  {
    Serial.println("Erro ao ler o DHT");
  } 
  else
  {
    Serial.print(umidade);
    Serial.print(";");
    Serial.print(temperatura);
    Serial.print(";");
   }

}
