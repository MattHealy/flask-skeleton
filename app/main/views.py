from flask import redirect, url_for
from . import main


@main.route('/', methods=['GET'])
def index():
    return redirect(url_for('admin.home'))
