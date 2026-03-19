from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html')

if __name__ == '__main__':
    # El host 0.0.0.0 es vital para Docker
    app.run(host='0.0.0.0', port=5000, debug=True)