# Image Reader Skill

图片识别与理解 Skill，调用豆包多模态模型分析图片内容。

## 功能

- **文字提取 (OCR)**：从图片中提取文字内容
- **图片描述**：生成图片的详细描述
- **通用分析**：根据图片类型自动选择合适的分析方式

## 快速开始

1. 确保已安装依赖：
```bash
pip install -r requirements.txt
```

2. 配置 API 密钥（已内置默认配置，可直接使用）

3. 测试：
```bash
python image_reader.py /path/to/image.png
```

## 使用方法

### 命令行

```bash
# 通用分析
python image_reader.py image.png

# 提取文字
python image_reader.py image.png -p "提取所有文字"

# 描述图片
python image_reader.py image.png -p "详细描述这张图片"
```

### 作为 OpenClaw Skill

安装后，可以通过以下方式调用：

```yaml
# 通用图片分析
使用 image_reader 分析 /path/to/image.png

# 提取文字
使用 read_image_text 提取 /path/to/image.png 的文字

# 描述图片
使用 describe_image 描述 /path/to/image.png
```

## 配置项
修改 `config.yaml` 

| 配置项 | 说明 | 默认值 |
|--------|------|--------|
| `api_base` | API 基础 URL | https://ark.cn-beijing.volces.com/api/coding/v3 |
| `api_key` | API 密钥 | （内置） |
| `model` | 模型名称 | doubao-seed-2.0-pro（或其他支持图片输入的多模态模型，如 kimi-k2.5） |
| `system_prompt` | 系统提示词 | （见 config.yaml） |

## 依赖

- Python 3.8+
- openai >= 1.0.0
- pyyaml >= 6.0

## 许可

MIT