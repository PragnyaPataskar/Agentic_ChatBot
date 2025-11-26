# Agentic ChatBot

A multi-agent chatbot powered by FastAPI, Streamlit, and LangChain, supporting Groq and OpenAI models with optional web search.

---

## Features
- Chat with multiple LLMs (Groq, OpenAI)
- Web search integration (Tavily)
- Streamlit frontend UI
- FastAPI backend API
- Dockerized deployment

---

## Setup

1. **Clone the repository**
   ```sh
   git clone <repo-url>
   cd Agentic_ChatBot
   ```

2. **Install dependencies**
   ```sh
   pip install -r requirements.txt
   ```

3. **Configure environment variables**
   - Copy `.env.example` to `.env` and add your API keys.

4. **Run backend**
   ```sh
   uvicorn backend:app --host 127.0.0.1 --port 9999
   ```

5. **Run frontend**
   ```sh
   streamlit run frontend.py
   ```

---

## Docker Deployment

```sh
docker-compose up --build
```

---

## API Usage

- **POST /agent**
  - Request:
    ```json
    {
      "model_name": "gpt-4o-mini",
      "model_provider": "OpenAI",
      "system_prompt": "You are a helpful assistant.",
      "messages": ["Hello!"],
      "allow_search": true
    }
    ```
  - Response:
    ```json
    {
      "response": "Hi! How can I help you today?"
    }
    ```

---

## Contributing

- Pull requests are welcome!
- Please open issues for bugs or feature requests.

---

## License

MIT
