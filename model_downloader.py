from huggingface_hub import snapshot_download

LOCAL_FOLDER = "static_data"
snapshot_download(repo_id="krutrim-ai-labs/KrutrimTranslate", local_dir = LOCAL_FOLDER)
print(f"Model is downloaded: {LOCAL_FOLDER}")