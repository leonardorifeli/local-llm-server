# LLM Server com Ollama + Open WebUI

## Comandos

- `make up` – Sobe tudo (Ollama + UI)
- `make down` – Derruba
- `make restart` – Reinicia
- `make status` – Mostra status
- `make logs` – Logs em tempo real

## Acessar

- WebUI: http://localhost:3000
- API Ollama: http://localhost:11434

## How to use

git clone <repo> llm-server
cd llm-server
make up

⚠️ Requisitos:

- Docker instalado
- nvidia-container-toolkit configurado (se for usar GPU)

### Check using GPU

watch -n1 nvidia-smi

### Using the local model

```bash
curl http://localhost:11434/api/generate -d '{
  "model": "mistral",
  "prompt": "Explique o que é aprendizado por reforço.",
  "stream": false
}'
```
