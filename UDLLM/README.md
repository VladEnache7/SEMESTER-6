
# 🤖 Understanding and Developing Large Language Models (LLMs)

This course provides a deep dive into the architecture, training, and application of Generative AI. It moves from the theoretical foundations of the Transformer architecture ("Attention is All You Need") to practical implementation strategies like Parameter-Efficient Fine-Tuning (PEFT), RLHF, and Retrieval Augmented Generation (RAG).

### 📅 Weekly Syllabus

The curriculum follows the lifecycle of an LLM: Pre-training $\rightarrow$ Fine-tuning $\rightarrow$ Alignment $\rightarrow$ Application.

| Week | 👨‍🏫 Lecture Content | 🧪 Laboratory Focus (Bi-Weekly) |
|:---:|:---|:---|
| **1** | **Intro:** Landscape of GenAI, History of NLP, Versatility of LLMs | *No Lab* |
| **2** | **Evolution:** From RNNs/LSTMs to Transformers | **Lab 1:** Introduction to LLMs & Basic Text Generation |
| **3** | **Architecture:** Deep dive into Transformer internals (Encoder/Decoder) | *No Lab* |
| **4** | **Attention:** Understanding Self-Attention and Multi-Head Attention mechanisms | **Lab 2:** Exploring Transformer Architectures (Code level) |
| **5** | **Prompting:** The art of Prompt Engineering (Zero-shot, Few-shot) | *No Lab* |
| **6** | **Scaling:** Pre-training processes, Compute challenges, Scaling Laws | **Lab 3:** Advanced Text Generation & Prompt Engineering |
| **7** | **Fine-Tuning:** Instruction tuning, Single vs Multi-task adaptation | *No Lab* |
| **8** | **PEFT:** LoRA (Low-Rank Adaptation), Soft Prompts, Quantization | **Lab 4:** Pre-Training & Fine-Tuning Strategies |
| **9** | **Alignment:** Reinforcement Learning from Human Feedback (RLHF) | *No Lab* |
| **10** | **Reasoning:** Chain-of-Thought (CoT), ReAct (Reason + Act) patterns | **Lab 5:** Implementing RLHF & Reward Models |
| **11** | **Applications:** LangChain, Vector Stores, RAG (Retrieval Augmented Generation) | *No Lab* |
| **12** | **Ethics:** Responsible AI, Bias, Safety, and Future implications | **Lab 6:** LangChain & RAG Implementation |
| **13** | **Projects:** Student Project Presentations (Part 1) | *No Lab* |
| **14** | **Projects:** Student Project Presentations (Part 2) | **Lab 7:** Building a Functional Chatbot |

---

### 💻 Laboratory: Hands-on AI

Laboratories take place **every 2 weeks**. They are designed to give practical experience with the modern LLM tech stack (Hugging Face, PyTorch, LangChain).

*   **Lab 1:** Loading pre-trained models (e.g., GPT-2, Llama, BERT) and generating text.
*   **Lab 2:** Visualizing Attention weights and understanding tokenization.
*   **Lab 3:** Advanced prompting strategies to guide model output without retraining.
*   **Lab 4:** Fine-tuning a small model (e.g., DistilBERT) on a specific dataset.
*   **Lab 5:** Creating a basic Reward Model for alignment.
*   **Lab 6:** Building a RAG pipeline: Loading documents $\rightarrow$ Creating Embeddings $\rightarrow$ Storing in Vector DB (e.g., Chroma/FAISS).
*   **Lab 7:** Final integration: Building a context-aware chatbot.

---

### 🏆 Team Project: UDLLM News RAG

**📢 [View Project Presentation](https://ubbcluj-my.sharepoint.com/:p:/g/personal/ioan_vlad_enache_stud_ubbcluj_ro/IQAjGqLOHOwDS6zX8GXuGM3_AU-9ZJFx9Vy05LfIWybz7CY?rtime=jbwjnqpg3kg)**

#### Project Overview
The **UDLLM News RAG Project** is an advanced web application leveraging **Retrieval-Augmented Generation (RAG)** to process and deliver news-related data. The unique value proposition is its **Dual-Mode** capability, supporting both factual standard news and satirical content with distinct tones.

#### Architecture & Core Features
The system is built on a split architecture ensuring scalability and efficient data processing:

*   **Dual-Mode RAG Pipeline:**
    *   **Factual Path:** Grounds responses in reliable external news data (scraped from NBC News archives 2022-2025).
    *   **Satirical Path:** A separate pipeline for processing and generating satirical content with appropriate context and tone.
    *   **Vector Stores:** Distinct collections for rapid, context-specific retrieval.

*   **Backend (Python):**
    *   Manages data scraping, processing, and the RAG logic.
    *   **Event-Driven:** Uses **Kafka** for real-time processing of user feedback and asynchronous handling of intensive generation tasks.
    *   **API Services:** RESTful endpoints for frontend communication.

*   **Frontend (TypeScript/React):**
    *   Named **"Turbo Bassoon"**, this interface offers interactive news consumption.
    *   Features intuitive search, filtering, and mechanisms for users to interact with both factual and satirical modes.

---

### 🧠 Key Concepts & Competencies

*   **Transformer Architecture:** Understanding $Q, K, V$ matrices and the Attention mechanism.
*   **Prompt Engineering:** Designing effective contexts for desired outputs.
*   **PEFT (Parameter Efficient Fine-Tuning):** Adapting massive models using minimal compute (LoRA, QLoRA).
*   **RLHF:** Aligning models with human values (the "ChatGPT recipe").
*   **RAG:** Overcoming LLM hallucinations by grounding them in external data.
*   **LangChain:** The framework for chaining LLM logic with external tools.

---

### 🛠️ Tools & Libraries

*   **Python** (Primary language)
*   **PyTorch / TensorFlow**
*   **Hugging Face Transformers** 
*   **LangChain** (Orchestration)
*   **Vector Databases** 
*   **OpenAI API** (for comparing closed vs open models)
