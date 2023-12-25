from fastapi.testclient import TestClient
from src.main import app

client = TestClient(app)

def tests_home_page():
    response = client.get("/")
    status_code = response.status_code
    content_type = response.headers['content-type']

    assert status_code == 200
    assert content_type == 'application/json'
    assert response.json() == {"Hello": "World"}