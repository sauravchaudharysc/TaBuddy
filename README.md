# TaBuddy

**TaBuddy** is an AI-assisted grading system designed to streamline programming assignment evaluation using large language models.

## 🚀 Quick Start

### 1. Build the Docker Image

```bash
docker build -t tabuddy_image .
```

### 2. Start Services

```bash
docker-compose up
```

This will spin up all the necessary services (web, celery, etc.) defined in `docker-compose.yml`.

---

## 🔧 Customizing the Model & Adapter

To change the model or adapter being used, modify the `volumes` section in the `docker-compose.yml` file for both `web` and `celery` services:

```yaml
volumes:
  - /raid/ganesh/nagakalyani/Downloads/codestral-22B:/TaBuddy/models/codestral-22B
  - /raid/ganesh/nagakalyani/Chaitanya/Tushar/codestral-22B_dpo_adapter:/TaBuddy/adapters/codestral-22B/final_checkpoint
```

Ensure that the paths point to your local model and adapter directories.

---
> ### 📌 Notes
> 
> - The **left side** of the volume (`/raid/...`) refers to the **host machine** directory (your local system).
> - The **right side** (`/TaBuddy/...`) refers to the **container path** where the model and adapter will be mounted.
> - Make sure the host paths exist and contain the correct files:
>   - Model directory should contain the full model checkpoint (e.g., config, tokenizer, model files).
>   - Adapter directory should include the final adapter checkpoint (e.g., LoRA or PEFT outputs).

## 📂 Project Structure

```
TaBuddy/               # Main source code
Dockerfile             # Image definition
docker-compose.yml     # Container orchestration
requirements.txt       # Python dependencies
```

---

## ✍️ Author

Maintained by [sauravchaudharysc](https://github.com/sauravchaudharysc)

---

