import requests
import torch
from PIL import Image
from transformers import MllamaForConditionalGeneration, AutoProcessor

model_id = "meta-llama/Llama-3.2-11B-Vision-Instruct"
model = MllamaForConditionalGeneration.from_pretrained(model_id, device_map="auto", torch_dtype=torch.bfloat16)
processor = AutoProcessor.from_pretrained(model_id)
print("debug")

messages = [
    [
        {
            "role": "user", 
            "content": [
                {"type": "image"},
                {"type": "text", "text": "What does the image show?"}
            ]
        }
    ],
]
print("debug after message")
text = processor.apply_chat_template(messages, add_generation_prompt=True)
print("debug after text")
# url = "https://llava-vl.github.io/static/images/view.jpg"
# image = Image.open(requests.get(url, stream=True).raw)
image = Image.open('/home/nagarw48/Projects/PLAI/PLAI-Project-2/testData/images/gridworld_20241124_190217.png')

inputs = processor(text=text, images=image, return_tensors="pt").to(model.device)
print("debug after inputs")
output = model.generate(**inputs, max_new_tokens=30)
print("debug after output")
print(processor.decode(output[0]))
print(processor.decode(output[0]["generated_text"][-1]["content"]))
print("debug final")