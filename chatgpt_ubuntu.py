import openai

openai.api_key = "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"

def chat_with_chatgpt(prompt):
    completions = openai.Completion.create(
        engine="text-davinci-003",
        prompt=prompt,
        max_tokens=1024,
        n=1,
        stop=None,
        temperature=0.5,
    )

    message = completions.choices[0].text
    return message

while True:
    user_input = input("You: ")
    if user_input == "exit":
        break
    chatgpt_response = chat_with_chatgpt(user_input)
    print("ChatGPT:", chatgpt_response)

#usage checking: https://platform.openai.com/account/usage
#add this python script to alias in .bashrc
#alias gpt="python3 /home/anhnguyen80/Desktop/source/1-material-template/script/chatgpt_ubuntu.py"
