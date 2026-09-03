# Qwen3.8-27B 未删减版 · 部署教程

[🏠 GitHub 仓库](https://github.com/a756598009-CMYK/Qwen3.8-27B-未删减版)  
[🌐 GitHub Pages](https://a756598009-cmyk.github.io/Qwen3.8-27B-未删减版/)


## 一、Qwen3.8-27B 开源模型

目前量化的 Qwen3.8 27B 模型总共有21个，格式为GGUF，可以适配多种不同尺寸的显存大小。
根据模型量化等级，可以选择适合自己显存的版本。一般来说，越低的量化等级越省显存，
但模型质量也会有所下降。

01
Huggingface 下载
[点击前往](https://huggingface.co/unsloth/Qwen3.8-27B-GGUF/tree/main)

| 量化 | 文件大小 | 权重(GiB) | 8K 上下文 | 32K 上下文 | 建议显卡 |
| --- | --- | --- | --- | --- | --- |
| UD-IQ2\_XXS | 9.01 GB | 8.4 | 9.9 | 12.4 | **8~12G**（3060 12G / 5070） |
| UD-IQ2\_M | 10.3 GB | 9.6 | 11.1 | 13.6 | 12G（32K 需降 ctx） |
| UD-IQ2\_K\_XL | 10.7 GB | 10.0 | 11.5 | 14.0 | 12G 极限 / 16G 舒适 |
| UD-IQ3\_XXS | 11.9 GB | 11.1 | 12.6 | 15.1 | **16G**（4060Ti 16G / 5060Ti 16G） |
| Q3\_K\_S | 12.6 GB | 11.7 | 13.2 | 15.7 | 16G |
| UD-Q3\_K\_XL | 13.4 GB | 12.5 | 14.0 | 16.5 | 16G 低显存首选 |
| Q3\_K\_M | 13.8 GB | 12.9 | 14.4 | 16.9 | 16G |
| IQ4\_XS | 15.7 GB | 14.6 | 16.1 | 18.6 | 20G / 24G |
| Q4\_K\_S / Q4\_0 | 16.1 GB | 15.0 | 16.5 | 19.0 | 20G（7900XT / 4000 Ada） |
| IQ4\_NL | 16.3 GB | 15.2 | 16.7 | 19.2 | 20G |
| Q4\_K\_M | 17.1 GB | 15.9 | 17.4 | 19.9 | **24G** |
| Q4\_1 | 17.5 GB | 16.3 | 17.8 | 20.3 | 24G |
| UD-Q4\_K\_XL | 17.9 GB | 16.7 | 18.2 | 20.7 | **24G** 全场最佳性价比 |
| Q5\_K\_S | 19.3 GB | 18.0 | 19.5 | 22.0 | 24G（3090 / 4090） |
| Q5\_K\_M | 19.8 GB | 18.4 | 19.9 | 22.4 | 24G |
| UD-Q5\_K\_XL | 20.2 GB | 18.8 | 20.3 | 22.8 | 24G 偏紧 / 32G 舒适 |
| Q6\_K | 22.9 GB | 21.3 | 22.8 | 25.3 | 24G 仅短上下文 / **32G** |
| UD-Q6\_K\_XL | 25.9 GB | 24.1 | 25.6 | 28.1 | **32G**（5090） |
| Q8\_0 | 29 GB | 27.0 | 28.5 | 31.0 | 32G 极限 / 48G |
| UD-Q8\_K\_XL | 31.5 GB | 29.3 | 30.8 | 33.3 | **48G**（A6000 / 双卡24G） |
| BF16（文件夹） | ~54 GB | ~50 | ~52 | ~54 | 80G 或双卡 48G |

## 二、下载 llama.cpp

01
Github 下载
[点击前往](https://github.com/ggml-org/llama.cpp)

## 三、整合包网盘下载

01
整合包网盘下载
[点击前往](https://pan.quark.cn/s/fa23aa5c7c33?pwd=cN9e)

**提取码：**cN9e

## 四、启动脚本下载

01
启动脚本下载
[点击前往](https://zyfx7.lanzoue.com/b0mcqz2pi)

**下载密码：**22qp

### 越狱模型（无审查）

Qwen3.8-27B Uncensored 已经推出多个真正无审查的越狱模型。
如果你想更加自由、不受约束和限制，可以使用越狱模型。
本页面仅作为模型部署与技术资料展示。

01
Huggingface 下载
[点击前往](https://huggingface.co/JonathanColetti/Qwen3.8-27B-Uncensored-GGUF/tree/main)

文件列表 / QWEN3.8-27B-UNCENSORED

Qwen3.8-27B-Uncensored-IQ2\_M.gguf9.9 GB

[↓ 下载](#)

Qwen3.8-27B-Uncensored-IQ4\_XS.gguf14.26 GB

[↓ 下载](#)

Qwen3.8-27B-Uncensored-Q4\_K\_M.gguf15.66 GB

[↓ 下载](#)

Qwen3.8-27B-Uncensored-Q5\_K\_M.gguf18.19 GB

[↓ 下载](#)

Qwen3.8-27B-Uncensored-Q6\_K.gguf20.89 GB

[↓ 下载](#)

Qwen3.8-27B-Uncensored-Q8\_0.gguf27.05 GB

[↓ 下载](#)

Qwen3.8-27B-Uncensored-draft-Q8\_0.gguf2.95 GB

[↓ 下载](#)
